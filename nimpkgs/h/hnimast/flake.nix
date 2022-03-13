{
  description = ''User-friendly wrapper for nim ast'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hnimast-master".dir   = "master";
  inputs."hnimast-master".owner = "nim-nix-pkgs";
  inputs."hnimast-master".ref   = "master";
  inputs."hnimast-master".repo  = "hnimast";
  inputs."hnimast-master".type  = "github";
  inputs."hnimast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_0".dir   = "v0_3_0";
  inputs."hnimast-v0_3_0".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_0".ref   = "master";
  inputs."hnimast-v0_3_0".repo  = "hnimast";
  inputs."hnimast-v0_3_0".type  = "github";
  inputs."hnimast-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_1".dir   = "v0_3_1";
  inputs."hnimast-v0_3_1".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_1".ref   = "master";
  inputs."hnimast-v0_3_1".repo  = "hnimast";
  inputs."hnimast-v0_3_1".type  = "github";
  inputs."hnimast-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_10".dir   = "v0_3_10";
  inputs."hnimast-v0_3_10".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_10".ref   = "master";
  inputs."hnimast-v0_3_10".repo  = "hnimast";
  inputs."hnimast-v0_3_10".type  = "github";
  inputs."hnimast-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_11".dir   = "v0_3_11";
  inputs."hnimast-v0_3_11".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_11".ref   = "master";
  inputs."hnimast-v0_3_11".repo  = "hnimast";
  inputs."hnimast-v0_3_11".type  = "github";
  inputs."hnimast-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_12".dir   = "v0_3_12";
  inputs."hnimast-v0_3_12".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_12".ref   = "master";
  inputs."hnimast-v0_3_12".repo  = "hnimast";
  inputs."hnimast-v0_3_12".type  = "github";
  inputs."hnimast-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_13".dir   = "v0_3_13";
  inputs."hnimast-v0_3_13".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_13".ref   = "master";
  inputs."hnimast-v0_3_13".repo  = "hnimast";
  inputs."hnimast-v0_3_13".type  = "github";
  inputs."hnimast-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_14".dir   = "v0_3_14";
  inputs."hnimast-v0_3_14".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_14".ref   = "master";
  inputs."hnimast-v0_3_14".repo  = "hnimast";
  inputs."hnimast-v0_3_14".type  = "github";
  inputs."hnimast-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_15".dir   = "v0_3_15";
  inputs."hnimast-v0_3_15".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_15".ref   = "master";
  inputs."hnimast-v0_3_15".repo  = "hnimast";
  inputs."hnimast-v0_3_15".type  = "github";
  inputs."hnimast-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_16".dir   = "v0_3_16";
  inputs."hnimast-v0_3_16".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_16".ref   = "master";
  inputs."hnimast-v0_3_16".repo  = "hnimast";
  inputs."hnimast-v0_3_16".type  = "github";
  inputs."hnimast-v0_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_17".dir   = "v0_3_17";
  inputs."hnimast-v0_3_17".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_17".ref   = "master";
  inputs."hnimast-v0_3_17".repo  = "hnimast";
  inputs."hnimast-v0_3_17".type  = "github";
  inputs."hnimast-v0_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_18".dir   = "v0_3_18";
  inputs."hnimast-v0_3_18".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_18".ref   = "master";
  inputs."hnimast-v0_3_18".repo  = "hnimast";
  inputs."hnimast-v0_3_18".type  = "github";
  inputs."hnimast-v0_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_19".dir   = "v0_3_19";
  inputs."hnimast-v0_3_19".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_19".ref   = "master";
  inputs."hnimast-v0_3_19".repo  = "hnimast";
  inputs."hnimast-v0_3_19".type  = "github";
  inputs."hnimast-v0_3_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_2".dir   = "v0_3_2";
  inputs."hnimast-v0_3_2".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_2".ref   = "master";
  inputs."hnimast-v0_3_2".repo  = "hnimast";
  inputs."hnimast-v0_3_2".type  = "github";
  inputs."hnimast-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_20".dir   = "v0_3_20";
  inputs."hnimast-v0_3_20".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_20".ref   = "master";
  inputs."hnimast-v0_3_20".repo  = "hnimast";
  inputs."hnimast-v0_3_20".type  = "github";
  inputs."hnimast-v0_3_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_21".dir   = "v0_3_21";
  inputs."hnimast-v0_3_21".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_21".ref   = "master";
  inputs."hnimast-v0_3_21".repo  = "hnimast";
  inputs."hnimast-v0_3_21".type  = "github";
  inputs."hnimast-v0_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_22".dir   = "v0_3_22";
  inputs."hnimast-v0_3_22".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_22".ref   = "master";
  inputs."hnimast-v0_3_22".repo  = "hnimast";
  inputs."hnimast-v0_3_22".type  = "github";
  inputs."hnimast-v0_3_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_23".dir   = "v0_3_23";
  inputs."hnimast-v0_3_23".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_23".ref   = "master";
  inputs."hnimast-v0_3_23".repo  = "hnimast";
  inputs."hnimast-v0_3_23".type  = "github";
  inputs."hnimast-v0_3_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_24".dir   = "v0_3_24";
  inputs."hnimast-v0_3_24".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_24".ref   = "master";
  inputs."hnimast-v0_3_24".repo  = "hnimast";
  inputs."hnimast-v0_3_24".type  = "github";
  inputs."hnimast-v0_3_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_25".dir   = "v0_3_25";
  inputs."hnimast-v0_3_25".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_25".ref   = "master";
  inputs."hnimast-v0_3_25".repo  = "hnimast";
  inputs."hnimast-v0_3_25".type  = "github";
  inputs."hnimast-v0_3_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_26".dir   = "v0_3_26";
  inputs."hnimast-v0_3_26".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_26".ref   = "master";
  inputs."hnimast-v0_3_26".repo  = "hnimast";
  inputs."hnimast-v0_3_26".type  = "github";
  inputs."hnimast-v0_3_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_27".dir   = "v0_3_27";
  inputs."hnimast-v0_3_27".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_27".ref   = "master";
  inputs."hnimast-v0_3_27".repo  = "hnimast";
  inputs."hnimast-v0_3_27".type  = "github";
  inputs."hnimast-v0_3_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_28".dir   = "v0_3_28";
  inputs."hnimast-v0_3_28".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_28".ref   = "master";
  inputs."hnimast-v0_3_28".repo  = "hnimast";
  inputs."hnimast-v0_3_28".type  = "github";
  inputs."hnimast-v0_3_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_29".dir   = "v0_3_29";
  inputs."hnimast-v0_3_29".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_29".ref   = "master";
  inputs."hnimast-v0_3_29".repo  = "hnimast";
  inputs."hnimast-v0_3_29".type  = "github";
  inputs."hnimast-v0_3_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_3".dir   = "v0_3_3";
  inputs."hnimast-v0_3_3".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_3".ref   = "master";
  inputs."hnimast-v0_3_3".repo  = "hnimast";
  inputs."hnimast-v0_3_3".type  = "github";
  inputs."hnimast-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_30".dir   = "v0_3_30";
  inputs."hnimast-v0_3_30".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_30".ref   = "master";
  inputs."hnimast-v0_3_30".repo  = "hnimast";
  inputs."hnimast-v0_3_30".type  = "github";
  inputs."hnimast-v0_3_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_31".dir   = "v0_3_31";
  inputs."hnimast-v0_3_31".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_31".ref   = "master";
  inputs."hnimast-v0_3_31".repo  = "hnimast";
  inputs."hnimast-v0_3_31".type  = "github";
  inputs."hnimast-v0_3_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_32".dir   = "v0_3_32";
  inputs."hnimast-v0_3_32".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_32".ref   = "master";
  inputs."hnimast-v0_3_32".repo  = "hnimast";
  inputs."hnimast-v0_3_32".type  = "github";
  inputs."hnimast-v0_3_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_33".dir   = "v0_3_33";
  inputs."hnimast-v0_3_33".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_33".ref   = "master";
  inputs."hnimast-v0_3_33".repo  = "hnimast";
  inputs."hnimast-v0_3_33".type  = "github";
  inputs."hnimast-v0_3_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_34".dir   = "v0_3_34";
  inputs."hnimast-v0_3_34".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_34".ref   = "master";
  inputs."hnimast-v0_3_34".repo  = "hnimast";
  inputs."hnimast-v0_3_34".type  = "github";
  inputs."hnimast-v0_3_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_35".dir   = "v0_3_35";
  inputs."hnimast-v0_3_35".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_35".ref   = "master";
  inputs."hnimast-v0_3_35".repo  = "hnimast";
  inputs."hnimast-v0_3_35".type  = "github";
  inputs."hnimast-v0_3_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_36".dir   = "v0_3_36";
  inputs."hnimast-v0_3_36".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_36".ref   = "master";
  inputs."hnimast-v0_3_36".repo  = "hnimast";
  inputs."hnimast-v0_3_36".type  = "github";
  inputs."hnimast-v0_3_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_37".dir   = "v0_3_37";
  inputs."hnimast-v0_3_37".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_37".ref   = "master";
  inputs."hnimast-v0_3_37".repo  = "hnimast";
  inputs."hnimast-v0_3_37".type  = "github";
  inputs."hnimast-v0_3_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_38".dir   = "v0_3_38";
  inputs."hnimast-v0_3_38".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_38".ref   = "master";
  inputs."hnimast-v0_3_38".repo  = "hnimast";
  inputs."hnimast-v0_3_38".type  = "github";
  inputs."hnimast-v0_3_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_4".dir   = "v0_3_4";
  inputs."hnimast-v0_3_4".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_4".ref   = "master";
  inputs."hnimast-v0_3_4".repo  = "hnimast";
  inputs."hnimast-v0_3_4".type  = "github";
  inputs."hnimast-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_5".dir   = "v0_3_5";
  inputs."hnimast-v0_3_5".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_5".ref   = "master";
  inputs."hnimast-v0_3_5".repo  = "hnimast";
  inputs."hnimast-v0_3_5".type  = "github";
  inputs."hnimast-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_6".dir   = "v0_3_6";
  inputs."hnimast-v0_3_6".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_6".ref   = "master";
  inputs."hnimast-v0_3_6".repo  = "hnimast";
  inputs."hnimast-v0_3_6".type  = "github";
  inputs."hnimast-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_7".dir   = "v0_3_7";
  inputs."hnimast-v0_3_7".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_7".ref   = "master";
  inputs."hnimast-v0_3_7".repo  = "hnimast";
  inputs."hnimast-v0_3_7".type  = "github";
  inputs."hnimast-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_8".dir   = "v0_3_8";
  inputs."hnimast-v0_3_8".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_8".ref   = "master";
  inputs."hnimast-v0_3_8".repo  = "hnimast";
  inputs."hnimast-v0_3_8".type  = "github";
  inputs."hnimast-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_3_9".dir   = "v0_3_9";
  inputs."hnimast-v0_3_9".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_3_9".ref   = "master";
  inputs."hnimast-v0_3_9".repo  = "hnimast";
  inputs."hnimast-v0_3_9".type  = "github";
  inputs."hnimast-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_4_0".dir   = "v0_4_0";
  inputs."hnimast-v0_4_0".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_4_0".ref   = "master";
  inputs."hnimast-v0_4_0".repo  = "hnimast";
  inputs."hnimast-v0_4_0".type  = "github";
  inputs."hnimast-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast-v0_4_2".dir   = "v0_4_2";
  inputs."hnimast-v0_4_2".owner = "nim-nix-pkgs";
  inputs."hnimast-v0_4_2".ref   = "master";
  inputs."hnimast-v0_4_2".repo  = "hnimast";
  inputs."hnimast-v0_4_2".type  = "github";
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