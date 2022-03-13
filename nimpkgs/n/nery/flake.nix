{
  description = ''A simple library to create queries in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nery-main".dir   = "main";
  inputs."nery-main".owner = "nim-nix-pkgs";
  inputs."nery-main".ref   = "master";
  inputs."nery-main".repo  = "nery";
  inputs."nery-main".type  = "github";
  inputs."nery-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nery-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nery-0_1_1".dir   = "0_1_1";
  inputs."nery-0_1_1".owner = "nim-nix-pkgs";
  inputs."nery-0_1_1".ref   = "master";
  inputs."nery-0_1_1".repo  = "nery";
  inputs."nery-0_1_1".type  = "github";
  inputs."nery-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nery-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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