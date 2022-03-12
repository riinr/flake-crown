{
  description = ''Utilities for and extensions to Slice/HSlice'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sliceutils-master".url = "path:./master";
  inputs."sliceutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-0_1_0".url = "path:./0_1_0";
  inputs."sliceutils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_0".url = "path:./v0_1_0";
  inputs."sliceutils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_1".url = "path:./v0_1_1";
  inputs."sliceutils-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_12".url = "path:./v0_1_12";
  inputs."sliceutils-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_2".url = "path:./v0_1_2";
  inputs."sliceutils-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_2_0".url = "path:./v0_2_0";
  inputs."sliceutils-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_2_1".url = "path:./v0_2_1";
  inputs."sliceutils-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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