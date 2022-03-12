{
  description = ''Full-featured 2d graphics library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pixie-master".url = "path:./master";
  inputs."pixie-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_10".url = "path:./0_0_10";
  inputs."pixie-0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_11".url = "path:./0_0_11";
  inputs."pixie-0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_12".url = "path:./0_0_12";
  inputs."pixie-0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_13".url = "path:./0_0_13";
  inputs."pixie-0_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_14".url = "path:./0_0_14";
  inputs."pixie-0_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_15".url = "path:./0_0_15";
  inputs."pixie-0_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_16".url = "path:./0_0_16";
  inputs."pixie-0_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_17".url = "path:./0_0_17";
  inputs."pixie-0_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_18".url = "path:./0_0_18";
  inputs."pixie-0_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_2".url = "path:./0_0_2";
  inputs."pixie-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_20".url = "path:./0_0_20";
  inputs."pixie-0_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_21".url = "path:./0_0_21";
  inputs."pixie-0_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_3".url = "path:./0_0_3";
  inputs."pixie-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_4".url = "path:./0_0_4";
  inputs."pixie-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_5".url = "path:./0_0_5";
  inputs."pixie-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_6".url = "path:./0_0_6";
  inputs."pixie-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_7".url = "path:./0_0_7";
  inputs."pixie-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_8".url = "path:./0_0_8";
  inputs."pixie-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_9".url = "path:./0_0_9";
  inputs."pixie-0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_0".url = "path:./1_0_0";
  inputs."pixie-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_1".url = "path:./1_0_1";
  inputs."pixie-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_2".url = "path:./1_0_2";
  inputs."pixie-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_3".url = "path:./1_0_3";
  inputs."pixie-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_4".url = "path:./1_0_4";
  inputs."pixie-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_5".url = "path:./1_0_5";
  inputs."pixie-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_1_0".url = "path:./1_1_0";
  inputs."pixie-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_1_2".url = "path:./1_1_2";
  inputs."pixie-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_1_3".url = "path:./1_1_3";
  inputs."pixie-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_2_0".url = "path:./1_2_0";
  inputs."pixie-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_0".url = "path:./2_0_0";
  inputs."pixie-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_1".url = "path:./2_0_1";
  inputs."pixie-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_2".url = "path:./2_0_2";
  inputs."pixie-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_3".url = "path:./2_0_3";
  inputs."pixie-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_4".url = "path:./2_0_4";
  inputs."pixie-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_5".url = "path:./2_0_5";
  inputs."pixie-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_1_0".url = "path:./2_1_0";
  inputs."pixie-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_1_1".url = "path:./2_1_1";
  inputs."pixie-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_0".url = "path:./3_0_0";
  inputs."pixie-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_1".url = "path:./3_0_1";
  inputs."pixie-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_2".url = "path:./3_0_2";
  inputs."pixie-3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_3".url = "path:./3_0_3";
  inputs."pixie-3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_4".url = "path:./3_0_4";
  inputs."pixie-3_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_0".url = "path:./3_1_0";
  inputs."pixie-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_1".url = "path:./3_1_1";
  inputs."pixie-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_2".url = "path:./3_1_2";
  inputs."pixie-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_3".url = "path:./3_1_3";
  inputs."pixie-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_4".url = "path:./3_1_4";
  inputs."pixie-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-4_0_0".url = "path:./4_0_0";
  inputs."pixie-4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-4_0_1".url = "path:./4_0_1";
  inputs."pixie-4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}