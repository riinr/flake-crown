{
  description = ''Continuation-Passing Style for Nim link'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-nim-works-cps-master".dir   = "master";
  inputs."github-nim-works-cps-master".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-master".ref   = "master";
  inputs."github-nim-works-cps-master".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-master".type  = "github";
  inputs."github-nim-works-cps-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_1".dir   = "0_0_1";
  inputs."github-nim-works-cps-0_0_1".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_1".ref   = "master";
  inputs."github-nim-works-cps-0_0_1".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_1".type  = "github";
  inputs."github-nim-works-cps-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_10".dir   = "0_0_10";
  inputs."github-nim-works-cps-0_0_10".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_10".ref   = "master";
  inputs."github-nim-works-cps-0_0_10".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_10".type  = "github";
  inputs."github-nim-works-cps-0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_11".dir   = "0_0_11";
  inputs."github-nim-works-cps-0_0_11".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_11".ref   = "master";
  inputs."github-nim-works-cps-0_0_11".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_11".type  = "github";
  inputs."github-nim-works-cps-0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_12".dir   = "0_0_12";
  inputs."github-nim-works-cps-0_0_12".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_12".ref   = "master";
  inputs."github-nim-works-cps-0_0_12".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_12".type  = "github";
  inputs."github-nim-works-cps-0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_13".dir   = "0_0_13";
  inputs."github-nim-works-cps-0_0_13".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_13".ref   = "master";
  inputs."github-nim-works-cps-0_0_13".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_13".type  = "github";
  inputs."github-nim-works-cps-0_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_14".dir   = "0_0_14";
  inputs."github-nim-works-cps-0_0_14".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_14".ref   = "master";
  inputs."github-nim-works-cps-0_0_14".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_14".type  = "github";
  inputs."github-nim-works-cps-0_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_15".dir   = "0_0_15";
  inputs."github-nim-works-cps-0_0_15".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_15".ref   = "master";
  inputs."github-nim-works-cps-0_0_15".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_15".type  = "github";
  inputs."github-nim-works-cps-0_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_16".dir   = "0_0_16";
  inputs."github-nim-works-cps-0_0_16".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_16".ref   = "master";
  inputs."github-nim-works-cps-0_0_16".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_16".type  = "github";
  inputs."github-nim-works-cps-0_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_17".dir   = "0_0_17";
  inputs."github-nim-works-cps-0_0_17".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_17".ref   = "master";
  inputs."github-nim-works-cps-0_0_17".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_17".type  = "github";
  inputs."github-nim-works-cps-0_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_18".dir   = "0_0_18";
  inputs."github-nim-works-cps-0_0_18".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_18".ref   = "master";
  inputs."github-nim-works-cps-0_0_18".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_18".type  = "github";
  inputs."github-nim-works-cps-0_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_19".dir   = "0_0_19";
  inputs."github-nim-works-cps-0_0_19".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_19".ref   = "master";
  inputs."github-nim-works-cps-0_0_19".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_19".type  = "github";
  inputs."github-nim-works-cps-0_0_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_2".dir   = "0_0_2";
  inputs."github-nim-works-cps-0_0_2".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_2".ref   = "master";
  inputs."github-nim-works-cps-0_0_2".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_2".type  = "github";
  inputs."github-nim-works-cps-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_20".dir   = "0_0_20";
  inputs."github-nim-works-cps-0_0_20".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_20".ref   = "master";
  inputs."github-nim-works-cps-0_0_20".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_20".type  = "github";
  inputs."github-nim-works-cps-0_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_21".dir   = "0_0_21";
  inputs."github-nim-works-cps-0_0_21".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_21".ref   = "master";
  inputs."github-nim-works-cps-0_0_21".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_21".type  = "github";
  inputs."github-nim-works-cps-0_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_22".dir   = "0_0_22";
  inputs."github-nim-works-cps-0_0_22".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_22".ref   = "master";
  inputs."github-nim-works-cps-0_0_22".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_22".type  = "github";
  inputs."github-nim-works-cps-0_0_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_23".dir   = "0_0_23";
  inputs."github-nim-works-cps-0_0_23".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_23".ref   = "master";
  inputs."github-nim-works-cps-0_0_23".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_23".type  = "github";
  inputs."github-nim-works-cps-0_0_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_24".dir   = "0_0_24";
  inputs."github-nim-works-cps-0_0_24".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_24".ref   = "master";
  inputs."github-nim-works-cps-0_0_24".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_24".type  = "github";
  inputs."github-nim-works-cps-0_0_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_25".dir   = "0_0_25";
  inputs."github-nim-works-cps-0_0_25".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_25".ref   = "master";
  inputs."github-nim-works-cps-0_0_25".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_25".type  = "github";
  inputs."github-nim-works-cps-0_0_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_26".dir   = "0_0_26";
  inputs."github-nim-works-cps-0_0_26".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_26".ref   = "master";
  inputs."github-nim-works-cps-0_0_26".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_26".type  = "github";
  inputs."github-nim-works-cps-0_0_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_27".dir   = "0_0_27";
  inputs."github-nim-works-cps-0_0_27".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_27".ref   = "master";
  inputs."github-nim-works-cps-0_0_27".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_27".type  = "github";
  inputs."github-nim-works-cps-0_0_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_28".dir   = "0_0_28";
  inputs."github-nim-works-cps-0_0_28".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_28".ref   = "master";
  inputs."github-nim-works-cps-0_0_28".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_28".type  = "github";
  inputs."github-nim-works-cps-0_0_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_29".dir   = "0_0_29";
  inputs."github-nim-works-cps-0_0_29".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_29".ref   = "master";
  inputs."github-nim-works-cps-0_0_29".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_29".type  = "github";
  inputs."github-nim-works-cps-0_0_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_3".dir   = "0_0_3";
  inputs."github-nim-works-cps-0_0_3".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_3".ref   = "master";
  inputs."github-nim-works-cps-0_0_3".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_3".type  = "github";
  inputs."github-nim-works-cps-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_30".dir   = "0_0_30";
  inputs."github-nim-works-cps-0_0_30".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_30".ref   = "master";
  inputs."github-nim-works-cps-0_0_30".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_30".type  = "github";
  inputs."github-nim-works-cps-0_0_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_31".dir   = "0_0_31";
  inputs."github-nim-works-cps-0_0_31".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_31".ref   = "master";
  inputs."github-nim-works-cps-0_0_31".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_31".type  = "github";
  inputs."github-nim-works-cps-0_0_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_32".dir   = "0_0_32";
  inputs."github-nim-works-cps-0_0_32".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_32".ref   = "master";
  inputs."github-nim-works-cps-0_0_32".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_32".type  = "github";
  inputs."github-nim-works-cps-0_0_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_33".dir   = "0_0_33";
  inputs."github-nim-works-cps-0_0_33".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_33".ref   = "master";
  inputs."github-nim-works-cps-0_0_33".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_33".type  = "github";
  inputs."github-nim-works-cps-0_0_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_34".dir   = "0_0_34";
  inputs."github-nim-works-cps-0_0_34".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_34".ref   = "master";
  inputs."github-nim-works-cps-0_0_34".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_34".type  = "github";
  inputs."github-nim-works-cps-0_0_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_35".dir   = "0_0_35";
  inputs."github-nim-works-cps-0_0_35".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_35".ref   = "master";
  inputs."github-nim-works-cps-0_0_35".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_35".type  = "github";
  inputs."github-nim-works-cps-0_0_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_36".dir   = "0_0_36";
  inputs."github-nim-works-cps-0_0_36".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_36".ref   = "master";
  inputs."github-nim-works-cps-0_0_36".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_36".type  = "github";
  inputs."github-nim-works-cps-0_0_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_4".dir   = "0_0_4";
  inputs."github-nim-works-cps-0_0_4".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_4".ref   = "master";
  inputs."github-nim-works-cps-0_0_4".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_4".type  = "github";
  inputs."github-nim-works-cps-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_5".dir   = "0_0_5";
  inputs."github-nim-works-cps-0_0_5".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_5".ref   = "master";
  inputs."github-nim-works-cps-0_0_5".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_5".type  = "github";
  inputs."github-nim-works-cps-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_6".dir   = "0_0_6";
  inputs."github-nim-works-cps-0_0_6".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_6".ref   = "master";
  inputs."github-nim-works-cps-0_0_6".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_6".type  = "github";
  inputs."github-nim-works-cps-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_7".dir   = "0_0_7";
  inputs."github-nim-works-cps-0_0_7".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_7".ref   = "master";
  inputs."github-nim-works-cps-0_0_7".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_7".type  = "github";
  inputs."github-nim-works-cps-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_8".dir   = "0_0_8";
  inputs."github-nim-works-cps-0_0_8".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_8".ref   = "master";
  inputs."github-nim-works-cps-0_0_8".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_8".type  = "github";
  inputs."github-nim-works-cps-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_0_9".dir   = "0_0_9";
  inputs."github-nim-works-cps-0_0_9".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_0_9".ref   = "master";
  inputs."github-nim-works-cps-0_0_9".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_0_9".type  = "github";
  inputs."github-nim-works-cps-0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_1_0".dir   = "0_1_0";
  inputs."github-nim-works-cps-0_1_0".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_1_0".ref   = "master";
  inputs."github-nim-works-cps-0_1_0".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_1_0".type  = "github";
  inputs."github-nim-works-cps-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_1_1".dir   = "0_1_1";
  inputs."github-nim-works-cps-0_1_1".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_1_1".ref   = "master";
  inputs."github-nim-works-cps-0_1_1".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_1_1".type  = "github";
  inputs."github-nim-works-cps-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_1_2".dir   = "0_1_2";
  inputs."github-nim-works-cps-0_1_2".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_1_2".ref   = "master";
  inputs."github-nim-works-cps-0_1_2".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_1_2".type  = "github";
  inputs."github-nim-works-cps-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_2_0".dir   = "0_2_0";
  inputs."github-nim-works-cps-0_2_0".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_2_0".ref   = "master";
  inputs."github-nim-works-cps-0_2_0".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_2_0".type  = "github";
  inputs."github-nim-works-cps-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_2_1".dir   = "0_2_1";
  inputs."github-nim-works-cps-0_2_1".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_2_1".ref   = "master";
  inputs."github-nim-works-cps-0_2_1".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_2_1".type  = "github";
  inputs."github-nim-works-cps-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_2_2".dir   = "0_2_2";
  inputs."github-nim-works-cps-0_2_2".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_2_2".ref   = "master";
  inputs."github-nim-works-cps-0_2_2".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_2_2".type  = "github";
  inputs."github-nim-works-cps-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_2_3".dir   = "0_2_3";
  inputs."github-nim-works-cps-0_2_3".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_2_3".ref   = "master";
  inputs."github-nim-works-cps-0_2_3".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_2_3".type  = "github";
  inputs."github-nim-works-cps-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_2_4".dir   = "0_2_4";
  inputs."github-nim-works-cps-0_2_4".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_2_4".ref   = "master";
  inputs."github-nim-works-cps-0_2_4".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_2_4".type  = "github";
  inputs."github-nim-works-cps-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_3_0".dir   = "0_3_0";
  inputs."github-nim-works-cps-0_3_0".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_3_0".ref   = "master";
  inputs."github-nim-works-cps-0_3_0".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_3_0".type  = "github";
  inputs."github-nim-works-cps-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_3_1".dir   = "0_3_1";
  inputs."github-nim-works-cps-0_3_1".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_3_1".ref   = "master";
  inputs."github-nim-works-cps-0_3_1".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_3_1".type  = "github";
  inputs."github-nim-works-cps-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_4_0".dir   = "0_4_0";
  inputs."github-nim-works-cps-0_4_0".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_4_0".ref   = "master";
  inputs."github-nim-works-cps-0_4_0".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_4_0".type  = "github";
  inputs."github-nim-works-cps-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_4_1".dir   = "0_4_1";
  inputs."github-nim-works-cps-0_4_1".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_4_1".ref   = "master";
  inputs."github-nim-works-cps-0_4_1".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_4_1".type  = "github";
  inputs."github-nim-works-cps-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_4_2".dir   = "0_4_2";
  inputs."github-nim-works-cps-0_4_2".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_4_2".ref   = "master";
  inputs."github-nim-works-cps-0_4_2".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_4_2".type  = "github";
  inputs."github-nim-works-cps-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_4_3".dir   = "0_4_3";
  inputs."github-nim-works-cps-0_4_3".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_4_3".ref   = "master";
  inputs."github-nim-works-cps-0_4_3".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_4_3".type  = "github";
  inputs."github-nim-works-cps-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_4_4".dir   = "0_4_4";
  inputs."github-nim-works-cps-0_4_4".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_4_4".ref   = "master";
  inputs."github-nim-works-cps-0_4_4".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_4_4".type  = "github";
  inputs."github-nim-works-cps-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_4_5".dir   = "0_4_5";
  inputs."github-nim-works-cps-0_4_5".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_4_5".ref   = "master";
  inputs."github-nim-works-cps-0_4_5".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_4_5".type  = "github";
  inputs."github-nim-works-cps-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_5_0".dir   = "0_5_0";
  inputs."github-nim-works-cps-0_5_0".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_5_0".ref   = "master";
  inputs."github-nim-works-cps-0_5_0".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_5_0".type  = "github";
  inputs."github-nim-works-cps-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_6_0".dir   = "0_6_0";
  inputs."github-nim-works-cps-0_6_0".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_6_0".ref   = "master";
  inputs."github-nim-works-cps-0_6_0".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_6_0".type  = "github";
  inputs."github-nim-works-cps-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_6_1".dir   = "0_6_1";
  inputs."github-nim-works-cps-0_6_1".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_6_1".ref   = "master";
  inputs."github-nim-works-cps-0_6_1".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_6_1".type  = "github";
  inputs."github-nim-works-cps-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-0_6_2".dir   = "0_6_2";
  inputs."github-nim-works-cps-0_6_2".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-0_6_2".ref   = "master";
  inputs."github-nim-works-cps-0_6_2".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-0_6_2".type  = "github";
  inputs."github-nim-works-cps-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nim-works-cps-rfc".dir   = "rfc";
  inputs."github-nim-works-cps-rfc".owner = "nim-nix-pkgs";
  inputs."github-nim-works-cps-rfc".ref   = "master";
  inputs."github-nim-works-cps-rfc".repo  = "github-nim-works-cps";
  inputs."github-nim-works-cps-rfc".type  = "github";
  inputs."github-nim-works-cps-rfc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nim-works-cps-rfc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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