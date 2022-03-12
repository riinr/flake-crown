{
  description = ''Infer & generate command-line interace/option/argument parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cligen-master".url = "path:./master";
  inputs."cligen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-0_9_6".url = "path:./0_9_6";
  inputs."cligen-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_10".url = "path:./v0_9_10";
  inputs."cligen-v0_9_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_11".url = "path:./v0_9_11";
  inputs."cligen-v0_9_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_12".url = "path:./v0_9_12";
  inputs."cligen-v0_9_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_13".url = "path:./v0_9_13";
  inputs."cligen-v0_9_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_15".url = "path:./v0_9_15";
  inputs."cligen-v0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_16".url = "path:./v0_9_16";
  inputs."cligen-v0_9_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_17".url = "path:./v0_9_17";
  inputs."cligen-v0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_18".url = "path:./v0_9_18";
  inputs."cligen-v0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_19".url = "path:./v0_9_19";
  inputs."cligen-v0_9_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_22".url = "path:./v0_9_22";
  inputs."cligen-v0_9_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_23".url = "path:./v0_9_23";
  inputs."cligen-v0_9_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_24".url = "path:./v0_9_24";
  inputs."cligen-v0_9_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_25".url = "path:./v0_9_25";
  inputs."cligen-v0_9_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_26".url = "path:./v0_9_26";
  inputs."cligen-v0_9_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_27".url = "path:./v0_9_27";
  inputs."cligen-v0_9_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_28".url = "path:./v0_9_28";
  inputs."cligen-v0_9_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_29".url = "path:./v0_9_29";
  inputs."cligen-v0_9_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_30".url = "path:./v0_9_30";
  inputs."cligen-v0_9_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_31".url = "path:./v0_9_31";
  inputs."cligen-v0_9_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_32".url = "path:./v0_9_32";
  inputs."cligen-v0_9_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_33".url = "path:./v0_9_33";
  inputs."cligen-v0_9_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_34".url = "path:./v0_9_34";
  inputs."cligen-v0_9_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_35".url = "path:./v0_9_35";
  inputs."cligen-v0_9_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_36".url = "path:./v0_9_36";
  inputs."cligen-v0_9_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_37".url = "path:./v0_9_37";
  inputs."cligen-v0_9_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_38".url = "path:./v0_9_38";
  inputs."cligen-v0_9_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_39".url = "path:./v0_9_39";
  inputs."cligen-v0_9_39".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_39".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_4".url = "path:./v0_9_4";
  inputs."cligen-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_40".url = "path:./v0_9_40";
  inputs."cligen-v0_9_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_41".url = "path:./v0_9_41";
  inputs."cligen-v0_9_41".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_41".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_42".url = "path:./v0_9_42";
  inputs."cligen-v0_9_42".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_42".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_43".url = "path:./v0_9_43";
  inputs."cligen-v0_9_43".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_43".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_44".url = "path:./v0_9_44";
  inputs."cligen-v0_9_44".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_44".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_45".url = "path:./v0_9_45";
  inputs."cligen-v0_9_45".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_45".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_46".url = "path:./v0_9_46";
  inputs."cligen-v0_9_46".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_46".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_47".url = "path:./v0_9_47";
  inputs."cligen-v0_9_47".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_47".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_9".url = "path:./v0_9_9";
  inputs."cligen-v0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_0_0".url = "path:./v1_0_0";
  inputs."cligen-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_1_0".url = "path:./v1_1_0";
  inputs."cligen-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_2_0".url = "path:./v1_2_0";
  inputs."cligen-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_2_1".url = "path:./v1_2_1";
  inputs."cligen-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_2_2".url = "path:./v1_2_2";
  inputs."cligen-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_3_0".url = "path:./v1_3_0";
  inputs."cligen-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_3_1".url = "path:./v1_3_1";
  inputs."cligen-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_3_2".url = "path:./v1_3_2";
  inputs."cligen-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_4_0".url = "path:./v1_4_0";
  inputs."cligen-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_4_1".url = "path:./v1_4_1";
  inputs."cligen-v1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_0".url = "path:./v1_5_0";
  inputs."cligen-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_1".url = "path:./v1_5_1";
  inputs."cligen-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_10".url = "path:./v1_5_10";
  inputs."cligen-v1_5_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_11".url = "path:./v1_5_11";
  inputs."cligen-v1_5_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_12".url = "path:./v1_5_12";
  inputs."cligen-v1_5_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_13".url = "path:./v1_5_13";
  inputs."cligen-v1_5_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_14".url = "path:./v1_5_14";
  inputs."cligen-v1_5_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_15".url = "path:./v1_5_15";
  inputs."cligen-v1_5_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_16".url = "path:./v1_5_16";
  inputs."cligen-v1_5_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_17".url = "path:./v1_5_17";
  inputs."cligen-v1_5_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_18".url = "path:./v1_5_18";
  inputs."cligen-v1_5_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_19".url = "path:./v1_5_19";
  inputs."cligen-v1_5_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_2".url = "path:./v1_5_2";
  inputs."cligen-v1_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_20".url = "path:./v1_5_20";
  inputs."cligen-v1_5_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_21".url = "path:./v1_5_21";
  inputs."cligen-v1_5_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_3".url = "path:./v1_5_3";
  inputs."cligen-v1_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_4".url = "path:./v1_5_4";
  inputs."cligen-v1_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_5".url = "path:./v1_5_5";
  inputs."cligen-v1_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_6".url = "path:./v1_5_6";
  inputs."cligen-v1_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_7".url = "path:./v1_5_7";
  inputs."cligen-v1_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_8".url = "path:./v1_5_8";
  inputs."cligen-v1_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_9".url = "path:./v1_5_9";
  inputs."cligen-v1_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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