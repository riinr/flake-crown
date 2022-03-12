{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zero_functional-master".url = "path:./master";
  inputs."zero_functional-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_1".url = "path:./v0_0_1";
  inputs."zero_functional-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_2".url = "path:./v0_0_2";
  inputs."zero_functional-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_3".url = "path:./v0_0_3";
  inputs."zero_functional-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_6".url = "path:./v0_0_6";
  inputs."zero_functional-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_7".url = "path:./v0_0_7";
  inputs."zero_functional-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_1_0".url = "path:./v0_1_0";
  inputs."zero_functional-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_1_1".url = "path:./v0_1_1";
  inputs."zero_functional-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_2_0".url = "path:./v0_2_0";
  inputs."zero_functional-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_3_0".url = "path:./v0_3_0";
  inputs."zero_functional-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_0_0".url = "path:./v1_0_0";
  inputs."zero_functional-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_0_1".url = "path:./v1_0_1";
  inputs."zero_functional-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_1_0".url = "path:./v1_1_0";
  inputs."zero_functional-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_1_1".url = "path:./v1_1_1";
  inputs."zero_functional-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_2_0".url = "path:./v1_2_0";
  inputs."zero_functional-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_2_1".url = "path:./v1_2_1";
  inputs."zero_functional-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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