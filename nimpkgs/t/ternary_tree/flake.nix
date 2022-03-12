{
  description = ''Structural sharing data structure of lists and maps.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ternary_tree-master".url = "path:./master";
  inputs."ternary_tree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_0".url = "path:./v0_1_0";
  inputs."ternary_tree-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_1".url = "path:./v0_1_1";
  inputs."ternary_tree-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_10".url = "path:./v0_1_10";
  inputs."ternary_tree-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_11".url = "path:./v0_1_11";
  inputs."ternary_tree-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_12".url = "path:./v0_1_12";
  inputs."ternary_tree-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_13".url = "path:./v0_1_13";
  inputs."ternary_tree-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_14".url = "path:./v0_1_14";
  inputs."ternary_tree-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_15".url = "path:./v0_1_15";
  inputs."ternary_tree-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_16".url = "path:./v0_1_16";
  inputs."ternary_tree-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_17".url = "path:./v0_1_17";
  inputs."ternary_tree-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_18".url = "path:./v0_1_18";
  inputs."ternary_tree-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_19".url = "path:./v0_1_19";
  inputs."ternary_tree-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_2".url = "path:./v0_1_2";
  inputs."ternary_tree-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_20".url = "path:./v0_1_20";
  inputs."ternary_tree-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_21".url = "path:./v0_1_21";
  inputs."ternary_tree-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_22".url = "path:./v0_1_22";
  inputs."ternary_tree-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_23".url = "path:./v0_1_23";
  inputs."ternary_tree-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_24".url = "path:./v0_1_24";
  inputs."ternary_tree-v0_1_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_25".url = "path:./v0_1_25";
  inputs."ternary_tree-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_26".url = "path:./v0_1_26";
  inputs."ternary_tree-v0_1_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_27".url = "path:./v0_1_27";
  inputs."ternary_tree-v0_1_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_28".url = "path:./v0_1_28";
  inputs."ternary_tree-v0_1_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_29".url = "path:./v0_1_29";
  inputs."ternary_tree-v0_1_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_3".url = "path:./v0_1_3";
  inputs."ternary_tree-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_30".url = "path:./v0_1_30";
  inputs."ternary_tree-v0_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_31".url = "path:./v0_1_31";
  inputs."ternary_tree-v0_1_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_32".url = "path:./v0_1_32";
  inputs."ternary_tree-v0_1_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_33".url = "path:./v0_1_33";
  inputs."ternary_tree-v0_1_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_4".url = "path:./v0_1_4";
  inputs."ternary_tree-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_5".url = "path:./v0_1_5";
  inputs."ternary_tree-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_6".url = "path:./v0_1_6";
  inputs."ternary_tree-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_7".url = "path:./v0_1_7";
  inputs."ternary_tree-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_8".url = "path:./v0_1_8";
  inputs."ternary_tree-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_9".url = "path:./v0_1_9";
  inputs."ternary_tree-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_2_0".url = "path:./v0_2_0";
  inputs."ternary_tree-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_2_1".url = "path:./v0_2_1";
  inputs."ternary_tree-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_2_2".url = "path:./v0_2_2";
  inputs."ternary_tree-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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