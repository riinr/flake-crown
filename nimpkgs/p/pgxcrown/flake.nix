{
  description = ''Build Postgres extensions in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pgxcrown-main".dir   = "main";
  inputs."pgxcrown-main".owner = "nim-nix-pkgs";
  inputs."pgxcrown-main".ref   = "master";
  inputs."pgxcrown-main".repo  = "pgxcrown";
  inputs."pgxcrown-main".type  = "github";
  inputs."pgxcrown-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-master".dir   = "master";
  inputs."pgxcrown-master".owner = "nim-nix-pkgs";
  inputs."pgxcrown-master".ref   = "master";
  inputs."pgxcrown-master".repo  = "pgxcrown";
  inputs."pgxcrown-master".type  = "github";
  inputs."pgxcrown-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-0_2_4".dir   = "0_2_4";
  inputs."pgxcrown-0_2_4".owner = "nim-nix-pkgs";
  inputs."pgxcrown-0_2_4".ref   = "master";
  inputs."pgxcrown-0_2_4".repo  = "pgxcrown";
  inputs."pgxcrown-0_2_4".type  = "github";
  inputs."pgxcrown-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v_0_1_16".dir   = "v_0_1_16";
  inputs."pgxcrown-v_0_1_16".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v_0_1_16".ref   = "master";
  inputs."pgxcrown-v_0_1_16".repo  = "pgxcrown";
  inputs."pgxcrown-v_0_1_16".type  = "github";
  inputs."pgxcrown-v_0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v_0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_0".dir   = "v0_1_0";
  inputs."pgxcrown-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_0".ref   = "master";
  inputs."pgxcrown-v0_1_0".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_0".type  = "github";
  inputs."pgxcrown-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_1".dir   = "v0_1_1";
  inputs."pgxcrown-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_1".ref   = "master";
  inputs."pgxcrown-v0_1_1".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_1".type  = "github";
  inputs."pgxcrown-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_10".dir   = "v0_1_10";
  inputs."pgxcrown-v0_1_10".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_10".ref   = "master";
  inputs."pgxcrown-v0_1_10".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_10".type  = "github";
  inputs."pgxcrown-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_11".dir   = "v0_1_11";
  inputs."pgxcrown-v0_1_11".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_11".ref   = "master";
  inputs."pgxcrown-v0_1_11".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_11".type  = "github";
  inputs."pgxcrown-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_12".dir   = "v0_1_12";
  inputs."pgxcrown-v0_1_12".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_12".ref   = "master";
  inputs."pgxcrown-v0_1_12".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_12".type  = "github";
  inputs."pgxcrown-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_13".dir   = "v0_1_13";
  inputs."pgxcrown-v0_1_13".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_13".ref   = "master";
  inputs."pgxcrown-v0_1_13".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_13".type  = "github";
  inputs."pgxcrown-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_14".dir   = "v0_1_14";
  inputs."pgxcrown-v0_1_14".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_14".ref   = "master";
  inputs."pgxcrown-v0_1_14".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_14".type  = "github";
  inputs."pgxcrown-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_15".dir   = "v0_1_15";
  inputs."pgxcrown-v0_1_15".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_15".ref   = "master";
  inputs."pgxcrown-v0_1_15".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_15".type  = "github";
  inputs."pgxcrown-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_16".dir   = "v0_1_16";
  inputs."pgxcrown-v0_1_16".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_16".ref   = "master";
  inputs."pgxcrown-v0_1_16".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_16".type  = "github";
  inputs."pgxcrown-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_17".dir   = "v0_1_17";
  inputs."pgxcrown-v0_1_17".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_17".ref   = "master";
  inputs."pgxcrown-v0_1_17".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_17".type  = "github";
  inputs."pgxcrown-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_18".dir   = "v0_1_18";
  inputs."pgxcrown-v0_1_18".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_18".ref   = "master";
  inputs."pgxcrown-v0_1_18".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_18".type  = "github";
  inputs."pgxcrown-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_19".dir   = "v0_1_19";
  inputs."pgxcrown-v0_1_19".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_19".ref   = "master";
  inputs."pgxcrown-v0_1_19".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_19".type  = "github";
  inputs."pgxcrown-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_2".dir   = "v0_1_2";
  inputs."pgxcrown-v0_1_2".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_2".ref   = "master";
  inputs."pgxcrown-v0_1_2".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_2".type  = "github";
  inputs."pgxcrown-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_20".dir   = "v0_1_20";
  inputs."pgxcrown-v0_1_20".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_20".ref   = "master";
  inputs."pgxcrown-v0_1_20".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_20".type  = "github";
  inputs."pgxcrown-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_21".dir   = "v0_1_21";
  inputs."pgxcrown-v0_1_21".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_21".ref   = "master";
  inputs."pgxcrown-v0_1_21".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_21".type  = "github";
  inputs."pgxcrown-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_22".dir   = "v0_1_22";
  inputs."pgxcrown-v0_1_22".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_22".ref   = "master";
  inputs."pgxcrown-v0_1_22".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_22".type  = "github";
  inputs."pgxcrown-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_23".dir   = "v0_1_23";
  inputs."pgxcrown-v0_1_23".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_23".ref   = "master";
  inputs."pgxcrown-v0_1_23".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_23".type  = "github";
  inputs."pgxcrown-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_24".dir   = "v0_1_24";
  inputs."pgxcrown-v0_1_24".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_24".ref   = "master";
  inputs."pgxcrown-v0_1_24".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_24".type  = "github";
  inputs."pgxcrown-v0_1_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_25".dir   = "v0_1_25";
  inputs."pgxcrown-v0_1_25".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_25".ref   = "master";
  inputs."pgxcrown-v0_1_25".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_25".type  = "github";
  inputs."pgxcrown-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_26".dir   = "v0_1_26";
  inputs."pgxcrown-v0_1_26".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_26".ref   = "master";
  inputs."pgxcrown-v0_1_26".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_26".type  = "github";
  inputs."pgxcrown-v0_1_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_27".dir   = "v0_1_27";
  inputs."pgxcrown-v0_1_27".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_27".ref   = "master";
  inputs."pgxcrown-v0_1_27".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_27".type  = "github";
  inputs."pgxcrown-v0_1_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_28".dir   = "v0_1_28";
  inputs."pgxcrown-v0_1_28".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_28".ref   = "master";
  inputs."pgxcrown-v0_1_28".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_28".type  = "github";
  inputs."pgxcrown-v0_1_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_29".dir   = "v0_1_29";
  inputs."pgxcrown-v0_1_29".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_29".ref   = "master";
  inputs."pgxcrown-v0_1_29".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_29".type  = "github";
  inputs."pgxcrown-v0_1_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_30".dir   = "v0_1_30";
  inputs."pgxcrown-v0_1_30".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_30".ref   = "master";
  inputs."pgxcrown-v0_1_30".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_30".type  = "github";
  inputs."pgxcrown-v0_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_31".dir   = "v0_1_31";
  inputs."pgxcrown-v0_1_31".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_31".ref   = "master";
  inputs."pgxcrown-v0_1_31".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_31".type  = "github";
  inputs."pgxcrown-v0_1_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_32".dir   = "v0_1_32";
  inputs."pgxcrown-v0_1_32".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_32".ref   = "master";
  inputs."pgxcrown-v0_1_32".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_32".type  = "github";
  inputs."pgxcrown-v0_1_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_33".dir   = "v0_1_33";
  inputs."pgxcrown-v0_1_33".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_33".ref   = "master";
  inputs."pgxcrown-v0_1_33".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_33".type  = "github";
  inputs."pgxcrown-v0_1_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_34".dir   = "v0_1_34";
  inputs."pgxcrown-v0_1_34".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_34".ref   = "master";
  inputs."pgxcrown-v0_1_34".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_34".type  = "github";
  inputs."pgxcrown-v0_1_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_35".dir   = "v0_1_35";
  inputs."pgxcrown-v0_1_35".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_35".ref   = "master";
  inputs."pgxcrown-v0_1_35".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_35".type  = "github";
  inputs."pgxcrown-v0_1_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_36".dir   = "v0_1_36";
  inputs."pgxcrown-v0_1_36".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_36".ref   = "master";
  inputs."pgxcrown-v0_1_36".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_36".type  = "github";
  inputs."pgxcrown-v0_1_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_37".dir   = "v0_1_37";
  inputs."pgxcrown-v0_1_37".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_37".ref   = "master";
  inputs."pgxcrown-v0_1_37".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_37".type  = "github";
  inputs."pgxcrown-v0_1_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_38".dir   = "v0_1_38";
  inputs."pgxcrown-v0_1_38".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_38".ref   = "master";
  inputs."pgxcrown-v0_1_38".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_38".type  = "github";
  inputs."pgxcrown-v0_1_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_39".dir   = "v0_1_39";
  inputs."pgxcrown-v0_1_39".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_39".ref   = "master";
  inputs."pgxcrown-v0_1_39".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_39".type  = "github";
  inputs."pgxcrown-v0_1_39".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_39".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_4".dir   = "v0_1_4";
  inputs."pgxcrown-v0_1_4".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_4".ref   = "master";
  inputs."pgxcrown-v0_1_4".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_4".type  = "github";
  inputs."pgxcrown-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_40".dir   = "v0_1_40";
  inputs."pgxcrown-v0_1_40".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_40".ref   = "master";
  inputs."pgxcrown-v0_1_40".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_40".type  = "github";
  inputs."pgxcrown-v0_1_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_8".dir   = "v0_1_8";
  inputs."pgxcrown-v0_1_8".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_8".ref   = "master";
  inputs."pgxcrown-v0_1_8".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_8".type  = "github";
  inputs."pgxcrown-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_1_9".dir   = "v0_1_9";
  inputs."pgxcrown-v0_1_9".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_1_9".ref   = "master";
  inputs."pgxcrown-v0_1_9".repo  = "pgxcrown";
  inputs."pgxcrown-v0_1_9".type  = "github";
  inputs."pgxcrown-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_0".dir   = "v0_2_0";
  inputs."pgxcrown-v0_2_0".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_0".ref   = "master";
  inputs."pgxcrown-v0_2_0".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_0".type  = "github";
  inputs."pgxcrown-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_1".dir   = "v0_2_1";
  inputs."pgxcrown-v0_2_1".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_1".ref   = "master";
  inputs."pgxcrown-v0_2_1".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_1".type  = "github";
  inputs."pgxcrown-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_2".dir   = "v0_2_2";
  inputs."pgxcrown-v0_2_2".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_2".ref   = "master";
  inputs."pgxcrown-v0_2_2".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_2".type  = "github";
  inputs."pgxcrown-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_3".dir   = "v0_2_3";
  inputs."pgxcrown-v0_2_3".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_3".ref   = "master";
  inputs."pgxcrown-v0_2_3".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_3".type  = "github";
  inputs."pgxcrown-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_5".dir   = "v0_2_5";
  inputs."pgxcrown-v0_2_5".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_5".ref   = "master";
  inputs."pgxcrown-v0_2_5".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_5".type  = "github";
  inputs."pgxcrown-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_6".dir   = "v0_2_6";
  inputs."pgxcrown-v0_2_6".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_6".ref   = "master";
  inputs."pgxcrown-v0_2_6".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_6".type  = "github";
  inputs."pgxcrown-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_7".dir   = "v0_2_7";
  inputs."pgxcrown-v0_2_7".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_7".ref   = "master";
  inputs."pgxcrown-v0_2_7".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_7".type  = "github";
  inputs."pgxcrown-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_8".dir   = "v0_2_8";
  inputs."pgxcrown-v0_2_8".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_8".ref   = "master";
  inputs."pgxcrown-v0_2_8".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_8".type  = "github";
  inputs."pgxcrown-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_2_9".dir   = "v0_2_9";
  inputs."pgxcrown-v0_2_9".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_2_9".ref   = "master";
  inputs."pgxcrown-v0_2_9".repo  = "pgxcrown";
  inputs."pgxcrown-v0_2_9".type  = "github";
  inputs."pgxcrown-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_0".dir   = "v0_3_0";
  inputs."pgxcrown-v0_3_0".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_0".ref   = "master";
  inputs."pgxcrown-v0_3_0".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_0".type  = "github";
  inputs."pgxcrown-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_1".dir   = "v0_3_1";
  inputs."pgxcrown-v0_3_1".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_1".ref   = "master";
  inputs."pgxcrown-v0_3_1".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_1".type  = "github";
  inputs."pgxcrown-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_2".dir   = "v0_3_2";
  inputs."pgxcrown-v0_3_2".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_2".ref   = "master";
  inputs."pgxcrown-v0_3_2".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_2".type  = "github";
  inputs."pgxcrown-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_3".dir   = "v0_3_3";
  inputs."pgxcrown-v0_3_3".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_3".ref   = "master";
  inputs."pgxcrown-v0_3_3".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_3".type  = "github";
  inputs."pgxcrown-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_4".dir   = "v0_3_4";
  inputs."pgxcrown-v0_3_4".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_4".ref   = "master";
  inputs."pgxcrown-v0_3_4".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_4".type  = "github";
  inputs."pgxcrown-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_5".dir   = "v0_3_5";
  inputs."pgxcrown-v0_3_5".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_5".ref   = "master";
  inputs."pgxcrown-v0_3_5".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_5".type  = "github";
  inputs."pgxcrown-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_6".dir   = "v0_3_6";
  inputs."pgxcrown-v0_3_6".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_6".ref   = "master";
  inputs."pgxcrown-v0_3_6".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_6".type  = "github";
  inputs."pgxcrown-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_7".dir   = "v0_3_7";
  inputs."pgxcrown-v0_3_7".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_7".ref   = "master";
  inputs."pgxcrown-v0_3_7".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_7".type  = "github";
  inputs."pgxcrown-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_8".dir   = "v0_3_8";
  inputs."pgxcrown-v0_3_8".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_8".ref   = "master";
  inputs."pgxcrown-v0_3_8".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_8".type  = "github";
  inputs."pgxcrown-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_3_9".dir   = "v0_3_9";
  inputs."pgxcrown-v0_3_9".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_3_9".ref   = "master";
  inputs."pgxcrown-v0_3_9".repo  = "pgxcrown";
  inputs."pgxcrown-v0_3_9".type  = "github";
  inputs."pgxcrown-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_0".dir   = "v0_4_0";
  inputs."pgxcrown-v0_4_0".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_4_0".ref   = "master";
  inputs."pgxcrown-v0_4_0".repo  = "pgxcrown";
  inputs."pgxcrown-v0_4_0".type  = "github";
  inputs."pgxcrown-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_1".dir   = "v0_4_1";
  inputs."pgxcrown-v0_4_1".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_4_1".ref   = "master";
  inputs."pgxcrown-v0_4_1".repo  = "pgxcrown";
  inputs."pgxcrown-v0_4_1".type  = "github";
  inputs."pgxcrown-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_2".dir   = "v0_4_2";
  inputs."pgxcrown-v0_4_2".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_4_2".ref   = "master";
  inputs."pgxcrown-v0_4_2".repo  = "pgxcrown";
  inputs."pgxcrown-v0_4_2".type  = "github";
  inputs."pgxcrown-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_3".dir   = "v0_4_3";
  inputs."pgxcrown-v0_4_3".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_4_3".ref   = "master";
  inputs."pgxcrown-v0_4_3".repo  = "pgxcrown";
  inputs."pgxcrown-v0_4_3".type  = "github";
  inputs."pgxcrown-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_4".dir   = "v0_4_4";
  inputs."pgxcrown-v0_4_4".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_4_4".ref   = "master";
  inputs."pgxcrown-v0_4_4".repo  = "pgxcrown";
  inputs."pgxcrown-v0_4_4".type  = "github";
  inputs."pgxcrown-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_4_5".dir   = "v0_4_5";
  inputs."pgxcrown-v0_4_5".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_4_5".ref   = "master";
  inputs."pgxcrown-v0_4_5".repo  = "pgxcrown";
  inputs."pgxcrown-v0_4_5".type  = "github";
  inputs."pgxcrown-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_5_0".dir   = "v0_5_0";
  inputs."pgxcrown-v0_5_0".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_5_0".ref   = "master";
  inputs."pgxcrown-v0_5_0".repo  = "pgxcrown";
  inputs."pgxcrown-v0_5_0".type  = "github";
  inputs."pgxcrown-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_5_1".dir   = "v0_5_1";
  inputs."pgxcrown-v0_5_1".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_5_1".ref   = "master";
  inputs."pgxcrown-v0_5_1".repo  = "pgxcrown";
  inputs."pgxcrown-v0_5_1".type  = "github";
  inputs."pgxcrown-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pgxcrown-v0_5_2".dir   = "v0_5_2";
  inputs."pgxcrown-v0_5_2".owner = "nim-nix-pkgs";
  inputs."pgxcrown-v0_5_2".ref   = "master";
  inputs."pgxcrown-v0_5_2".repo  = "pgxcrown";
  inputs."pgxcrown-v0_5_2".type  = "github";
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