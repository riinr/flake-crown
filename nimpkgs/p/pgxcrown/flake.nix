{
  description = ''Build Postgres extensions in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pgxcrown-main".url = "path:./main";
  inputs."pgxcrown-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-master".url = "path:./master";
  inputs."pgxcrown-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-0_2_4".url = "path:./0_2_4";
  inputs."pgxcrown-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v_0_1_16".url = "path:./v_0_1_16";
  inputs."pgxcrown-v_0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v_0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_0".url = "path:./v0_1_0";
  inputs."pgxcrown-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_1".url = "path:./v0_1_1";
  inputs."pgxcrown-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_10".url = "path:./v0_1_10";
  inputs."pgxcrown-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_11".url = "path:./v0_1_11";
  inputs."pgxcrown-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_12".url = "path:./v0_1_12";
  inputs."pgxcrown-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_13".url = "path:./v0_1_13";
  inputs."pgxcrown-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_14".url = "path:./v0_1_14";
  inputs."pgxcrown-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_15".url = "path:./v0_1_15";
  inputs."pgxcrown-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_16".url = "path:./v0_1_16";
  inputs."pgxcrown-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_17".url = "path:./v0_1_17";
  inputs."pgxcrown-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_18".url = "path:./v0_1_18";
  inputs."pgxcrown-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_19".url = "path:./v0_1_19";
  inputs."pgxcrown-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_2".url = "path:./v0_1_2";
  inputs."pgxcrown-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_20".url = "path:./v0_1_20";
  inputs."pgxcrown-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_21".url = "path:./v0_1_21";
  inputs."pgxcrown-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_22".url = "path:./v0_1_22";
  inputs."pgxcrown-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_23".url = "path:./v0_1_23";
  inputs."pgxcrown-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_24".url = "path:./v0_1_24";
  inputs."pgxcrown-v0_1_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_25".url = "path:./v0_1_25";
  inputs."pgxcrown-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_26".url = "path:./v0_1_26";
  inputs."pgxcrown-v0_1_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_27".url = "path:./v0_1_27";
  inputs."pgxcrown-v0_1_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_28".url = "path:./v0_1_28";
  inputs."pgxcrown-v0_1_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_29".url = "path:./v0_1_29";
  inputs."pgxcrown-v0_1_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_30".url = "path:./v0_1_30";
  inputs."pgxcrown-v0_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_31".url = "path:./v0_1_31";
  inputs."pgxcrown-v0_1_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_32".url = "path:./v0_1_32";
  inputs."pgxcrown-v0_1_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_33".url = "path:./v0_1_33";
  inputs."pgxcrown-v0_1_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_34".url = "path:./v0_1_34";
  inputs."pgxcrown-v0_1_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_35".url = "path:./v0_1_35";
  inputs."pgxcrown-v0_1_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_36".url = "path:./v0_1_36";
  inputs."pgxcrown-v0_1_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_37".url = "path:./v0_1_37";
  inputs."pgxcrown-v0_1_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_38".url = "path:./v0_1_38";
  inputs."pgxcrown-v0_1_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_39".url = "path:./v0_1_39";
  inputs."pgxcrown-v0_1_39".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_39".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_4".url = "path:./v0_1_4";
  inputs."pgxcrown-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_40".url = "path:./v0_1_40";
  inputs."pgxcrown-v0_1_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_8".url = "path:./v0_1_8";
  inputs."pgxcrown-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_9".url = "path:./v0_1_9";
  inputs."pgxcrown-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_0".url = "path:./v0_2_0";
  inputs."pgxcrown-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_1".url = "path:./v0_2_1";
  inputs."pgxcrown-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_2".url = "path:./v0_2_2";
  inputs."pgxcrown-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_3".url = "path:./v0_2_3";
  inputs."pgxcrown-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_5".url = "path:./v0_2_5";
  inputs."pgxcrown-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_6".url = "path:./v0_2_6";
  inputs."pgxcrown-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_7".url = "path:./v0_2_7";
  inputs."pgxcrown-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_8".url = "path:./v0_2_8";
  inputs."pgxcrown-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_9".url = "path:./v0_2_9";
  inputs."pgxcrown-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_0".url = "path:./v0_3_0";
  inputs."pgxcrown-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_1".url = "path:./v0_3_1";
  inputs."pgxcrown-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_2".url = "path:./v0_3_2";
  inputs."pgxcrown-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_3".url = "path:./v0_3_3";
  inputs."pgxcrown-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_4".url = "path:./v0_3_4";
  inputs."pgxcrown-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_5".url = "path:./v0_3_5";
  inputs."pgxcrown-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_6".url = "path:./v0_3_6";
  inputs."pgxcrown-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_7".url = "path:./v0_3_7";
  inputs."pgxcrown-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_8".url = "path:./v0_3_8";
  inputs."pgxcrown-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_9".url = "path:./v0_3_9";
  inputs."pgxcrown-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_0".url = "path:./v0_4_0";
  inputs."pgxcrown-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_1".url = "path:./v0_4_1";
  inputs."pgxcrown-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_2".url = "path:./v0_4_2";
  inputs."pgxcrown-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_3".url = "path:./v0_4_3";
  inputs."pgxcrown-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_4".url = "path:./v0_4_4";
  inputs."pgxcrown-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_5".url = "path:./v0_4_5";
  inputs."pgxcrown-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_5_0".url = "path:./v0_5_0";
  inputs."pgxcrown-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_5_1".url = "path:./v0_5_1";
  inputs."pgxcrown-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_5_2".url = "path:./v0_5_2";
  inputs."pgxcrown-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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