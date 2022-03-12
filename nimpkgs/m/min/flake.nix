{
  description = ''A small but practical concatenative programming language and shell.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."min-master".url = "path:./master";
  inputs."min-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-0_19_6".url = "path:./0_19_6";
  inputs."min-0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_1_0".url = "path:./v0_1_0";
  inputs."min-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_10_0".url = "path:./v0_10_0";
  inputs."min-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_11_0".url = "path:./v0_11_0";
  inputs."min-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_12_0".url = "path:./v0_12_0";
  inputs."min-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_13_0".url = "path:./v0_13_0";
  inputs."min-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_14_0".url = "path:./v0_14_0";
  inputs."min-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_15_0".url = "path:./v0_15_0";
  inputs."min-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_15_1".url = "path:./v0_15_1";
  inputs."min-v0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_15_2".url = "path:./v0_15_2";
  inputs."min-v0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_16_0".url = "path:./v0_16_0";
  inputs."min-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_17_0".url = "path:./v0_17_0";
  inputs."min-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_18_0".url = "path:./v0_18_0";
  inputs."min-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_0".url = "path:./v0_19_0";
  inputs."min-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_1".url = "path:./v0_19_1";
  inputs."min-v0_19_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_2".url = "path:./v0_19_2";
  inputs."min-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_3".url = "path:./v0_19_3";
  inputs."min-v0_19_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_4".url = "path:./v0_19_4";
  inputs."min-v0_19_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_5".url = "path:./v0_19_5";
  inputs."min-v0_19_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_19_6".url = "path:./v0_19_6";
  inputs."min-v0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_2_0".url = "path:./v0_2_0";
  inputs."min-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_2_1".url = "path:./v0_2_1";
  inputs."min-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_20_0".url = "path:./v0_20_0";
  inputs."min-v0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_20_1".url = "path:./v0_20_1";
  inputs."min-v0_20_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_20_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_21_0".url = "path:./v0_21_0";
  inputs."min-v0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_21_1".url = "path:./v0_21_1";
  inputs."min-v0_21_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_21_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_22_0".url = "path:./v0_22_0";
  inputs."min-v0_22_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_22_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_23_0".url = "path:./v0_23_0";
  inputs."min-v0_23_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_23_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_24_0".url = "path:./v0_24_0";
  inputs."min-v0_24_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_24_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_25_0".url = "path:./v0_25_0";
  inputs."min-v0_25_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_25_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_26_0".url = "path:./v0_26_0";
  inputs."min-v0_26_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_26_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_27_0".url = "path:./v0_27_0";
  inputs."min-v0_27_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_27_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_27_1".url = "path:./v0_27_1";
  inputs."min-v0_27_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_27_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_28_0".url = "path:./v0_28_0";
  inputs."min-v0_28_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_28_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_28_1".url = "path:./v0_28_1";
  inputs."min-v0_28_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_28_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_29_0".url = "path:./v0_29_0";
  inputs."min-v0_29_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_29_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_29_1".url = "path:./v0_29_1";
  inputs."min-v0_29_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_29_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_3_0".url = "path:./v0_3_0";
  inputs."min-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_30_0".url = "path:./v0_30_0";
  inputs."min-v0_30_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_30_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_31_0".url = "path:./v0_31_0";
  inputs."min-v0_31_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_31_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_32_0".url = "path:./v0_32_0";
  inputs."min-v0_32_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_32_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_33_0".url = "path:./v0_33_0";
  inputs."min-v0_33_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_33_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_34_0".url = "path:./v0_34_0";
  inputs."min-v0_34_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_34_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_34_1".url = "path:./v0_34_1";
  inputs."min-v0_34_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_34_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_35_0".url = "path:./v0_35_0";
  inputs."min-v0_35_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_35_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_35_1".url = "path:./v0_35_1";
  inputs."min-v0_35_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_35_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_36_0".url = "path:./v0_36_0";
  inputs."min-v0_36_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_36_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_37_0".url = "path:./v0_37_0";
  inputs."min-v0_37_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_37_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_4_0".url = "path:./v0_4_0";
  inputs."min-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_5_0".url = "path:./v0_5_0";
  inputs."min-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_6_0".url = "path:./v0_6_0";
  inputs."min-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_7_0".url = "path:./v0_7_0";
  inputs."min-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_8_0".url = "path:./v0_8_0";
  inputs."min-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_8_1".url = "path:./v0_8_1";
  inputs."min-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."min-v0_9_0".url = "path:./v0_9_0";
  inputs."min-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."min-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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