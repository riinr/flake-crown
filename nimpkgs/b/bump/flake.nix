{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bump-master".url = "path:./master";
  inputs."bump-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_0_0".url = "path:./1_0_0";
  inputs."bump-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_0_1".url = "path:./1_0_1";
  inputs."bump-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_0_2".url = "path:./1_0_2";
  inputs."bump-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_0".url = "path:./1_1_0";
  inputs."bump-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_1".url = "path:./1_1_1";
  inputs."bump-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_2".url = "path:./1_1_2";
  inputs."bump-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_3".url = "path:./1_1_3";
  inputs."bump-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_2_0".url = "path:./1_2_0";
  inputs."bump-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_2_1".url = "path:./1_2_1";
  inputs."bump-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_0".url = "path:./1_3_0";
  inputs."bump-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_1".url = "path:./1_3_1";
  inputs."bump-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_2".url = "path:./1_3_2";
  inputs."bump-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_3".url = "path:./1_3_3";
  inputs."bump-1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_4".url = "path:./1_3_4";
  inputs."bump-1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_5".url = "path:./1_3_5";
  inputs."bump-1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_4_0".url = "path:./1_4_0";
  inputs."bump-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_5_0".url = "path:./1_5_0";
  inputs."bump-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_5_1".url = "path:./1_5_1";
  inputs."bump-1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_6_0".url = "path:./1_6_0";
  inputs."bump-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_0".url = "path:./1_7_0";
  inputs."bump-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_1".url = "path:./1_7_1";
  inputs."bump-1_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_10".url = "path:./1_7_10";
  inputs."bump-1_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_2".url = "path:./1_7_2";
  inputs."bump-1_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_3".url = "path:./1_7_3";
  inputs."bump-1_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_4".url = "path:./1_7_4";
  inputs."bump-1_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_5".url = "path:./1_7_5";
  inputs."bump-1_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_6".url = "path:./1_7_6";
  inputs."bump-1_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_7".url = "path:./1_7_7";
  inputs."bump-1_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_8".url = "path:./1_7_8";
  inputs."bump-1_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_9".url = "path:./1_7_9";
  inputs."bump-1_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_0".url = "path:./1_8_0";
  inputs."bump-1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_1".url = "path:./1_8_1";
  inputs."bump-1_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_10".url = "path:./1_8_10";
  inputs."bump-1_8_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_11".url = "path:./1_8_11";
  inputs."bump-1_8_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_12".url = "path:./1_8_12";
  inputs."bump-1_8_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_13".url = "path:./1_8_13";
  inputs."bump-1_8_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_14".url = "path:./1_8_14";
  inputs."bump-1_8_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_15".url = "path:./1_8_15";
  inputs."bump-1_8_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_16".url = "path:./1_8_16";
  inputs."bump-1_8_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_17".url = "path:./1_8_17";
  inputs."bump-1_8_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_18".url = "path:./1_8_18";
  inputs."bump-1_8_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_19".url = "path:./1_8_19";
  inputs."bump-1_8_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_2".url = "path:./1_8_2";
  inputs."bump-1_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_20".url = "path:./1_8_20";
  inputs."bump-1_8_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_21".url = "path:./1_8_21";
  inputs."bump-1_8_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_22".url = "path:./1_8_22";
  inputs."bump-1_8_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_23".url = "path:./1_8_23";
  inputs."bump-1_8_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_24".url = "path:./1_8_24";
  inputs."bump-1_8_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_25".url = "path:./1_8_25";
  inputs."bump-1_8_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_26".url = "path:./1_8_26";
  inputs."bump-1_8_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_27".url = "path:./1_8_27";
  inputs."bump-1_8_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_28".url = "path:./1_8_28";
  inputs."bump-1_8_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_29".url = "path:./1_8_29";
  inputs."bump-1_8_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_3".url = "path:./1_8_3";
  inputs."bump-1_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_4".url = "path:./1_8_4";
  inputs."bump-1_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_5".url = "path:./1_8_5";
  inputs."bump-1_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_6".url = "path:./1_8_6";
  inputs."bump-1_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_7".url = "path:./1_8_7";
  inputs."bump-1_8_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_8".url = "path:./1_8_8";
  inputs."bump-1_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_9".url = "path:./1_8_9";
  inputs."bump-1_8_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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