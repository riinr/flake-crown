{
  description = ''Define procedures on the server, call them from the browser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pigeon-main".dir   = "main";
  inputs."pigeon-main".owner = "nim-nix-pkgs";
  inputs."pigeon-main".ref   = "master";
  inputs."pigeon-main".repo  = "pigeon";
  inputs."pigeon-main".type  = "github";
  inputs."pigeon-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pigeon-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pigeon-v0_2_0".dir   = "v0_2_0";
  inputs."pigeon-v0_2_0".owner = "nim-nix-pkgs";
  inputs."pigeon-v0_2_0".ref   = "master";
  inputs."pigeon-v0_2_0".repo  = "pigeon";
  inputs."pigeon-v0_2_0".type  = "github";
  inputs."pigeon-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pigeon-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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