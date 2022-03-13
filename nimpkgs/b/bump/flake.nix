{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bump-master".dir   = "master";
  inputs."bump-master".owner = "nim-nix-pkgs";
  inputs."bump-master".ref   = "master";
  inputs."bump-master".repo  = "bump";
  inputs."bump-master".type  = "github";
  inputs."bump-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_0_0".dir   = "1_0_0";
  inputs."bump-1_0_0".owner = "nim-nix-pkgs";
  inputs."bump-1_0_0".ref   = "master";
  inputs."bump-1_0_0".repo  = "bump";
  inputs."bump-1_0_0".type  = "github";
  inputs."bump-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_0_1".dir   = "1_0_1";
  inputs."bump-1_0_1".owner = "nim-nix-pkgs";
  inputs."bump-1_0_1".ref   = "master";
  inputs."bump-1_0_1".repo  = "bump";
  inputs."bump-1_0_1".type  = "github";
  inputs."bump-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_0_2".dir   = "1_0_2";
  inputs."bump-1_0_2".owner = "nim-nix-pkgs";
  inputs."bump-1_0_2".ref   = "master";
  inputs."bump-1_0_2".repo  = "bump";
  inputs."bump-1_0_2".type  = "github";
  inputs."bump-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_0".dir   = "1_1_0";
  inputs."bump-1_1_0".owner = "nim-nix-pkgs";
  inputs."bump-1_1_0".ref   = "master";
  inputs."bump-1_1_0".repo  = "bump";
  inputs."bump-1_1_0".type  = "github";
  inputs."bump-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_1".dir   = "1_1_1";
  inputs."bump-1_1_1".owner = "nim-nix-pkgs";
  inputs."bump-1_1_1".ref   = "master";
  inputs."bump-1_1_1".repo  = "bump";
  inputs."bump-1_1_1".type  = "github";
  inputs."bump-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_2".dir   = "1_1_2";
  inputs."bump-1_1_2".owner = "nim-nix-pkgs";
  inputs."bump-1_1_2".ref   = "master";
  inputs."bump-1_1_2".repo  = "bump";
  inputs."bump-1_1_2".type  = "github";
  inputs."bump-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_1_3".dir   = "1_1_3";
  inputs."bump-1_1_3".owner = "nim-nix-pkgs";
  inputs."bump-1_1_3".ref   = "master";
  inputs."bump-1_1_3".repo  = "bump";
  inputs."bump-1_1_3".type  = "github";
  inputs."bump-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_2_0".dir   = "1_2_0";
  inputs."bump-1_2_0".owner = "nim-nix-pkgs";
  inputs."bump-1_2_0".ref   = "master";
  inputs."bump-1_2_0".repo  = "bump";
  inputs."bump-1_2_0".type  = "github";
  inputs."bump-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_2_1".dir   = "1_2_1";
  inputs."bump-1_2_1".owner = "nim-nix-pkgs";
  inputs."bump-1_2_1".ref   = "master";
  inputs."bump-1_2_1".repo  = "bump";
  inputs."bump-1_2_1".type  = "github";
  inputs."bump-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_0".dir   = "1_3_0";
  inputs."bump-1_3_0".owner = "nim-nix-pkgs";
  inputs."bump-1_3_0".ref   = "master";
  inputs."bump-1_3_0".repo  = "bump";
  inputs."bump-1_3_0".type  = "github";
  inputs."bump-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_1".dir   = "1_3_1";
  inputs."bump-1_3_1".owner = "nim-nix-pkgs";
  inputs."bump-1_3_1".ref   = "master";
  inputs."bump-1_3_1".repo  = "bump";
  inputs."bump-1_3_1".type  = "github";
  inputs."bump-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_2".dir   = "1_3_2";
  inputs."bump-1_3_2".owner = "nim-nix-pkgs";
  inputs."bump-1_3_2".ref   = "master";
  inputs."bump-1_3_2".repo  = "bump";
  inputs."bump-1_3_2".type  = "github";
  inputs."bump-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_3".dir   = "1_3_3";
  inputs."bump-1_3_3".owner = "nim-nix-pkgs";
  inputs."bump-1_3_3".ref   = "master";
  inputs."bump-1_3_3".repo  = "bump";
  inputs."bump-1_3_3".type  = "github";
  inputs."bump-1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_4".dir   = "1_3_4";
  inputs."bump-1_3_4".owner = "nim-nix-pkgs";
  inputs."bump-1_3_4".ref   = "master";
  inputs."bump-1_3_4".repo  = "bump";
  inputs."bump-1_3_4".type  = "github";
  inputs."bump-1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_3_5".dir   = "1_3_5";
  inputs."bump-1_3_5".owner = "nim-nix-pkgs";
  inputs."bump-1_3_5".ref   = "master";
  inputs."bump-1_3_5".repo  = "bump";
  inputs."bump-1_3_5".type  = "github";
  inputs."bump-1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_4_0".dir   = "1_4_0";
  inputs."bump-1_4_0".owner = "nim-nix-pkgs";
  inputs."bump-1_4_0".ref   = "master";
  inputs."bump-1_4_0".repo  = "bump";
  inputs."bump-1_4_0".type  = "github";
  inputs."bump-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_5_0".dir   = "1_5_0";
  inputs."bump-1_5_0".owner = "nim-nix-pkgs";
  inputs."bump-1_5_0".ref   = "master";
  inputs."bump-1_5_0".repo  = "bump";
  inputs."bump-1_5_0".type  = "github";
  inputs."bump-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_5_1".dir   = "1_5_1";
  inputs."bump-1_5_1".owner = "nim-nix-pkgs";
  inputs."bump-1_5_1".ref   = "master";
  inputs."bump-1_5_1".repo  = "bump";
  inputs."bump-1_5_1".type  = "github";
  inputs."bump-1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_6_0".dir   = "1_6_0";
  inputs."bump-1_6_0".owner = "nim-nix-pkgs";
  inputs."bump-1_6_0".ref   = "master";
  inputs."bump-1_6_0".repo  = "bump";
  inputs."bump-1_6_0".type  = "github";
  inputs."bump-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_0".dir   = "1_7_0";
  inputs."bump-1_7_0".owner = "nim-nix-pkgs";
  inputs."bump-1_7_0".ref   = "master";
  inputs."bump-1_7_0".repo  = "bump";
  inputs."bump-1_7_0".type  = "github";
  inputs."bump-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_1".dir   = "1_7_1";
  inputs."bump-1_7_1".owner = "nim-nix-pkgs";
  inputs."bump-1_7_1".ref   = "master";
  inputs."bump-1_7_1".repo  = "bump";
  inputs."bump-1_7_1".type  = "github";
  inputs."bump-1_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_10".dir   = "1_7_10";
  inputs."bump-1_7_10".owner = "nim-nix-pkgs";
  inputs."bump-1_7_10".ref   = "master";
  inputs."bump-1_7_10".repo  = "bump";
  inputs."bump-1_7_10".type  = "github";
  inputs."bump-1_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_2".dir   = "1_7_2";
  inputs."bump-1_7_2".owner = "nim-nix-pkgs";
  inputs."bump-1_7_2".ref   = "master";
  inputs."bump-1_7_2".repo  = "bump";
  inputs."bump-1_7_2".type  = "github";
  inputs."bump-1_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_3".dir   = "1_7_3";
  inputs."bump-1_7_3".owner = "nim-nix-pkgs";
  inputs."bump-1_7_3".ref   = "master";
  inputs."bump-1_7_3".repo  = "bump";
  inputs."bump-1_7_3".type  = "github";
  inputs."bump-1_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_4".dir   = "1_7_4";
  inputs."bump-1_7_4".owner = "nim-nix-pkgs";
  inputs."bump-1_7_4".ref   = "master";
  inputs."bump-1_7_4".repo  = "bump";
  inputs."bump-1_7_4".type  = "github";
  inputs."bump-1_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_5".dir   = "1_7_5";
  inputs."bump-1_7_5".owner = "nim-nix-pkgs";
  inputs."bump-1_7_5".ref   = "master";
  inputs."bump-1_7_5".repo  = "bump";
  inputs."bump-1_7_5".type  = "github";
  inputs."bump-1_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_6".dir   = "1_7_6";
  inputs."bump-1_7_6".owner = "nim-nix-pkgs";
  inputs."bump-1_7_6".ref   = "master";
  inputs."bump-1_7_6".repo  = "bump";
  inputs."bump-1_7_6".type  = "github";
  inputs."bump-1_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_7".dir   = "1_7_7";
  inputs."bump-1_7_7".owner = "nim-nix-pkgs";
  inputs."bump-1_7_7".ref   = "master";
  inputs."bump-1_7_7".repo  = "bump";
  inputs."bump-1_7_7".type  = "github";
  inputs."bump-1_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_8".dir   = "1_7_8";
  inputs."bump-1_7_8".owner = "nim-nix-pkgs";
  inputs."bump-1_7_8".ref   = "master";
  inputs."bump-1_7_8".repo  = "bump";
  inputs."bump-1_7_8".type  = "github";
  inputs."bump-1_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_7_9".dir   = "1_7_9";
  inputs."bump-1_7_9".owner = "nim-nix-pkgs";
  inputs."bump-1_7_9".ref   = "master";
  inputs."bump-1_7_9".repo  = "bump";
  inputs."bump-1_7_9".type  = "github";
  inputs."bump-1_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_0".dir   = "1_8_0";
  inputs."bump-1_8_0".owner = "nim-nix-pkgs";
  inputs."bump-1_8_0".ref   = "master";
  inputs."bump-1_8_0".repo  = "bump";
  inputs."bump-1_8_0".type  = "github";
  inputs."bump-1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_1".dir   = "1_8_1";
  inputs."bump-1_8_1".owner = "nim-nix-pkgs";
  inputs."bump-1_8_1".ref   = "master";
  inputs."bump-1_8_1".repo  = "bump";
  inputs."bump-1_8_1".type  = "github";
  inputs."bump-1_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_10".dir   = "1_8_10";
  inputs."bump-1_8_10".owner = "nim-nix-pkgs";
  inputs."bump-1_8_10".ref   = "master";
  inputs."bump-1_8_10".repo  = "bump";
  inputs."bump-1_8_10".type  = "github";
  inputs."bump-1_8_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_11".dir   = "1_8_11";
  inputs."bump-1_8_11".owner = "nim-nix-pkgs";
  inputs."bump-1_8_11".ref   = "master";
  inputs."bump-1_8_11".repo  = "bump";
  inputs."bump-1_8_11".type  = "github";
  inputs."bump-1_8_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_12".dir   = "1_8_12";
  inputs."bump-1_8_12".owner = "nim-nix-pkgs";
  inputs."bump-1_8_12".ref   = "master";
  inputs."bump-1_8_12".repo  = "bump";
  inputs."bump-1_8_12".type  = "github";
  inputs."bump-1_8_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_13".dir   = "1_8_13";
  inputs."bump-1_8_13".owner = "nim-nix-pkgs";
  inputs."bump-1_8_13".ref   = "master";
  inputs."bump-1_8_13".repo  = "bump";
  inputs."bump-1_8_13".type  = "github";
  inputs."bump-1_8_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_14".dir   = "1_8_14";
  inputs."bump-1_8_14".owner = "nim-nix-pkgs";
  inputs."bump-1_8_14".ref   = "master";
  inputs."bump-1_8_14".repo  = "bump";
  inputs."bump-1_8_14".type  = "github";
  inputs."bump-1_8_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_15".dir   = "1_8_15";
  inputs."bump-1_8_15".owner = "nim-nix-pkgs";
  inputs."bump-1_8_15".ref   = "master";
  inputs."bump-1_8_15".repo  = "bump";
  inputs."bump-1_8_15".type  = "github";
  inputs."bump-1_8_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_16".dir   = "1_8_16";
  inputs."bump-1_8_16".owner = "nim-nix-pkgs";
  inputs."bump-1_8_16".ref   = "master";
  inputs."bump-1_8_16".repo  = "bump";
  inputs."bump-1_8_16".type  = "github";
  inputs."bump-1_8_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_17".dir   = "1_8_17";
  inputs."bump-1_8_17".owner = "nim-nix-pkgs";
  inputs."bump-1_8_17".ref   = "master";
  inputs."bump-1_8_17".repo  = "bump";
  inputs."bump-1_8_17".type  = "github";
  inputs."bump-1_8_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_18".dir   = "1_8_18";
  inputs."bump-1_8_18".owner = "nim-nix-pkgs";
  inputs."bump-1_8_18".ref   = "master";
  inputs."bump-1_8_18".repo  = "bump";
  inputs."bump-1_8_18".type  = "github";
  inputs."bump-1_8_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_19".dir   = "1_8_19";
  inputs."bump-1_8_19".owner = "nim-nix-pkgs";
  inputs."bump-1_8_19".ref   = "master";
  inputs."bump-1_8_19".repo  = "bump";
  inputs."bump-1_8_19".type  = "github";
  inputs."bump-1_8_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_2".dir   = "1_8_2";
  inputs."bump-1_8_2".owner = "nim-nix-pkgs";
  inputs."bump-1_8_2".ref   = "master";
  inputs."bump-1_8_2".repo  = "bump";
  inputs."bump-1_8_2".type  = "github";
  inputs."bump-1_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_20".dir   = "1_8_20";
  inputs."bump-1_8_20".owner = "nim-nix-pkgs";
  inputs."bump-1_8_20".ref   = "master";
  inputs."bump-1_8_20".repo  = "bump";
  inputs."bump-1_8_20".type  = "github";
  inputs."bump-1_8_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_21".dir   = "1_8_21";
  inputs."bump-1_8_21".owner = "nim-nix-pkgs";
  inputs."bump-1_8_21".ref   = "master";
  inputs."bump-1_8_21".repo  = "bump";
  inputs."bump-1_8_21".type  = "github";
  inputs."bump-1_8_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_22".dir   = "1_8_22";
  inputs."bump-1_8_22".owner = "nim-nix-pkgs";
  inputs."bump-1_8_22".ref   = "master";
  inputs."bump-1_8_22".repo  = "bump";
  inputs."bump-1_8_22".type  = "github";
  inputs."bump-1_8_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_23".dir   = "1_8_23";
  inputs."bump-1_8_23".owner = "nim-nix-pkgs";
  inputs."bump-1_8_23".ref   = "master";
  inputs."bump-1_8_23".repo  = "bump";
  inputs."bump-1_8_23".type  = "github";
  inputs."bump-1_8_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_24".dir   = "1_8_24";
  inputs."bump-1_8_24".owner = "nim-nix-pkgs";
  inputs."bump-1_8_24".ref   = "master";
  inputs."bump-1_8_24".repo  = "bump";
  inputs."bump-1_8_24".type  = "github";
  inputs."bump-1_8_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_25".dir   = "1_8_25";
  inputs."bump-1_8_25".owner = "nim-nix-pkgs";
  inputs."bump-1_8_25".ref   = "master";
  inputs."bump-1_8_25".repo  = "bump";
  inputs."bump-1_8_25".type  = "github";
  inputs."bump-1_8_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_26".dir   = "1_8_26";
  inputs."bump-1_8_26".owner = "nim-nix-pkgs";
  inputs."bump-1_8_26".ref   = "master";
  inputs."bump-1_8_26".repo  = "bump";
  inputs."bump-1_8_26".type  = "github";
  inputs."bump-1_8_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_27".dir   = "1_8_27";
  inputs."bump-1_8_27".owner = "nim-nix-pkgs";
  inputs."bump-1_8_27".ref   = "master";
  inputs."bump-1_8_27".repo  = "bump";
  inputs."bump-1_8_27".type  = "github";
  inputs."bump-1_8_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_28".dir   = "1_8_28";
  inputs."bump-1_8_28".owner = "nim-nix-pkgs";
  inputs."bump-1_8_28".ref   = "master";
  inputs."bump-1_8_28".repo  = "bump";
  inputs."bump-1_8_28".type  = "github";
  inputs."bump-1_8_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_29".dir   = "1_8_29";
  inputs."bump-1_8_29".owner = "nim-nix-pkgs";
  inputs."bump-1_8_29".ref   = "master";
  inputs."bump-1_8_29".repo  = "bump";
  inputs."bump-1_8_29".type  = "github";
  inputs."bump-1_8_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_3".dir   = "1_8_3";
  inputs."bump-1_8_3".owner = "nim-nix-pkgs";
  inputs."bump-1_8_3".ref   = "master";
  inputs."bump-1_8_3".repo  = "bump";
  inputs."bump-1_8_3".type  = "github";
  inputs."bump-1_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_4".dir   = "1_8_4";
  inputs."bump-1_8_4".owner = "nim-nix-pkgs";
  inputs."bump-1_8_4".ref   = "master";
  inputs."bump-1_8_4".repo  = "bump";
  inputs."bump-1_8_4".type  = "github";
  inputs."bump-1_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_5".dir   = "1_8_5";
  inputs."bump-1_8_5".owner = "nim-nix-pkgs";
  inputs."bump-1_8_5".ref   = "master";
  inputs."bump-1_8_5".repo  = "bump";
  inputs."bump-1_8_5".type  = "github";
  inputs."bump-1_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_6".dir   = "1_8_6";
  inputs."bump-1_8_6".owner = "nim-nix-pkgs";
  inputs."bump-1_8_6".ref   = "master";
  inputs."bump-1_8_6".repo  = "bump";
  inputs."bump-1_8_6".type  = "github";
  inputs."bump-1_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_7".dir   = "1_8_7";
  inputs."bump-1_8_7".owner = "nim-nix-pkgs";
  inputs."bump-1_8_7".ref   = "master";
  inputs."bump-1_8_7".repo  = "bump";
  inputs."bump-1_8_7".type  = "github";
  inputs."bump-1_8_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_8".dir   = "1_8_8";
  inputs."bump-1_8_8".owner = "nim-nix-pkgs";
  inputs."bump-1_8_8".ref   = "master";
  inputs."bump-1_8_8".repo  = "bump";
  inputs."bump-1_8_8".type  = "github";
  inputs."bump-1_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump-1_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump-1_8_9".dir   = "1_8_9";
  inputs."bump-1_8_9".owner = "nim-nix-pkgs";
  inputs."bump-1_8_9".ref   = "master";
  inputs."bump-1_8_9".repo  = "bump";
  inputs."bump-1_8_9".type  = "github";
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