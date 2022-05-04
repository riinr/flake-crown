{
  description = ''Dog API client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dogapi-main".dir   = "main";
  inputs."dogapi-main".owner = "nim-nix-pkgs";
  inputs."dogapi-main".ref   = "master";
  inputs."dogapi-main".repo  = "dogapi";
  inputs."dogapi-main".type  = "github";
  inputs."dogapi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dogapi-v1_0_0".dir   = "v1_0_0";
  inputs."dogapi-v1_0_0".owner = "nim-nix-pkgs";
  inputs."dogapi-v1_0_0".ref   = "master";
  inputs."dogapi-v1_0_0".repo  = "dogapi";
  inputs."dogapi-v1_0_0".type  = "github";
  inputs."dogapi-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}