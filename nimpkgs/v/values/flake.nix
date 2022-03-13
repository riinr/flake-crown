{
  description = ''Library for working with arbitrary values + a map data structure.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."values-master".dir   = "master";
  inputs."values-master".owner = "nim-nix-pkgs";
  inputs."values-master".ref   = "master";
  inputs."values-master".repo  = "values";
  inputs."values-master".type  = "github";
  inputs."values-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."values-0_1_1".dir   = "0_1_1";
  inputs."values-0_1_1".owner = "nim-nix-pkgs";
  inputs."values-0_1_1".ref   = "master";
  inputs."values-0_1_1".repo  = "values";
  inputs."values-0_1_1".type  = "github";
  inputs."values-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."values-v0_1_0".dir   = "v0_1_0";
  inputs."values-v0_1_0".owner = "nim-nix-pkgs";
  inputs."values-v0_1_0".ref   = "master";
  inputs."values-v0_1_0".repo  = "values";
  inputs."values-v0_1_0".type  = "github";
  inputs."values-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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