{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."matrixsdk-main".dir   = "main";
  inputs."matrixsdk-main".owner = "nim-nix-pkgs";
  inputs."matrixsdk-main".ref   = "master";
  inputs."matrixsdk-main".repo  = "matrixsdk";
  inputs."matrixsdk-main".type  = "github";
  inputs."matrixsdk-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matrixsdk-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matrixsdk-0_1_0".dir   = "0_1_0";
  inputs."matrixsdk-0_1_0".owner = "nim-nix-pkgs";
  inputs."matrixsdk-0_1_0".ref   = "master";
  inputs."matrixsdk-0_1_0".repo  = "matrixsdk";
  inputs."matrixsdk-0_1_0".type  = "github";
  inputs."matrixsdk-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matrixsdk-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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