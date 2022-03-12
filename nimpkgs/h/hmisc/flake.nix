{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hmisc-master".url = "path:./master";
  inputs."hmisc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_0".url = "path:./v0_10_0";
  inputs."hmisc-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_2".url = "path:./v0_10_2";
  inputs."hmisc-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_3".url = "path:./v0_10_3";
  inputs."hmisc-v0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_4".url = "path:./v0_10_4";
  inputs."hmisc-v0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_5".url = "path:./v0_10_5";
  inputs."hmisc-v0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_6".url = "path:./v0_10_6";
  inputs."hmisc-v0_10_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_7".url = "path:./v0_10_7";
  inputs."hmisc-v0_10_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_9".url = "path:./v0_10_9";
  inputs."hmisc-v0_10_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_1".url = "path:./v0_11_1";
  inputs."hmisc-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_10".url = "path:./v0_11_10";
  inputs."hmisc-v0_11_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_11".url = "path:./v0_11_11";
  inputs."hmisc-v0_11_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_12".url = "path:./v0_11_12";
  inputs."hmisc-v0_11_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_13".url = "path:./v0_11_13";
  inputs."hmisc-v0_11_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_14".url = "path:./v0_11_14";
  inputs."hmisc-v0_11_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_15".url = "path:./v0_11_15";
  inputs."hmisc-v0_11_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_16".url = "path:./v0_11_16";
  inputs."hmisc-v0_11_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_17".url = "path:./v0_11_17";
  inputs."hmisc-v0_11_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_18".url = "path:./v0_11_18";
  inputs."hmisc-v0_11_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_19".url = "path:./v0_11_19";
  inputs."hmisc-v0_11_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_2".url = "path:./v0_11_2";
  inputs."hmisc-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_3".url = "path:./v0_11_3";
  inputs."hmisc-v0_11_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_4".url = "path:./v0_11_4";
  inputs."hmisc-v0_11_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_5".url = "path:./v0_11_5";
  inputs."hmisc-v0_11_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_6".url = "path:./v0_11_6";
  inputs."hmisc-v0_11_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_7".url = "path:./v0_11_7";
  inputs."hmisc-v0_11_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_8".url = "path:./v0_11_8";
  inputs."hmisc-v0_11_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_9".url = "path:./v0_11_9";
  inputs."hmisc-v0_11_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_0".url = "path:./v0_12_0";
  inputs."hmisc-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_1".url = "path:./v0_12_1";
  inputs."hmisc-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_2".url = "path:./v0_12_2";
  inputs."hmisc-v0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_3".url = "path:./v0_12_3";
  inputs."hmisc-v0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_4".url = "path:./v0_12_4";
  inputs."hmisc-v0_12_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_5".url = "path:./v0_12_5";
  inputs."hmisc-v0_12_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_6".url = "path:./v0_12_6";
  inputs."hmisc-v0_12_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_13_0".url = "path:./v0_13_0";
  inputs."hmisc-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_13_1".url = "path:./v0_13_1";
  inputs."hmisc-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_0".url = "path:./v0_14_0";
  inputs."hmisc-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_1".url = "path:./v0_14_1";
  inputs."hmisc-v0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_2".url = "path:./v0_14_2";
  inputs."hmisc-v0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_3".url = "path:./v0_14_3";
  inputs."hmisc-v0_14_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_4".url = "path:./v0_14_4";
  inputs."hmisc-v0_14_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_5".url = "path:./v0_14_5";
  inputs."hmisc-v0_14_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_6".url = "path:./v0_14_6";
  inputs."hmisc-v0_14_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_26".url = "path:./v0_3_26";
  inputs."hmisc-v0_3_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_27".url = "path:./v0_3_27";
  inputs."hmisc-v0_3_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_28".url = "path:./v0_3_28";
  inputs."hmisc-v0_3_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_29".url = "path:./v0_3_29";
  inputs."hmisc-v0_3_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_30".url = "path:./v0_3_30";
  inputs."hmisc-v0_3_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_0".url = "path:./v0_4_0";
  inputs."hmisc-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_1".url = "path:./v0_4_1";
  inputs."hmisc-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_2".url = "path:./v0_4_2";
  inputs."hmisc-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_3".url = "path:./v0_4_3";
  inputs."hmisc-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_4".url = "path:./v0_4_4";
  inputs."hmisc-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_5".url = "path:./v0_4_5";
  inputs."hmisc-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_6".url = "path:./v0_4_6";
  inputs."hmisc-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_7".url = "path:./v0_4_7";
  inputs."hmisc-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_8".url = "path:./v0_4_8";
  inputs."hmisc-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_5_0".url = "path:./v0_5_0";
  inputs."hmisc-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_5_1".url = "path:./v0_5_1";
  inputs."hmisc-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_6_0".url = "path:./v0_6_0";
  inputs."hmisc-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_6_1".url = "path:./v0_6_1";
  inputs."hmisc-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_6_2".url = "path:./v0_6_2";
  inputs."hmisc-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_7_0".url = "path:./v0_7_0";
  inputs."hmisc-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_0".url = "path:./v0_8_0";
  inputs."hmisc-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_1".url = "path:./v0_8_1";
  inputs."hmisc-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_10".url = "path:./v0_8_10";
  inputs."hmisc-v0_8_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_2".url = "path:./v0_8_2";
  inputs."hmisc-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_3".url = "path:./v0_8_3";
  inputs."hmisc-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_4".url = "path:./v0_8_4";
  inputs."hmisc-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_5".url = "path:./v0_8_5";
  inputs."hmisc-v0_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_6".url = "path:./v0_8_6";
  inputs."hmisc-v0_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_7".url = "path:./v0_8_7";
  inputs."hmisc-v0_8_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_8".url = "path:./v0_8_8";
  inputs."hmisc-v0_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_9".url = "path:./v0_8_9";
  inputs."hmisc-v0_8_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_0".url = "path:./v0_9_0";
  inputs."hmisc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_1".url = "path:./v0_9_1";
  inputs."hmisc-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_11".url = "path:./v0_9_11";
  inputs."hmisc-v0_9_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_12".url = "path:./v0_9_12";
  inputs."hmisc-v0_9_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_13".url = "path:./v0_9_13";
  inputs."hmisc-v0_9_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_14".url = "path:./v0_9_14";
  inputs."hmisc-v0_9_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_15".url = "path:./v0_9_15";
  inputs."hmisc-v0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_17".url = "path:./v0_9_17";
  inputs."hmisc-v0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_18".url = "path:./v0_9_18";
  inputs."hmisc-v0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_19".url = "path:./v0_9_19";
  inputs."hmisc-v0_9_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_2".url = "path:./v0_9_2";
  inputs."hmisc-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_3".url = "path:./v0_9_3";
  inputs."hmisc-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_4".url = "path:./v0_9_4";
  inputs."hmisc-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_5".url = "path:./v0_9_5";
  inputs."hmisc-v0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_6".url = "path:./v0_9_6";
  inputs."hmisc-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_7".url = "path:./v0_9_7";
  inputs."hmisc-v0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_8".url = "path:./v0_9_8";
  inputs."hmisc-v0_9_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_9".url = "path:./v0_9_9";
  inputs."hmisc-v0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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