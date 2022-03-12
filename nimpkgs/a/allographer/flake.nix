{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."allographer-master".url = "path:./master";
  inputs."allographer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_11_0".url = "path:./v0_11_0";
  inputs."allographer-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_1".url = "path:./v0_12_1";
  inputs."allographer-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_2".url = "path:./v0_12_2";
  inputs."allographer-v0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_3".url = "path:./v0_12_3";
  inputs."allographer-v0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_4".url = "path:./v0_12_4";
  inputs."allographer-v0_12_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_0".url = "path:./v0_13_0";
  inputs."allographer-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_1".url = "path:./v0_13_1";
  inputs."allographer-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_2".url = "path:./v0_13_2";
  inputs."allographer-v0_13_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_3".url = "path:./v0_13_3";
  inputs."allographer-v0_13_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_4".url = "path:./v0_13_4";
  inputs."allographer-v0_13_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_5".url = "path:./v0_13_5";
  inputs."allographer-v0_13_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_6".url = "path:./v0_13_6";
  inputs."allographer-v0_13_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_14_0".url = "path:./v0_14_0";
  inputs."allographer-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_15_0".url = "path:./v0_15_0";
  inputs."allographer-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_15_1".url = "path:./v0_15_1";
  inputs."allographer-v0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_16_0".url = "path:./v0_16_0";
  inputs."allographer-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_0".url = "path:./v0_17_0";
  inputs."allographer-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_1".url = "path:./v0_17_1";
  inputs."allographer-v0_17_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_2".url = "path:./v0_17_2";
  inputs."allographer-v0_17_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_3".url = "path:./v0_17_3";
  inputs."allographer-v0_17_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_4".url = "path:./v0_17_4";
  inputs."allographer-v0_17_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_5".url = "path:./v0_17_5";
  inputs."allographer-v0_17_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_18_0".url = "path:./v0_18_0";
  inputs."allographer-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_18_1".url = "path:./v0_18_1";
  inputs."allographer-v0_18_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_18_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_19_0".url = "path:./v0_19_0";
  inputs."allographer-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_19_1".url = "path:./v0_19_1";
  inputs."allographer-v0_19_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_19_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_19_2".url = "path:./v0_19_2";
  inputs."allographer-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_20_0".url = "path:./v0_20_0";
  inputs."allographer-v0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_21_0".url = "path:./v0_21_0";
  inputs."allographer-v0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_22_0".url = "path:./v0_22_0";
  inputs."allographer-v0_22_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_22_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_7_0".url = "path:./v0_7_0";
  inputs."allographer-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_7_1".url = "path:./v0_7_1";
  inputs."allographer-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_7_2".url = "path:./v0_7_2";
  inputs."allographer-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_8_0".url = "path:./v0_8_0";
  inputs."allographer-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_9_0".url = "path:./v0_9_0";
  inputs."allographer-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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