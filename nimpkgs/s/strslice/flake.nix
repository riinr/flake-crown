{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."strslice-master".dir   = "master";
  inputs."strslice-master".owner = "nim-nix-pkgs";
  inputs."strslice-master".ref   = "master";
  inputs."strslice-master".repo  = "strslice";
  inputs."strslice-master".type  = "github";
  inputs."strslice-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strslice-v0_2_0".dir   = "v0_2_0";
  inputs."strslice-v0_2_0".owner = "nim-nix-pkgs";
  inputs."strslice-v0_2_0".ref   = "master";
  inputs."strslice-v0_2_0".repo  = "strslice";
  inputs."strslice-v0_2_0".type  = "github";
  inputs."strslice-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strslice-v0_2_1".dir   = "v0_2_1";
  inputs."strslice-v0_2_1".owner = "nim-nix-pkgs";
  inputs."strslice-v0_2_1".ref   = "master";
  inputs."strslice-v0_2_1".repo  = "strslice";
  inputs."strslice-v0_2_1".type  = "github";
  inputs."strslice-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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