{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."strslice-master".url = "path:./master";
  inputs."strslice-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strslice-v0_2_0".url = "path:./v0_2_0";
  inputs."strslice-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strslice-v0_2_1".url = "path:./v0_2_1";
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