{
  description = ''Structural sharing data structure of lists and maps.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ternary_tree-master".dir   = "master";
  inputs."ternary_tree-master".owner = "nim-nix-pkgs";
  inputs."ternary_tree-master".ref   = "master";
  inputs."ternary_tree-master".repo  = "ternary_tree";
  inputs."ternary_tree-master".type  = "github";
  inputs."ternary_tree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_0".dir   = "v0_1_0";
  inputs."ternary_tree-v0_1_0".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_0".ref   = "master";
  inputs."ternary_tree-v0_1_0".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_0".type  = "github";
  inputs."ternary_tree-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_1".dir   = "v0_1_1";
  inputs."ternary_tree-v0_1_1".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_1".ref   = "master";
  inputs."ternary_tree-v0_1_1".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_1".type  = "github";
  inputs."ternary_tree-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_10".dir   = "v0_1_10";
  inputs."ternary_tree-v0_1_10".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_10".ref   = "master";
  inputs."ternary_tree-v0_1_10".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_10".type  = "github";
  inputs."ternary_tree-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_11".dir   = "v0_1_11";
  inputs."ternary_tree-v0_1_11".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_11".ref   = "master";
  inputs."ternary_tree-v0_1_11".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_11".type  = "github";
  inputs."ternary_tree-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_12".dir   = "v0_1_12";
  inputs."ternary_tree-v0_1_12".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_12".ref   = "master";
  inputs."ternary_tree-v0_1_12".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_12".type  = "github";
  inputs."ternary_tree-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_13".dir   = "v0_1_13";
  inputs."ternary_tree-v0_1_13".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_13".ref   = "master";
  inputs."ternary_tree-v0_1_13".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_13".type  = "github";
  inputs."ternary_tree-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_14".dir   = "v0_1_14";
  inputs."ternary_tree-v0_1_14".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_14".ref   = "master";
  inputs."ternary_tree-v0_1_14".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_14".type  = "github";
  inputs."ternary_tree-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_15".dir   = "v0_1_15";
  inputs."ternary_tree-v0_1_15".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_15".ref   = "master";
  inputs."ternary_tree-v0_1_15".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_15".type  = "github";
  inputs."ternary_tree-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_16".dir   = "v0_1_16";
  inputs."ternary_tree-v0_1_16".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_16".ref   = "master";
  inputs."ternary_tree-v0_1_16".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_16".type  = "github";
  inputs."ternary_tree-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_17".dir   = "v0_1_17";
  inputs."ternary_tree-v0_1_17".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_17".ref   = "master";
  inputs."ternary_tree-v0_1_17".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_17".type  = "github";
  inputs."ternary_tree-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_18".dir   = "v0_1_18";
  inputs."ternary_tree-v0_1_18".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_18".ref   = "master";
  inputs."ternary_tree-v0_1_18".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_18".type  = "github";
  inputs."ternary_tree-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_19".dir   = "v0_1_19";
  inputs."ternary_tree-v0_1_19".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_19".ref   = "master";
  inputs."ternary_tree-v0_1_19".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_19".type  = "github";
  inputs."ternary_tree-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_2".dir   = "v0_1_2";
  inputs."ternary_tree-v0_1_2".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_2".ref   = "master";
  inputs."ternary_tree-v0_1_2".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_2".type  = "github";
  inputs."ternary_tree-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_20".dir   = "v0_1_20";
  inputs."ternary_tree-v0_1_20".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_20".ref   = "master";
  inputs."ternary_tree-v0_1_20".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_20".type  = "github";
  inputs."ternary_tree-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_21".dir   = "v0_1_21";
  inputs."ternary_tree-v0_1_21".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_21".ref   = "master";
  inputs."ternary_tree-v0_1_21".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_21".type  = "github";
  inputs."ternary_tree-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_22".dir   = "v0_1_22";
  inputs."ternary_tree-v0_1_22".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_22".ref   = "master";
  inputs."ternary_tree-v0_1_22".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_22".type  = "github";
  inputs."ternary_tree-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_23".dir   = "v0_1_23";
  inputs."ternary_tree-v0_1_23".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_23".ref   = "master";
  inputs."ternary_tree-v0_1_23".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_23".type  = "github";
  inputs."ternary_tree-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_24".dir   = "v0_1_24";
  inputs."ternary_tree-v0_1_24".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_24".ref   = "master";
  inputs."ternary_tree-v0_1_24".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_24".type  = "github";
  inputs."ternary_tree-v0_1_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_25".dir   = "v0_1_25";
  inputs."ternary_tree-v0_1_25".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_25".ref   = "master";
  inputs."ternary_tree-v0_1_25".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_25".type  = "github";
  inputs."ternary_tree-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_26".dir   = "v0_1_26";
  inputs."ternary_tree-v0_1_26".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_26".ref   = "master";
  inputs."ternary_tree-v0_1_26".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_26".type  = "github";
  inputs."ternary_tree-v0_1_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_27".dir   = "v0_1_27";
  inputs."ternary_tree-v0_1_27".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_27".ref   = "master";
  inputs."ternary_tree-v0_1_27".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_27".type  = "github";
  inputs."ternary_tree-v0_1_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_28".dir   = "v0_1_28";
  inputs."ternary_tree-v0_1_28".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_28".ref   = "master";
  inputs."ternary_tree-v0_1_28".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_28".type  = "github";
  inputs."ternary_tree-v0_1_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_29".dir   = "v0_1_29";
  inputs."ternary_tree-v0_1_29".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_29".ref   = "master";
  inputs."ternary_tree-v0_1_29".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_29".type  = "github";
  inputs."ternary_tree-v0_1_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_3".dir   = "v0_1_3";
  inputs."ternary_tree-v0_1_3".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_3".ref   = "master";
  inputs."ternary_tree-v0_1_3".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_3".type  = "github";
  inputs."ternary_tree-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_30".dir   = "v0_1_30";
  inputs."ternary_tree-v0_1_30".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_30".ref   = "master";
  inputs."ternary_tree-v0_1_30".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_30".type  = "github";
  inputs."ternary_tree-v0_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_31".dir   = "v0_1_31";
  inputs."ternary_tree-v0_1_31".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_31".ref   = "master";
  inputs."ternary_tree-v0_1_31".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_31".type  = "github";
  inputs."ternary_tree-v0_1_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_32".dir   = "v0_1_32";
  inputs."ternary_tree-v0_1_32".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_32".ref   = "master";
  inputs."ternary_tree-v0_1_32".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_32".type  = "github";
  inputs."ternary_tree-v0_1_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_33".dir   = "v0_1_33";
  inputs."ternary_tree-v0_1_33".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_33".ref   = "master";
  inputs."ternary_tree-v0_1_33".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_33".type  = "github";
  inputs."ternary_tree-v0_1_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_4".dir   = "v0_1_4";
  inputs."ternary_tree-v0_1_4".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_4".ref   = "master";
  inputs."ternary_tree-v0_1_4".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_4".type  = "github";
  inputs."ternary_tree-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_5".dir   = "v0_1_5";
  inputs."ternary_tree-v0_1_5".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_5".ref   = "master";
  inputs."ternary_tree-v0_1_5".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_5".type  = "github";
  inputs."ternary_tree-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_6".dir   = "v0_1_6";
  inputs."ternary_tree-v0_1_6".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_6".ref   = "master";
  inputs."ternary_tree-v0_1_6".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_6".type  = "github";
  inputs."ternary_tree-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_7".dir   = "v0_1_7";
  inputs."ternary_tree-v0_1_7".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_7".ref   = "master";
  inputs."ternary_tree-v0_1_7".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_7".type  = "github";
  inputs."ternary_tree-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_8".dir   = "v0_1_8";
  inputs."ternary_tree-v0_1_8".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_8".ref   = "master";
  inputs."ternary_tree-v0_1_8".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_8".type  = "github";
  inputs."ternary_tree-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_1_9".dir   = "v0_1_9";
  inputs."ternary_tree-v0_1_9".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_1_9".ref   = "master";
  inputs."ternary_tree-v0_1_9".repo  = "ternary_tree";
  inputs."ternary_tree-v0_1_9".type  = "github";
  inputs."ternary_tree-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_2_0".dir   = "v0_2_0";
  inputs."ternary_tree-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_2_0".ref   = "master";
  inputs."ternary_tree-v0_2_0".repo  = "ternary_tree";
  inputs."ternary_tree-v0_2_0".type  = "github";
  inputs."ternary_tree-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_2_1".dir   = "v0_2_1";
  inputs."ternary_tree-v0_2_1".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_2_1".ref   = "master";
  inputs."ternary_tree-v0_2_1".repo  = "ternary_tree";
  inputs."ternary_tree-v0_2_1".type  = "github";
  inputs."ternary_tree-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ternary_tree-v0_2_2".dir   = "v0_2_2";
  inputs."ternary_tree-v0_2_2".owner = "nim-nix-pkgs";
  inputs."ternary_tree-v0_2_2".ref   = "master";
  inputs."ternary_tree-v0_2_2".repo  = "ternary_tree";
  inputs."ternary_tree-v0_2_2".type  = "github";
  inputs."ternary_tree-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ternary_tree-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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