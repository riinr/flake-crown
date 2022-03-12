{
  description = ''User-friendly wrapper for nim ast'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hnimast-master".url = "path:./master";
  inputs."hnimast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_0".url = "path:./v0_3_0";
  inputs."hnimast-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_1".url = "path:./v0_3_1";
  inputs."hnimast-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_10".url = "path:./v0_3_10";
  inputs."hnimast-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_11".url = "path:./v0_3_11";
  inputs."hnimast-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_12".url = "path:./v0_3_12";
  inputs."hnimast-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_13".url = "path:./v0_3_13";
  inputs."hnimast-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_14".url = "path:./v0_3_14";
  inputs."hnimast-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_15".url = "path:./v0_3_15";
  inputs."hnimast-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_16".url = "path:./v0_3_16";
  inputs."hnimast-v0_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_17".url = "path:./v0_3_17";
  inputs."hnimast-v0_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_18".url = "path:./v0_3_18";
  inputs."hnimast-v0_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_19".url = "path:./v0_3_19";
  inputs."hnimast-v0_3_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_2".url = "path:./v0_3_2";
  inputs."hnimast-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_20".url = "path:./v0_3_20";
  inputs."hnimast-v0_3_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_21".url = "path:./v0_3_21";
  inputs."hnimast-v0_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_22".url = "path:./v0_3_22";
  inputs."hnimast-v0_3_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_23".url = "path:./v0_3_23";
  inputs."hnimast-v0_3_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_24".url = "path:./v0_3_24";
  inputs."hnimast-v0_3_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_25".url = "path:./v0_3_25";
  inputs."hnimast-v0_3_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_26".url = "path:./v0_3_26";
  inputs."hnimast-v0_3_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_27".url = "path:./v0_3_27";
  inputs."hnimast-v0_3_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_28".url = "path:./v0_3_28";
  inputs."hnimast-v0_3_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_29".url = "path:./v0_3_29";
  inputs."hnimast-v0_3_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_3".url = "path:./v0_3_3";
  inputs."hnimast-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_30".url = "path:./v0_3_30";
  inputs."hnimast-v0_3_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_31".url = "path:./v0_3_31";
  inputs."hnimast-v0_3_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_32".url = "path:./v0_3_32";
  inputs."hnimast-v0_3_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_33".url = "path:./v0_3_33";
  inputs."hnimast-v0_3_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_34".url = "path:./v0_3_34";
  inputs."hnimast-v0_3_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_35".url = "path:./v0_3_35";
  inputs."hnimast-v0_3_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_36".url = "path:./v0_3_36";
  inputs."hnimast-v0_3_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_37".url = "path:./v0_3_37";
  inputs."hnimast-v0_3_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_38".url = "path:./v0_3_38";
  inputs."hnimast-v0_3_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_4".url = "path:./v0_3_4";
  inputs."hnimast-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_5".url = "path:./v0_3_5";
  inputs."hnimast-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_6".url = "path:./v0_3_6";
  inputs."hnimast-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_7".url = "path:./v0_3_7";
  inputs."hnimast-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_8".url = "path:./v0_3_8";
  inputs."hnimast-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_9".url = "path:./v0_3_9";
  inputs."hnimast-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_4_0".url = "path:./v0_4_0";
  inputs."hnimast-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_4_2".url = "path:./v0_4_2";
  inputs."hnimast-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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