{
  description = ''Library for finding the differences between two sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."diff-master".url = "path:./master";
  inputs."diff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_1_0".url = "path:./0_1_0";
  inputs."diff-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_2_0".url = "path:./0_2_0";
  inputs."diff-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_2_1".url = "path:./0_2_1";
  inputs."diff-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_3_0".url = "path:./0_3_0";
  inputs."diff-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_4_0".url = "path:./0_4_0";
  inputs."diff-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_5_0".url = "path:./0_5_0";
  inputs."diff-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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