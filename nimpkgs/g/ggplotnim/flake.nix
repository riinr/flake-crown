{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ggplotnim-master".url = "path:./master";
  inputs."ggplotnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_2".url = "path:./v0_1_2";
  inputs."ggplotnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_3".url = "path:./v0_1_3";
  inputs."ggplotnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_4".url = "path:./v0_1_4";
  inputs."ggplotnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_5".url = "path:./v0_1_5";
  inputs."ggplotnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_6".url = "path:./v0_1_6";
  inputs."ggplotnim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_0".url = "path:./v0_2_0";
  inputs."ggplotnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_1".url = "path:./v0_2_1";
  inputs."ggplotnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_10".url = "path:./v0_2_10";
  inputs."ggplotnim-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_11".url = "path:./v0_2_11";
  inputs."ggplotnim-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_12".url = "path:./v0_2_12";
  inputs."ggplotnim-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_13".url = "path:./v0_2_13";
  inputs."ggplotnim-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_14".url = "path:./v0_2_14";
  inputs."ggplotnim-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_15".url = "path:./v0_2_15";
  inputs."ggplotnim-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_16".url = "path:./v0_2_16";
  inputs."ggplotnim-v0_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_17".url = "path:./v0_2_17";
  inputs."ggplotnim-v0_2_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_18".url = "path:./v0_2_18";
  inputs."ggplotnim-v0_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_19".url = "path:./v0_2_19";
  inputs."ggplotnim-v0_2_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_2".url = "path:./v0_2_2";
  inputs."ggplotnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_20".url = "path:./v0_2_20";
  inputs."ggplotnim-v0_2_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_3".url = "path:./v0_2_3";
  inputs."ggplotnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_4".url = "path:./v0_2_4";
  inputs."ggplotnim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_5".url = "path:./v0_2_5";
  inputs."ggplotnim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_6".url = "path:./v0_2_6";
  inputs."ggplotnim-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_7".url = "path:./v0_2_7";
  inputs."ggplotnim-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_8".url = "path:./v0_2_8";
  inputs."ggplotnim-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_9".url = "path:./v0_2_9";
  inputs."ggplotnim-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_0".url = "path:./v0_3_0";
  inputs."ggplotnim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_1".url = "path:./v0_3_1";
  inputs."ggplotnim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_10".url = "path:./v0_3_10";
  inputs."ggplotnim-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_11".url = "path:./v0_3_11";
  inputs."ggplotnim-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_12".url = "path:./v0_3_12";
  inputs."ggplotnim-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_13".url = "path:./v0_3_13";
  inputs."ggplotnim-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_14".url = "path:./v0_3_14";
  inputs."ggplotnim-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_15".url = "path:./v0_3_15";
  inputs."ggplotnim-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_16".url = "path:./v0_3_16";
  inputs."ggplotnim-v0_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_17".url = "path:./v0_3_17";
  inputs."ggplotnim-v0_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_18".url = "path:./v0_3_18";
  inputs."ggplotnim-v0_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_2".url = "path:./v0_3_2";
  inputs."ggplotnim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_20".url = "path:./v0_3_20";
  inputs."ggplotnim-v0_3_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_21".url = "path:./v0_3_21";
  inputs."ggplotnim-v0_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_22".url = "path:./v0_3_22";
  inputs."ggplotnim-v0_3_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_24".url = "path:./v0_3_24";
  inputs."ggplotnim-v0_3_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_25".url = "path:./v0_3_25";
  inputs."ggplotnim-v0_3_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_26".url = "path:./v0_3_26";
  inputs."ggplotnim-v0_3_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_3".url = "path:./v0_3_3";
  inputs."ggplotnim-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_4".url = "path:./v0_3_4";
  inputs."ggplotnim-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_5".url = "path:./v0_3_5";
  inputs."ggplotnim-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_6".url = "path:./v0_3_6";
  inputs."ggplotnim-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_7".url = "path:./v0_3_7";
  inputs."ggplotnim-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_8".url = "path:./v0_3_8";
  inputs."ggplotnim-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_9".url = "path:./v0_3_9";
  inputs."ggplotnim-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_0".url = "path:./v0_4_0";
  inputs."ggplotnim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_1".url = "path:./v0_4_1";
  inputs."ggplotnim-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_10".url = "path:./v0_4_10";
  inputs."ggplotnim-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_11".url = "path:./v0_4_11";
  inputs."ggplotnim-v0_4_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_2".url = "path:./v0_4_2";
  inputs."ggplotnim-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_3".url = "path:./v0_4_3";
  inputs."ggplotnim-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_5".url = "path:./v0_4_5";
  inputs."ggplotnim-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_6".url = "path:./v0_4_6";
  inputs."ggplotnim-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_7".url = "path:./v0_4_7";
  inputs."ggplotnim-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_8".url = "path:./v0_4_8";
  inputs."ggplotnim-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_9".url = "path:./v0_4_9";
  inputs."ggplotnim-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_5_0".url = "path:./v0_5_0";
  inputs."ggplotnim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_5_1".url = "path:./v0_5_1";
  inputs."ggplotnim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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