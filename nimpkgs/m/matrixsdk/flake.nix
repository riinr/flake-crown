{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."matrix-main".dir   = "main";
  inputs."matrix-main".owner = "nim-nix-pkgs";
  inputs."matrix-main".ref   = "master";
  inputs."matrix-main".repo  = "matrix";
  inputs."matrix-main".type  = "github";
  inputs."matrix-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matrix-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matrix-0_1_0".dir   = "0_1_0";
  inputs."matrix-0_1_0".owner = "nim-nix-pkgs";
  inputs."matrix-0_1_0".ref   = "master";
  inputs."matrix-0_1_0".repo  = "matrix";
  inputs."matrix-0_1_0".type  = "github";
  inputs."matrix-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matrix-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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