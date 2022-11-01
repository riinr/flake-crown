{
  description = ''Infer & generate command-line interace/option/argument parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cligen-master".dir   = "master";
  inputs."cligen-master".owner = "nim-nix-pkgs";
  inputs."cligen-master".ref   = "master";
  inputs."cligen-master".repo  = "cligen";
  inputs."cligen-master".type  = "github";
  inputs."cligen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-0_9_6".dir   = "0_9_6";
  inputs."cligen-0_9_6".owner = "nim-nix-pkgs";
  inputs."cligen-0_9_6".ref   = "master";
  inputs."cligen-0_9_6".repo  = "cligen";
  inputs."cligen-0_9_6".type  = "github";
  inputs."cligen-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_10".dir   = "v0_9_10";
  inputs."cligen-v0_9_10".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_10".ref   = "master";
  inputs."cligen-v0_9_10".repo  = "cligen";
  inputs."cligen-v0_9_10".type  = "github";
  inputs."cligen-v0_9_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_11".dir   = "v0_9_11";
  inputs."cligen-v0_9_11".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_11".ref   = "master";
  inputs."cligen-v0_9_11".repo  = "cligen";
  inputs."cligen-v0_9_11".type  = "github";
  inputs."cligen-v0_9_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_12".dir   = "v0_9_12";
  inputs."cligen-v0_9_12".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_12".ref   = "master";
  inputs."cligen-v0_9_12".repo  = "cligen";
  inputs."cligen-v0_9_12".type  = "github";
  inputs."cligen-v0_9_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_13".dir   = "v0_9_13";
  inputs."cligen-v0_9_13".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_13".ref   = "master";
  inputs."cligen-v0_9_13".repo  = "cligen";
  inputs."cligen-v0_9_13".type  = "github";
  inputs."cligen-v0_9_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_15".dir   = "v0_9_15";
  inputs."cligen-v0_9_15".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_15".ref   = "master";
  inputs."cligen-v0_9_15".repo  = "cligen";
  inputs."cligen-v0_9_15".type  = "github";
  inputs."cligen-v0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_16".dir   = "v0_9_16";
  inputs."cligen-v0_9_16".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_16".ref   = "master";
  inputs."cligen-v0_9_16".repo  = "cligen";
  inputs."cligen-v0_9_16".type  = "github";
  inputs."cligen-v0_9_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_17".dir   = "v0_9_17";
  inputs."cligen-v0_9_17".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_17".ref   = "master";
  inputs."cligen-v0_9_17".repo  = "cligen";
  inputs."cligen-v0_9_17".type  = "github";
  inputs."cligen-v0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_18".dir   = "v0_9_18";
  inputs."cligen-v0_9_18".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_18".ref   = "master";
  inputs."cligen-v0_9_18".repo  = "cligen";
  inputs."cligen-v0_9_18".type  = "github";
  inputs."cligen-v0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_19".dir   = "v0_9_19";
  inputs."cligen-v0_9_19".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_19".ref   = "master";
  inputs."cligen-v0_9_19".repo  = "cligen";
  inputs."cligen-v0_9_19".type  = "github";
  inputs."cligen-v0_9_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_22".dir   = "v0_9_22";
  inputs."cligen-v0_9_22".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_22".ref   = "master";
  inputs."cligen-v0_9_22".repo  = "cligen";
  inputs."cligen-v0_9_22".type  = "github";
  inputs."cligen-v0_9_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_23".dir   = "v0_9_23";
  inputs."cligen-v0_9_23".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_23".ref   = "master";
  inputs."cligen-v0_9_23".repo  = "cligen";
  inputs."cligen-v0_9_23".type  = "github";
  inputs."cligen-v0_9_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_24".dir   = "v0_9_24";
  inputs."cligen-v0_9_24".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_24".ref   = "master";
  inputs."cligen-v0_9_24".repo  = "cligen";
  inputs."cligen-v0_9_24".type  = "github";
  inputs."cligen-v0_9_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_25".dir   = "v0_9_25";
  inputs."cligen-v0_9_25".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_25".ref   = "master";
  inputs."cligen-v0_9_25".repo  = "cligen";
  inputs."cligen-v0_9_25".type  = "github";
  inputs."cligen-v0_9_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_26".dir   = "v0_9_26";
  inputs."cligen-v0_9_26".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_26".ref   = "master";
  inputs."cligen-v0_9_26".repo  = "cligen";
  inputs."cligen-v0_9_26".type  = "github";
  inputs."cligen-v0_9_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_27".dir   = "v0_9_27";
  inputs."cligen-v0_9_27".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_27".ref   = "master";
  inputs."cligen-v0_9_27".repo  = "cligen";
  inputs."cligen-v0_9_27".type  = "github";
  inputs."cligen-v0_9_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_28".dir   = "v0_9_28";
  inputs."cligen-v0_9_28".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_28".ref   = "master";
  inputs."cligen-v0_9_28".repo  = "cligen";
  inputs."cligen-v0_9_28".type  = "github";
  inputs."cligen-v0_9_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_29".dir   = "v0_9_29";
  inputs."cligen-v0_9_29".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_29".ref   = "master";
  inputs."cligen-v0_9_29".repo  = "cligen";
  inputs."cligen-v0_9_29".type  = "github";
  inputs."cligen-v0_9_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_30".dir   = "v0_9_30";
  inputs."cligen-v0_9_30".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_30".ref   = "master";
  inputs."cligen-v0_9_30".repo  = "cligen";
  inputs."cligen-v0_9_30".type  = "github";
  inputs."cligen-v0_9_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_31".dir   = "v0_9_31";
  inputs."cligen-v0_9_31".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_31".ref   = "master";
  inputs."cligen-v0_9_31".repo  = "cligen";
  inputs."cligen-v0_9_31".type  = "github";
  inputs."cligen-v0_9_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_32".dir   = "v0_9_32";
  inputs."cligen-v0_9_32".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_32".ref   = "master";
  inputs."cligen-v0_9_32".repo  = "cligen";
  inputs."cligen-v0_9_32".type  = "github";
  inputs."cligen-v0_9_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_33".dir   = "v0_9_33";
  inputs."cligen-v0_9_33".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_33".ref   = "master";
  inputs."cligen-v0_9_33".repo  = "cligen";
  inputs."cligen-v0_9_33".type  = "github";
  inputs."cligen-v0_9_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_34".dir   = "v0_9_34";
  inputs."cligen-v0_9_34".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_34".ref   = "master";
  inputs."cligen-v0_9_34".repo  = "cligen";
  inputs."cligen-v0_9_34".type  = "github";
  inputs."cligen-v0_9_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_35".dir   = "v0_9_35";
  inputs."cligen-v0_9_35".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_35".ref   = "master";
  inputs."cligen-v0_9_35".repo  = "cligen";
  inputs."cligen-v0_9_35".type  = "github";
  inputs."cligen-v0_9_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_36".dir   = "v0_9_36";
  inputs."cligen-v0_9_36".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_36".ref   = "master";
  inputs."cligen-v0_9_36".repo  = "cligen";
  inputs."cligen-v0_9_36".type  = "github";
  inputs."cligen-v0_9_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_37".dir   = "v0_9_37";
  inputs."cligen-v0_9_37".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_37".ref   = "master";
  inputs."cligen-v0_9_37".repo  = "cligen";
  inputs."cligen-v0_9_37".type  = "github";
  inputs."cligen-v0_9_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_38".dir   = "v0_9_38";
  inputs."cligen-v0_9_38".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_38".ref   = "master";
  inputs."cligen-v0_9_38".repo  = "cligen";
  inputs."cligen-v0_9_38".type  = "github";
  inputs."cligen-v0_9_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_39".dir   = "v0_9_39";
  inputs."cligen-v0_9_39".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_39".ref   = "master";
  inputs."cligen-v0_9_39".repo  = "cligen";
  inputs."cligen-v0_9_39".type  = "github";
  inputs."cligen-v0_9_39".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_39".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_4".dir   = "v0_9_4";
  inputs."cligen-v0_9_4".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_4".ref   = "master";
  inputs."cligen-v0_9_4".repo  = "cligen";
  inputs."cligen-v0_9_4".type  = "github";
  inputs."cligen-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_40".dir   = "v0_9_40";
  inputs."cligen-v0_9_40".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_40".ref   = "master";
  inputs."cligen-v0_9_40".repo  = "cligen";
  inputs."cligen-v0_9_40".type  = "github";
  inputs."cligen-v0_9_40".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_40".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_41".dir   = "v0_9_41";
  inputs."cligen-v0_9_41".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_41".ref   = "master";
  inputs."cligen-v0_9_41".repo  = "cligen";
  inputs."cligen-v0_9_41".type  = "github";
  inputs."cligen-v0_9_41".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_41".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_42".dir   = "v0_9_42";
  inputs."cligen-v0_9_42".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_42".ref   = "master";
  inputs."cligen-v0_9_42".repo  = "cligen";
  inputs."cligen-v0_9_42".type  = "github";
  inputs."cligen-v0_9_42".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_42".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_43".dir   = "v0_9_43";
  inputs."cligen-v0_9_43".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_43".ref   = "master";
  inputs."cligen-v0_9_43".repo  = "cligen";
  inputs."cligen-v0_9_43".type  = "github";
  inputs."cligen-v0_9_43".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_43".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_44".dir   = "v0_9_44";
  inputs."cligen-v0_9_44".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_44".ref   = "master";
  inputs."cligen-v0_9_44".repo  = "cligen";
  inputs."cligen-v0_9_44".type  = "github";
  inputs."cligen-v0_9_44".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_44".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_45".dir   = "v0_9_45";
  inputs."cligen-v0_9_45".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_45".ref   = "master";
  inputs."cligen-v0_9_45".repo  = "cligen";
  inputs."cligen-v0_9_45".type  = "github";
  inputs."cligen-v0_9_45".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_45".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_46".dir   = "v0_9_46";
  inputs."cligen-v0_9_46".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_46".ref   = "master";
  inputs."cligen-v0_9_46".repo  = "cligen";
  inputs."cligen-v0_9_46".type  = "github";
  inputs."cligen-v0_9_46".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_46".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_47".dir   = "v0_9_47";
  inputs."cligen-v0_9_47".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_47".ref   = "master";
  inputs."cligen-v0_9_47".repo  = "cligen";
  inputs."cligen-v0_9_47".type  = "github";
  inputs."cligen-v0_9_47".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_47".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v0_9_9".dir   = "v0_9_9";
  inputs."cligen-v0_9_9".owner = "nim-nix-pkgs";
  inputs."cligen-v0_9_9".ref   = "master";
  inputs."cligen-v0_9_9".repo  = "cligen";
  inputs."cligen-v0_9_9".type  = "github";
  inputs."cligen-v0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_0_0".dir   = "v1_0_0";
  inputs."cligen-v1_0_0".owner = "nim-nix-pkgs";
  inputs."cligen-v1_0_0".ref   = "master";
  inputs."cligen-v1_0_0".repo  = "cligen";
  inputs."cligen-v1_0_0".type  = "github";
  inputs."cligen-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_1_0".dir   = "v1_1_0";
  inputs."cligen-v1_1_0".owner = "nim-nix-pkgs";
  inputs."cligen-v1_1_0".ref   = "master";
  inputs."cligen-v1_1_0".repo  = "cligen";
  inputs."cligen-v1_1_0".type  = "github";
  inputs."cligen-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_2_0".dir   = "v1_2_0";
  inputs."cligen-v1_2_0".owner = "nim-nix-pkgs";
  inputs."cligen-v1_2_0".ref   = "master";
  inputs."cligen-v1_2_0".repo  = "cligen";
  inputs."cligen-v1_2_0".type  = "github";
  inputs."cligen-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_2_1".dir   = "v1_2_1";
  inputs."cligen-v1_2_1".owner = "nim-nix-pkgs";
  inputs."cligen-v1_2_1".ref   = "master";
  inputs."cligen-v1_2_1".repo  = "cligen";
  inputs."cligen-v1_2_1".type  = "github";
  inputs."cligen-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_2_2".dir   = "v1_2_2";
  inputs."cligen-v1_2_2".owner = "nim-nix-pkgs";
  inputs."cligen-v1_2_2".ref   = "master";
  inputs."cligen-v1_2_2".repo  = "cligen";
  inputs."cligen-v1_2_2".type  = "github";
  inputs."cligen-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_3_0".dir   = "v1_3_0";
  inputs."cligen-v1_3_0".owner = "nim-nix-pkgs";
  inputs."cligen-v1_3_0".ref   = "master";
  inputs."cligen-v1_3_0".repo  = "cligen";
  inputs."cligen-v1_3_0".type  = "github";
  inputs."cligen-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_3_1".dir   = "v1_3_1";
  inputs."cligen-v1_3_1".owner = "nim-nix-pkgs";
  inputs."cligen-v1_3_1".ref   = "master";
  inputs."cligen-v1_3_1".repo  = "cligen";
  inputs."cligen-v1_3_1".type  = "github";
  inputs."cligen-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_3_2".dir   = "v1_3_2";
  inputs."cligen-v1_3_2".owner = "nim-nix-pkgs";
  inputs."cligen-v1_3_2".ref   = "master";
  inputs."cligen-v1_3_2".repo  = "cligen";
  inputs."cligen-v1_3_2".type  = "github";
  inputs."cligen-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_4_0".dir   = "v1_4_0";
  inputs."cligen-v1_4_0".owner = "nim-nix-pkgs";
  inputs."cligen-v1_4_0".ref   = "master";
  inputs."cligen-v1_4_0".repo  = "cligen";
  inputs."cligen-v1_4_0".type  = "github";
  inputs."cligen-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_4_1".dir   = "v1_4_1";
  inputs."cligen-v1_4_1".owner = "nim-nix-pkgs";
  inputs."cligen-v1_4_1".ref   = "master";
  inputs."cligen-v1_4_1".repo  = "cligen";
  inputs."cligen-v1_4_1".type  = "github";
  inputs."cligen-v1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_0".dir   = "v1_5_0";
  inputs."cligen-v1_5_0".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_0".ref   = "master";
  inputs."cligen-v1_5_0".repo  = "cligen";
  inputs."cligen-v1_5_0".type  = "github";
  inputs."cligen-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_1".dir   = "v1_5_1";
  inputs."cligen-v1_5_1".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_1".ref   = "master";
  inputs."cligen-v1_5_1".repo  = "cligen";
  inputs."cligen-v1_5_1".type  = "github";
  inputs."cligen-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_10".dir   = "v1_5_10";
  inputs."cligen-v1_5_10".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_10".ref   = "master";
  inputs."cligen-v1_5_10".repo  = "cligen";
  inputs."cligen-v1_5_10".type  = "github";
  inputs."cligen-v1_5_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_11".dir   = "v1_5_11";
  inputs."cligen-v1_5_11".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_11".ref   = "master";
  inputs."cligen-v1_5_11".repo  = "cligen";
  inputs."cligen-v1_5_11".type  = "github";
  inputs."cligen-v1_5_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_12".dir   = "v1_5_12";
  inputs."cligen-v1_5_12".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_12".ref   = "master";
  inputs."cligen-v1_5_12".repo  = "cligen";
  inputs."cligen-v1_5_12".type  = "github";
  inputs."cligen-v1_5_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_13".dir   = "v1_5_13";
  inputs."cligen-v1_5_13".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_13".ref   = "master";
  inputs."cligen-v1_5_13".repo  = "cligen";
  inputs."cligen-v1_5_13".type  = "github";
  inputs."cligen-v1_5_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_14".dir   = "v1_5_14";
  inputs."cligen-v1_5_14".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_14".ref   = "master";
  inputs."cligen-v1_5_14".repo  = "cligen";
  inputs."cligen-v1_5_14".type  = "github";
  inputs."cligen-v1_5_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_15".dir   = "v1_5_15";
  inputs."cligen-v1_5_15".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_15".ref   = "master";
  inputs."cligen-v1_5_15".repo  = "cligen";
  inputs."cligen-v1_5_15".type  = "github";
  inputs."cligen-v1_5_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_16".dir   = "v1_5_16";
  inputs."cligen-v1_5_16".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_16".ref   = "master";
  inputs."cligen-v1_5_16".repo  = "cligen";
  inputs."cligen-v1_5_16".type  = "github";
  inputs."cligen-v1_5_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_17".dir   = "v1_5_17";
  inputs."cligen-v1_5_17".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_17".ref   = "master";
  inputs."cligen-v1_5_17".repo  = "cligen";
  inputs."cligen-v1_5_17".type  = "github";
  inputs."cligen-v1_5_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_18".dir   = "v1_5_18";
  inputs."cligen-v1_5_18".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_18".ref   = "master";
  inputs."cligen-v1_5_18".repo  = "cligen";
  inputs."cligen-v1_5_18".type  = "github";
  inputs."cligen-v1_5_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_19".dir   = "v1_5_19";
  inputs."cligen-v1_5_19".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_19".ref   = "master";
  inputs."cligen-v1_5_19".repo  = "cligen";
  inputs."cligen-v1_5_19".type  = "github";
  inputs."cligen-v1_5_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_2".dir   = "v1_5_2";
  inputs."cligen-v1_5_2".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_2".ref   = "master";
  inputs."cligen-v1_5_2".repo  = "cligen";
  inputs."cligen-v1_5_2".type  = "github";
  inputs."cligen-v1_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_20".dir   = "v1_5_20";
  inputs."cligen-v1_5_20".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_20".ref   = "master";
  inputs."cligen-v1_5_20".repo  = "cligen";
  inputs."cligen-v1_5_20".type  = "github";
  inputs."cligen-v1_5_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_21".dir   = "v1_5_21";
  inputs."cligen-v1_5_21".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_21".ref   = "master";
  inputs."cligen-v1_5_21".repo  = "cligen";
  inputs."cligen-v1_5_21".type  = "github";
  inputs."cligen-v1_5_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_22".dir   = "v1_5_22";
  inputs."cligen-v1_5_22".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_22".ref   = "master";
  inputs."cligen-v1_5_22".repo  = "cligen";
  inputs."cligen-v1_5_22".type  = "github";
  inputs."cligen-v1_5_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_23".dir   = "v1_5_23";
  inputs."cligen-v1_5_23".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_23".ref   = "master";
  inputs."cligen-v1_5_23".repo  = "cligen";
  inputs."cligen-v1_5_23".type  = "github";
  inputs."cligen-v1_5_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_24".dir   = "v1_5_24";
  inputs."cligen-v1_5_24".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_24".ref   = "master";
  inputs."cligen-v1_5_24".repo  = "cligen";
  inputs."cligen-v1_5_24".type  = "github";
  inputs."cligen-v1_5_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_25".dir   = "v1_5_25";
  inputs."cligen-v1_5_25".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_25".ref   = "master";
  inputs."cligen-v1_5_25".repo  = "cligen";
  inputs."cligen-v1_5_25".type  = "github";
  inputs."cligen-v1_5_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_26".dir   = "v1_5_26";
  inputs."cligen-v1_5_26".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_26".ref   = "master";
  inputs."cligen-v1_5_26".repo  = "cligen";
  inputs."cligen-v1_5_26".type  = "github";
  inputs."cligen-v1_5_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_27".dir   = "v1_5_27";
  inputs."cligen-v1_5_27".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_27".ref   = "master";
  inputs."cligen-v1_5_27".repo  = "cligen";
  inputs."cligen-v1_5_27".type  = "github";
  inputs."cligen-v1_5_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_28".dir   = "v1_5_28";
  inputs."cligen-v1_5_28".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_28".ref   = "master";
  inputs."cligen-v1_5_28".repo  = "cligen";
  inputs."cligen-v1_5_28".type  = "github";
  inputs."cligen-v1_5_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_29".dir   = "v1_5_29";
  inputs."cligen-v1_5_29".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_29".ref   = "master";
  inputs."cligen-v1_5_29".repo  = "cligen";
  inputs."cligen-v1_5_29".type  = "github";
  inputs."cligen-v1_5_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_3".dir   = "v1_5_3";
  inputs."cligen-v1_5_3".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_3".ref   = "master";
  inputs."cligen-v1_5_3".repo  = "cligen";
  inputs."cligen-v1_5_3".type  = "github";
  inputs."cligen-v1_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_30".dir   = "v1_5_30";
  inputs."cligen-v1_5_30".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_30".ref   = "master";
  inputs."cligen-v1_5_30".repo  = "cligen";
  inputs."cligen-v1_5_30".type  = "github";
  inputs."cligen-v1_5_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_31".dir   = "v1_5_31";
  inputs."cligen-v1_5_31".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_31".ref   = "master";
  inputs."cligen-v1_5_31".repo  = "cligen";
  inputs."cligen-v1_5_31".type  = "github";
  inputs."cligen-v1_5_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_4".dir   = "v1_5_4";
  inputs."cligen-v1_5_4".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_4".ref   = "master";
  inputs."cligen-v1_5_4".repo  = "cligen";
  inputs."cligen-v1_5_4".type  = "github";
  inputs."cligen-v1_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_5".dir   = "v1_5_5";
  inputs."cligen-v1_5_5".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_5".ref   = "master";
  inputs."cligen-v1_5_5".repo  = "cligen";
  inputs."cligen-v1_5_5".type  = "github";
  inputs."cligen-v1_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_6".dir   = "v1_5_6";
  inputs."cligen-v1_5_6".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_6".ref   = "master";
  inputs."cligen-v1_5_6".repo  = "cligen";
  inputs."cligen-v1_5_6".type  = "github";
  inputs."cligen-v1_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_7".dir   = "v1_5_7";
  inputs."cligen-v1_5_7".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_7".ref   = "master";
  inputs."cligen-v1_5_7".repo  = "cligen";
  inputs."cligen-v1_5_7".type  = "github";
  inputs."cligen-v1_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_8".dir   = "v1_5_8";
  inputs."cligen-v1_5_8".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_8".ref   = "master";
  inputs."cligen-v1_5_8".repo  = "cligen";
  inputs."cligen-v1_5_8".type  = "github";
  inputs."cligen-v1_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen-v1_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen-v1_5_9".dir   = "v1_5_9";
  inputs."cligen-v1_5_9".owner = "nim-nix-pkgs";
  inputs."cligen-v1_5_9".ref   = "master";
  inputs."cligen-v1_5_9".repo  = "cligen";
  inputs."cligen-v1_5_9".type  = "github";
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