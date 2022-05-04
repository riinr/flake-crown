{
  description = ''Tool to download dogs images'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dogapi_cli-main".dir   = "main";
  inputs."dogapi_cli-main".owner = "nim-nix-pkgs";
  inputs."dogapi_cli-main".ref   = "master";
  inputs."dogapi_cli-main".repo  = "dogapi_cli";
  inputs."dogapi_cli-main".type  = "github";
  inputs."dogapi_cli-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi_cli-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dogapi_cli-v1_0_0".dir   = "v1_0_0";
  inputs."dogapi_cli-v1_0_0".owner = "nim-nix-pkgs";
  inputs."dogapi_cli-v1_0_0".ref   = "master";
  inputs."dogapi_cli-v1_0_0".repo  = "dogapi_cli";
  inputs."dogapi_cli-v1_0_0".type  = "github";
  inputs."dogapi_cli-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi_cli-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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