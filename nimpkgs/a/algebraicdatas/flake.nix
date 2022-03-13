{
  description = ''This module provides the feature of algebraic data type and its associated method'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."algebraicdatas-main".dir   = "main";
  inputs."algebraicdatas-main".owner = "nim-nix-pkgs";
  inputs."algebraicdatas-main".ref   = "master";
  inputs."algebraicdatas-main".repo  = "algebraicdatas";
  inputs."algebraicdatas-main".type  = "github";
  inputs."algebraicdatas-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."algebraicdatas-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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