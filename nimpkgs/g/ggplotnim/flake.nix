{
  description = ''A port of ggplot2 for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ggplotnim-master".dir   = "master";
  inputs."ggplotnim-master".owner = "nim-nix-pkgs";
  inputs."ggplotnim-master".ref   = "master";
  inputs."ggplotnim-master".repo  = "ggplotnim";
  inputs."ggplotnim-master".type  = "github";
  inputs."ggplotnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_2".dir   = "v0_1_2";
  inputs."ggplotnim-v0_1_2".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_1_2".ref   = "master";
  inputs."ggplotnim-v0_1_2".repo  = "ggplotnim";
  inputs."ggplotnim-v0_1_2".type  = "github";
  inputs."ggplotnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_3".dir   = "v0_1_3";
  inputs."ggplotnim-v0_1_3".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_1_3".ref   = "master";
  inputs."ggplotnim-v0_1_3".repo  = "ggplotnim";
  inputs."ggplotnim-v0_1_3".type  = "github";
  inputs."ggplotnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_4".dir   = "v0_1_4";
  inputs."ggplotnim-v0_1_4".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_1_4".ref   = "master";
  inputs."ggplotnim-v0_1_4".repo  = "ggplotnim";
  inputs."ggplotnim-v0_1_4".type  = "github";
  inputs."ggplotnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_5".dir   = "v0_1_5";
  inputs."ggplotnim-v0_1_5".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_1_5".ref   = "master";
  inputs."ggplotnim-v0_1_5".repo  = "ggplotnim";
  inputs."ggplotnim-v0_1_5".type  = "github";
  inputs."ggplotnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_1_6".dir   = "v0_1_6";
  inputs."ggplotnim-v0_1_6".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_1_6".ref   = "master";
  inputs."ggplotnim-v0_1_6".repo  = "ggplotnim";
  inputs."ggplotnim-v0_1_6".type  = "github";
  inputs."ggplotnim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_0".dir   = "v0_2_0";
  inputs."ggplotnim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_0".ref   = "master";
  inputs."ggplotnim-v0_2_0".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_0".type  = "github";
  inputs."ggplotnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_1".dir   = "v0_2_1";
  inputs."ggplotnim-v0_2_1".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_1".ref   = "master";
  inputs."ggplotnim-v0_2_1".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_1".type  = "github";
  inputs."ggplotnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_10".dir   = "v0_2_10";
  inputs."ggplotnim-v0_2_10".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_10".ref   = "master";
  inputs."ggplotnim-v0_2_10".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_10".type  = "github";
  inputs."ggplotnim-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_11".dir   = "v0_2_11";
  inputs."ggplotnim-v0_2_11".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_11".ref   = "master";
  inputs."ggplotnim-v0_2_11".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_11".type  = "github";
  inputs."ggplotnim-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_12".dir   = "v0_2_12";
  inputs."ggplotnim-v0_2_12".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_12".ref   = "master";
  inputs."ggplotnim-v0_2_12".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_12".type  = "github";
  inputs."ggplotnim-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_13".dir   = "v0_2_13";
  inputs."ggplotnim-v0_2_13".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_13".ref   = "master";
  inputs."ggplotnim-v0_2_13".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_13".type  = "github";
  inputs."ggplotnim-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_14".dir   = "v0_2_14";
  inputs."ggplotnim-v0_2_14".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_14".ref   = "master";
  inputs."ggplotnim-v0_2_14".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_14".type  = "github";
  inputs."ggplotnim-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_15".dir   = "v0_2_15";
  inputs."ggplotnim-v0_2_15".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_15".ref   = "master";
  inputs."ggplotnim-v0_2_15".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_15".type  = "github";
  inputs."ggplotnim-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_16".dir   = "v0_2_16";
  inputs."ggplotnim-v0_2_16".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_16".ref   = "master";
  inputs."ggplotnim-v0_2_16".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_16".type  = "github";
  inputs."ggplotnim-v0_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_17".dir   = "v0_2_17";
  inputs."ggplotnim-v0_2_17".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_17".ref   = "master";
  inputs."ggplotnim-v0_2_17".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_17".type  = "github";
  inputs."ggplotnim-v0_2_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_18".dir   = "v0_2_18";
  inputs."ggplotnim-v0_2_18".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_18".ref   = "master";
  inputs."ggplotnim-v0_2_18".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_18".type  = "github";
  inputs."ggplotnim-v0_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_19".dir   = "v0_2_19";
  inputs."ggplotnim-v0_2_19".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_19".ref   = "master";
  inputs."ggplotnim-v0_2_19".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_19".type  = "github";
  inputs."ggplotnim-v0_2_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_2".dir   = "v0_2_2";
  inputs."ggplotnim-v0_2_2".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_2".ref   = "master";
  inputs."ggplotnim-v0_2_2".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_2".type  = "github";
  inputs."ggplotnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_20".dir   = "v0_2_20";
  inputs."ggplotnim-v0_2_20".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_20".ref   = "master";
  inputs."ggplotnim-v0_2_20".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_20".type  = "github";
  inputs."ggplotnim-v0_2_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_3".dir   = "v0_2_3";
  inputs."ggplotnim-v0_2_3".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_3".ref   = "master";
  inputs."ggplotnim-v0_2_3".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_3".type  = "github";
  inputs."ggplotnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_4".dir   = "v0_2_4";
  inputs."ggplotnim-v0_2_4".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_4".ref   = "master";
  inputs."ggplotnim-v0_2_4".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_4".type  = "github";
  inputs."ggplotnim-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_5".dir   = "v0_2_5";
  inputs."ggplotnim-v0_2_5".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_5".ref   = "master";
  inputs."ggplotnim-v0_2_5".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_5".type  = "github";
  inputs."ggplotnim-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_6".dir   = "v0_2_6";
  inputs."ggplotnim-v0_2_6".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_6".ref   = "master";
  inputs."ggplotnim-v0_2_6".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_6".type  = "github";
  inputs."ggplotnim-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_7".dir   = "v0_2_7";
  inputs."ggplotnim-v0_2_7".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_7".ref   = "master";
  inputs."ggplotnim-v0_2_7".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_7".type  = "github";
  inputs."ggplotnim-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_8".dir   = "v0_2_8";
  inputs."ggplotnim-v0_2_8".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_8".ref   = "master";
  inputs."ggplotnim-v0_2_8".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_8".type  = "github";
  inputs."ggplotnim-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_2_9".dir   = "v0_2_9";
  inputs."ggplotnim-v0_2_9".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_2_9".ref   = "master";
  inputs."ggplotnim-v0_2_9".repo  = "ggplotnim";
  inputs."ggplotnim-v0_2_9".type  = "github";
  inputs."ggplotnim-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_0".dir   = "v0_3_0";
  inputs."ggplotnim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_0".ref   = "master";
  inputs."ggplotnim-v0_3_0".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_0".type  = "github";
  inputs."ggplotnim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_1".dir   = "v0_3_1";
  inputs."ggplotnim-v0_3_1".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_1".ref   = "master";
  inputs."ggplotnim-v0_3_1".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_1".type  = "github";
  inputs."ggplotnim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_10".dir   = "v0_3_10";
  inputs."ggplotnim-v0_3_10".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_10".ref   = "master";
  inputs."ggplotnim-v0_3_10".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_10".type  = "github";
  inputs."ggplotnim-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_11".dir   = "v0_3_11";
  inputs."ggplotnim-v0_3_11".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_11".ref   = "master";
  inputs."ggplotnim-v0_3_11".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_11".type  = "github";
  inputs."ggplotnim-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_12".dir   = "v0_3_12";
  inputs."ggplotnim-v0_3_12".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_12".ref   = "master";
  inputs."ggplotnim-v0_3_12".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_12".type  = "github";
  inputs."ggplotnim-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_13".dir   = "v0_3_13";
  inputs."ggplotnim-v0_3_13".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_13".ref   = "master";
  inputs."ggplotnim-v0_3_13".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_13".type  = "github";
  inputs."ggplotnim-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_14".dir   = "v0_3_14";
  inputs."ggplotnim-v0_3_14".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_14".ref   = "master";
  inputs."ggplotnim-v0_3_14".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_14".type  = "github";
  inputs."ggplotnim-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_15".dir   = "v0_3_15";
  inputs."ggplotnim-v0_3_15".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_15".ref   = "master";
  inputs."ggplotnim-v0_3_15".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_15".type  = "github";
  inputs."ggplotnim-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_16".dir   = "v0_3_16";
  inputs."ggplotnim-v0_3_16".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_16".ref   = "master";
  inputs."ggplotnim-v0_3_16".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_16".type  = "github";
  inputs."ggplotnim-v0_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_17".dir   = "v0_3_17";
  inputs."ggplotnim-v0_3_17".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_17".ref   = "master";
  inputs."ggplotnim-v0_3_17".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_17".type  = "github";
  inputs."ggplotnim-v0_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_18".dir   = "v0_3_18";
  inputs."ggplotnim-v0_3_18".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_18".ref   = "master";
  inputs."ggplotnim-v0_3_18".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_18".type  = "github";
  inputs."ggplotnim-v0_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_2".dir   = "v0_3_2";
  inputs."ggplotnim-v0_3_2".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_2".ref   = "master";
  inputs."ggplotnim-v0_3_2".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_2".type  = "github";
  inputs."ggplotnim-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_20".dir   = "v0_3_20";
  inputs."ggplotnim-v0_3_20".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_20".ref   = "master";
  inputs."ggplotnim-v0_3_20".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_20".type  = "github";
  inputs."ggplotnim-v0_3_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_21".dir   = "v0_3_21";
  inputs."ggplotnim-v0_3_21".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_21".ref   = "master";
  inputs."ggplotnim-v0_3_21".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_21".type  = "github";
  inputs."ggplotnim-v0_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_22".dir   = "v0_3_22";
  inputs."ggplotnim-v0_3_22".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_22".ref   = "master";
  inputs."ggplotnim-v0_3_22".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_22".type  = "github";
  inputs."ggplotnim-v0_3_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_24".dir   = "v0_3_24";
  inputs."ggplotnim-v0_3_24".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_24".ref   = "master";
  inputs."ggplotnim-v0_3_24".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_24".type  = "github";
  inputs."ggplotnim-v0_3_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_25".dir   = "v0_3_25";
  inputs."ggplotnim-v0_3_25".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_25".ref   = "master";
  inputs."ggplotnim-v0_3_25".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_25".type  = "github";
  inputs."ggplotnim-v0_3_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_26".dir   = "v0_3_26";
  inputs."ggplotnim-v0_3_26".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_26".ref   = "master";
  inputs."ggplotnim-v0_3_26".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_26".type  = "github";
  inputs."ggplotnim-v0_3_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_3".dir   = "v0_3_3";
  inputs."ggplotnim-v0_3_3".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_3".ref   = "master";
  inputs."ggplotnim-v0_3_3".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_3".type  = "github";
  inputs."ggplotnim-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_4".dir   = "v0_3_4";
  inputs."ggplotnim-v0_3_4".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_4".ref   = "master";
  inputs."ggplotnim-v0_3_4".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_4".type  = "github";
  inputs."ggplotnim-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_5".dir   = "v0_3_5";
  inputs."ggplotnim-v0_3_5".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_5".ref   = "master";
  inputs."ggplotnim-v0_3_5".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_5".type  = "github";
  inputs."ggplotnim-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_6".dir   = "v0_3_6";
  inputs."ggplotnim-v0_3_6".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_6".ref   = "master";
  inputs."ggplotnim-v0_3_6".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_6".type  = "github";
  inputs."ggplotnim-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_7".dir   = "v0_3_7";
  inputs."ggplotnim-v0_3_7".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_7".ref   = "master";
  inputs."ggplotnim-v0_3_7".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_7".type  = "github";
  inputs."ggplotnim-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_8".dir   = "v0_3_8";
  inputs."ggplotnim-v0_3_8".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_8".ref   = "master";
  inputs."ggplotnim-v0_3_8".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_8".type  = "github";
  inputs."ggplotnim-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_3_9".dir   = "v0_3_9";
  inputs."ggplotnim-v0_3_9".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_3_9".ref   = "master";
  inputs."ggplotnim-v0_3_9".repo  = "ggplotnim";
  inputs."ggplotnim-v0_3_9".type  = "github";
  inputs."ggplotnim-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_0".dir   = "v0_4_0";
  inputs."ggplotnim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_0".ref   = "master";
  inputs."ggplotnim-v0_4_0".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_0".type  = "github";
  inputs."ggplotnim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_1".dir   = "v0_4_1";
  inputs."ggplotnim-v0_4_1".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_1".ref   = "master";
  inputs."ggplotnim-v0_4_1".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_1".type  = "github";
  inputs."ggplotnim-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_10".dir   = "v0_4_10";
  inputs."ggplotnim-v0_4_10".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_10".ref   = "master";
  inputs."ggplotnim-v0_4_10".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_10".type  = "github";
  inputs."ggplotnim-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_11".dir   = "v0_4_11";
  inputs."ggplotnim-v0_4_11".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_11".ref   = "master";
  inputs."ggplotnim-v0_4_11".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_11".type  = "github";
  inputs."ggplotnim-v0_4_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_2".dir   = "v0_4_2";
  inputs."ggplotnim-v0_4_2".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_2".ref   = "master";
  inputs."ggplotnim-v0_4_2".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_2".type  = "github";
  inputs."ggplotnim-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_3".dir   = "v0_4_3";
  inputs."ggplotnim-v0_4_3".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_3".ref   = "master";
  inputs."ggplotnim-v0_4_3".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_3".type  = "github";
  inputs."ggplotnim-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_5".dir   = "v0_4_5";
  inputs."ggplotnim-v0_4_5".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_5".ref   = "master";
  inputs."ggplotnim-v0_4_5".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_5".type  = "github";
  inputs."ggplotnim-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_6".dir   = "v0_4_6";
  inputs."ggplotnim-v0_4_6".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_6".ref   = "master";
  inputs."ggplotnim-v0_4_6".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_6".type  = "github";
  inputs."ggplotnim-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_7".dir   = "v0_4_7";
  inputs."ggplotnim-v0_4_7".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_7".ref   = "master";
  inputs."ggplotnim-v0_4_7".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_7".type  = "github";
  inputs."ggplotnim-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_8".dir   = "v0_4_8";
  inputs."ggplotnim-v0_4_8".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_8".ref   = "master";
  inputs."ggplotnim-v0_4_8".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_8".type  = "github";
  inputs."ggplotnim-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_4_9".dir   = "v0_4_9";
  inputs."ggplotnim-v0_4_9".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_4_9".ref   = "master";
  inputs."ggplotnim-v0_4_9".repo  = "ggplotnim";
  inputs."ggplotnim-v0_4_9".type  = "github";
  inputs."ggplotnim-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_5_0".dir   = "v0_5_0";
  inputs."ggplotnim-v0_5_0".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_5_0".ref   = "master";
  inputs."ggplotnim-v0_5_0".repo  = "ggplotnim";
  inputs."ggplotnim-v0_5_0".type  = "github";
  inputs."ggplotnim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_5_1".dir   = "v0_5_1";
  inputs."ggplotnim-v0_5_1".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_5_1".ref   = "master";
  inputs."ggplotnim-v0_5_1".repo  = "ggplotnim";
  inputs."ggplotnim-v0_5_1".type  = "github";
  inputs."ggplotnim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_5_2".dir   = "v0_5_2";
  inputs."ggplotnim-v0_5_2".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_5_2".ref   = "master";
  inputs."ggplotnim-v0_5_2".repo  = "ggplotnim";
  inputs."ggplotnim-v0_5_2".type  = "github";
  inputs."ggplotnim-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim-v0_5_3".dir   = "v0_5_3";
  inputs."ggplotnim-v0_5_3".owner = "nim-nix-pkgs";
  inputs."ggplotnim-v0_5_3".ref   = "master";
  inputs."ggplotnim-v0_5_3".repo  = "ggplotnim";
  inputs."ggplotnim-v0_5_3".type  = "github";
  inputs."ggplotnim-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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