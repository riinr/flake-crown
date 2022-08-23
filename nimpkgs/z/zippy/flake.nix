{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zippy-master".dir   = "master";
  inputs."zippy-master".owner = "nim-nix-pkgs";
  inputs."zippy-master".ref   = "master";
  inputs."zippy-master".repo  = "zippy";
  inputs."zippy-master".type  = "github";
  inputs."zippy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_0".dir   = "0_1_0";
  inputs."zippy-0_1_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_1_0".ref   = "master";
  inputs."zippy-0_1_0".repo  = "zippy";
  inputs."zippy-0_1_0".type  = "github";
  inputs."zippy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_1".dir   = "0_1_1";
  inputs."zippy-0_1_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_1_1".ref   = "master";
  inputs."zippy-0_1_1".repo  = "zippy";
  inputs."zippy-0_1_1".type  = "github";
  inputs."zippy-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_2".dir   = "0_1_2";
  inputs."zippy-0_1_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_1_2".ref   = "master";
  inputs."zippy-0_1_2".repo  = "zippy";
  inputs."zippy-0_1_2".type  = "github";
  inputs."zippy-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_3".dir   = "0_1_3";
  inputs."zippy-0_1_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_1_3".ref   = "master";
  inputs."zippy-0_1_3".repo  = "zippy";
  inputs."zippy-0_1_3".type  = "github";
  inputs."zippy-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_10_0".dir   = "0_10_0";
  inputs."zippy-0_10_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_10_0".ref   = "master";
  inputs."zippy-0_10_0".repo  = "zippy";
  inputs."zippy-0_10_0".type  = "github";
  inputs."zippy-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_10_1".dir   = "0_10_1";
  inputs."zippy-0_10_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_10_1".ref   = "master";
  inputs."zippy-0_10_1".repo  = "zippy";
  inputs."zippy-0_10_1".type  = "github";
  inputs."zippy-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_10_2".dir   = "0_10_2";
  inputs."zippy-0_10_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_10_2".ref   = "master";
  inputs."zippy-0_10_2".repo  = "zippy";
  inputs."zippy-0_10_2".type  = "github";
  inputs."zippy-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_10_3".dir   = "0_10_3";
  inputs."zippy-0_10_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_10_3".ref   = "master";
  inputs."zippy-0_10_3".repo  = "zippy";
  inputs."zippy-0_10_3".type  = "github";
  inputs."zippy-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_10_4".dir   = "0_10_4";
  inputs."zippy-0_10_4".owner = "nim-nix-pkgs";
  inputs."zippy-0_10_4".ref   = "master";
  inputs."zippy-0_10_4".repo  = "zippy";
  inputs."zippy-0_10_4".type  = "github";
  inputs."zippy-0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_0".dir   = "0_2_0";
  inputs."zippy-0_2_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_0".ref   = "master";
  inputs."zippy-0_2_0".repo  = "zippy";
  inputs."zippy-0_2_0".type  = "github";
  inputs."zippy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_1".dir   = "0_2_1";
  inputs."zippy-0_2_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_1".ref   = "master";
  inputs."zippy-0_2_1".repo  = "zippy";
  inputs."zippy-0_2_1".type  = "github";
  inputs."zippy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_2".dir   = "0_2_2";
  inputs."zippy-0_2_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_2".ref   = "master";
  inputs."zippy-0_2_2".repo  = "zippy";
  inputs."zippy-0_2_2".type  = "github";
  inputs."zippy-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_3".dir   = "0_2_3";
  inputs."zippy-0_2_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_3".ref   = "master";
  inputs."zippy-0_2_3".repo  = "zippy";
  inputs."zippy-0_2_3".type  = "github";
  inputs."zippy-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_4".dir   = "0_2_4";
  inputs."zippy-0_2_4".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_4".ref   = "master";
  inputs."zippy-0_2_4".repo  = "zippy";
  inputs."zippy-0_2_4".type  = "github";
  inputs."zippy-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_5".dir   = "0_2_5";
  inputs."zippy-0_2_5".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_5".ref   = "master";
  inputs."zippy-0_2_5".repo  = "zippy";
  inputs."zippy-0_2_5".type  = "github";
  inputs."zippy-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_6".dir   = "0_2_6";
  inputs."zippy-0_2_6".owner = "nim-nix-pkgs";
  inputs."zippy-0_2_6".ref   = "master";
  inputs."zippy-0_2_6".repo  = "zippy";
  inputs."zippy-0_2_6".type  = "github";
  inputs."zippy-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_0".dir   = "0_3_0";
  inputs."zippy-0_3_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_0".ref   = "master";
  inputs."zippy-0_3_0".repo  = "zippy";
  inputs."zippy-0_3_0".type  = "github";
  inputs."zippy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_1".dir   = "0_3_1";
  inputs."zippy-0_3_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_1".ref   = "master";
  inputs."zippy-0_3_1".repo  = "zippy";
  inputs."zippy-0_3_1".type  = "github";
  inputs."zippy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_10".dir   = "0_3_10";
  inputs."zippy-0_3_10".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_10".ref   = "master";
  inputs."zippy-0_3_10".repo  = "zippy";
  inputs."zippy-0_3_10".type  = "github";
  inputs."zippy-0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_11".dir   = "0_3_11";
  inputs."zippy-0_3_11".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_11".ref   = "master";
  inputs."zippy-0_3_11".repo  = "zippy";
  inputs."zippy-0_3_11".type  = "github";
  inputs."zippy-0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_12".dir   = "0_3_12";
  inputs."zippy-0_3_12".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_12".ref   = "master";
  inputs."zippy-0_3_12".repo  = "zippy";
  inputs."zippy-0_3_12".type  = "github";
  inputs."zippy-0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_13".dir   = "0_3_13";
  inputs."zippy-0_3_13".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_13".ref   = "master";
  inputs."zippy-0_3_13".repo  = "zippy";
  inputs."zippy-0_3_13".type  = "github";
  inputs."zippy-0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_14".dir   = "0_3_14";
  inputs."zippy-0_3_14".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_14".ref   = "master";
  inputs."zippy-0_3_14".repo  = "zippy";
  inputs."zippy-0_3_14".type  = "github";
  inputs."zippy-0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_2".dir   = "0_3_2";
  inputs."zippy-0_3_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_2".ref   = "master";
  inputs."zippy-0_3_2".repo  = "zippy";
  inputs."zippy-0_3_2".type  = "github";
  inputs."zippy-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_3".dir   = "0_3_3";
  inputs."zippy-0_3_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_3".ref   = "master";
  inputs."zippy-0_3_3".repo  = "zippy";
  inputs."zippy-0_3_3".type  = "github";
  inputs."zippy-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_4".dir   = "0_3_4";
  inputs."zippy-0_3_4".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_4".ref   = "master";
  inputs."zippy-0_3_4".repo  = "zippy";
  inputs."zippy-0_3_4".type  = "github";
  inputs."zippy-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_5".dir   = "0_3_5";
  inputs."zippy-0_3_5".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_5".ref   = "master";
  inputs."zippy-0_3_5".repo  = "zippy";
  inputs."zippy-0_3_5".type  = "github";
  inputs."zippy-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_6".dir   = "0_3_6";
  inputs."zippy-0_3_6".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_6".ref   = "master";
  inputs."zippy-0_3_6".repo  = "zippy";
  inputs."zippy-0_3_6".type  = "github";
  inputs."zippy-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_7".dir   = "0_3_7";
  inputs."zippy-0_3_7".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_7".ref   = "master";
  inputs."zippy-0_3_7".repo  = "zippy";
  inputs."zippy-0_3_7".type  = "github";
  inputs."zippy-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_8".dir   = "0_3_8";
  inputs."zippy-0_3_8".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_8".ref   = "master";
  inputs."zippy-0_3_8".repo  = "zippy";
  inputs."zippy-0_3_8".type  = "github";
  inputs."zippy-0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_9".dir   = "0_3_9";
  inputs."zippy-0_3_9".owner = "nim-nix-pkgs";
  inputs."zippy-0_3_9".ref   = "master";
  inputs."zippy-0_3_9".repo  = "zippy";
  inputs."zippy-0_3_9".type  = "github";
  inputs."zippy-0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_4_0".dir   = "0_4_0";
  inputs."zippy-0_4_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_4_0".ref   = "master";
  inputs."zippy-0_4_0".repo  = "zippy";
  inputs."zippy-0_4_0".type  = "github";
  inputs."zippy-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_4_1".dir   = "0_4_1";
  inputs."zippy-0_4_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_4_1".ref   = "master";
  inputs."zippy-0_4_1".repo  = "zippy";
  inputs."zippy-0_4_1".type  = "github";
  inputs."zippy-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_0".dir   = "0_5_0";
  inputs."zippy-0_5_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_0".ref   = "master";
  inputs."zippy-0_5_0".repo  = "zippy";
  inputs."zippy-0_5_0".type  = "github";
  inputs."zippy-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_1".dir   = "0_5_1";
  inputs."zippy-0_5_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_1".ref   = "master";
  inputs."zippy-0_5_1".repo  = "zippy";
  inputs."zippy-0_5_1".type  = "github";
  inputs."zippy-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_10".dir   = "0_5_10";
  inputs."zippy-0_5_10".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_10".ref   = "master";
  inputs."zippy-0_5_10".repo  = "zippy";
  inputs."zippy-0_5_10".type  = "github";
  inputs."zippy-0_5_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_11".dir   = "0_5_11";
  inputs."zippy-0_5_11".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_11".ref   = "master";
  inputs."zippy-0_5_11".repo  = "zippy";
  inputs."zippy-0_5_11".type  = "github";
  inputs."zippy-0_5_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_12".dir   = "0_5_12";
  inputs."zippy-0_5_12".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_12".ref   = "master";
  inputs."zippy-0_5_12".repo  = "zippy";
  inputs."zippy-0_5_12".type  = "github";
  inputs."zippy-0_5_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_13".dir   = "0_5_13";
  inputs."zippy-0_5_13".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_13".ref   = "master";
  inputs."zippy-0_5_13".repo  = "zippy";
  inputs."zippy-0_5_13".type  = "github";
  inputs."zippy-0_5_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_14".dir   = "0_5_14";
  inputs."zippy-0_5_14".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_14".ref   = "master";
  inputs."zippy-0_5_14".repo  = "zippy";
  inputs."zippy-0_5_14".type  = "github";
  inputs."zippy-0_5_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_2".dir   = "0_5_2";
  inputs."zippy-0_5_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_2".ref   = "master";
  inputs."zippy-0_5_2".repo  = "zippy";
  inputs."zippy-0_5_2".type  = "github";
  inputs."zippy-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_3".dir   = "0_5_3";
  inputs."zippy-0_5_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_3".ref   = "master";
  inputs."zippy-0_5_3".repo  = "zippy";
  inputs."zippy-0_5_3".type  = "github";
  inputs."zippy-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_4".dir   = "0_5_4";
  inputs."zippy-0_5_4".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_4".ref   = "master";
  inputs."zippy-0_5_4".repo  = "zippy";
  inputs."zippy-0_5_4".type  = "github";
  inputs."zippy-0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_5".dir   = "0_5_5";
  inputs."zippy-0_5_5".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_5".ref   = "master";
  inputs."zippy-0_5_5".repo  = "zippy";
  inputs."zippy-0_5_5".type  = "github";
  inputs."zippy-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_6".dir   = "0_5_6";
  inputs."zippy-0_5_6".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_6".ref   = "master";
  inputs."zippy-0_5_6".repo  = "zippy";
  inputs."zippy-0_5_6".type  = "github";
  inputs."zippy-0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_7".dir   = "0_5_7";
  inputs."zippy-0_5_7".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_7".ref   = "master";
  inputs."zippy-0_5_7".repo  = "zippy";
  inputs."zippy-0_5_7".type  = "github";
  inputs."zippy-0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_8".dir   = "0_5_8";
  inputs."zippy-0_5_8".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_8".ref   = "master";
  inputs."zippy-0_5_8".repo  = "zippy";
  inputs."zippy-0_5_8".type  = "github";
  inputs."zippy-0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_9".dir   = "0_5_9";
  inputs."zippy-0_5_9".owner = "nim-nix-pkgs";
  inputs."zippy-0_5_9".ref   = "master";
  inputs."zippy-0_5_9".repo  = "zippy";
  inputs."zippy-0_5_9".type  = "github";
  inputs."zippy-0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_6_0".dir   = "0_6_0";
  inputs."zippy-0_6_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_6_0".ref   = "master";
  inputs."zippy-0_6_0".repo  = "zippy";
  inputs."zippy-0_6_0".type  = "github";
  inputs."zippy-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_6_1".dir   = "0_6_1";
  inputs."zippy-0_6_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_6_1".ref   = "master";
  inputs."zippy-0_6_1".repo  = "zippy";
  inputs."zippy-0_6_1".type  = "github";
  inputs."zippy-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_6_2".dir   = "0_6_2";
  inputs."zippy-0_6_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_6_2".ref   = "master";
  inputs."zippy-0_6_2".repo  = "zippy";
  inputs."zippy-0_6_2".type  = "github";
  inputs."zippy-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_0".dir   = "0_7_0";
  inputs."zippy-0_7_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_7_0".ref   = "master";
  inputs."zippy-0_7_0".repo  = "zippy";
  inputs."zippy-0_7_0".type  = "github";
  inputs."zippy-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_1".dir   = "0_7_1";
  inputs."zippy-0_7_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_7_1".ref   = "master";
  inputs."zippy-0_7_1".repo  = "zippy";
  inputs."zippy-0_7_1".type  = "github";
  inputs."zippy-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_2".dir   = "0_7_2";
  inputs."zippy-0_7_2".owner = "nim-nix-pkgs";
  inputs."zippy-0_7_2".ref   = "master";
  inputs."zippy-0_7_2".repo  = "zippy";
  inputs."zippy-0_7_2".type  = "github";
  inputs."zippy-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_3".dir   = "0_7_3";
  inputs."zippy-0_7_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_7_3".ref   = "master";
  inputs."zippy-0_7_3".repo  = "zippy";
  inputs."zippy-0_7_3".type  = "github";
  inputs."zippy-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_4".dir   = "0_7_4";
  inputs."zippy-0_7_4".owner = "nim-nix-pkgs";
  inputs."zippy-0_7_4".ref   = "master";
  inputs."zippy-0_7_4".repo  = "zippy";
  inputs."zippy-0_7_4".type  = "github";
  inputs."zippy-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_8_0".dir   = "0_8_0";
  inputs."zippy-0_8_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_8_0".ref   = "master";
  inputs."zippy-0_8_0".repo  = "zippy";
  inputs."zippy-0_8_0".type  = "github";
  inputs."zippy-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_8_1".dir   = "0_8_1";
  inputs."zippy-0_8_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_8_1".ref   = "master";
  inputs."zippy-0_8_1".repo  = "zippy";
  inputs."zippy-0_8_1".type  = "github";
  inputs."zippy-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_0".dir   = "0_9_0";
  inputs."zippy-0_9_0".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_0".ref   = "master";
  inputs."zippy-0_9_0".repo  = "zippy";
  inputs."zippy-0_9_0".type  = "github";
  inputs."zippy-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_1".dir   = "0_9_1";
  inputs."zippy-0_9_1".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_1".ref   = "master";
  inputs."zippy-0_9_1".repo  = "zippy";
  inputs."zippy-0_9_1".type  = "github";
  inputs."zippy-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_10".dir   = "0_9_10";
  inputs."zippy-0_9_10".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_10".ref   = "master";
  inputs."zippy-0_9_10".repo  = "zippy";
  inputs."zippy-0_9_10".type  = "github";
  inputs."zippy-0_9_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_11".dir   = "0_9_11";
  inputs."zippy-0_9_11".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_11".ref   = "master";
  inputs."zippy-0_9_11".repo  = "zippy";
  inputs."zippy-0_9_11".type  = "github";
  inputs."zippy-0_9_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_12".dir   = "0_9_12";
  inputs."zippy-0_9_12".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_12".ref   = "master";
  inputs."zippy-0_9_12".repo  = "zippy";
  inputs."zippy-0_9_12".type  = "github";
  inputs."zippy-0_9_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_3".dir   = "0_9_3";
  inputs."zippy-0_9_3".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_3".ref   = "master";
  inputs."zippy-0_9_3".repo  = "zippy";
  inputs."zippy-0_9_3".type  = "github";
  inputs."zippy-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_4".dir   = "0_9_4";
  inputs."zippy-0_9_4".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_4".ref   = "master";
  inputs."zippy-0_9_4".repo  = "zippy";
  inputs."zippy-0_9_4".type  = "github";
  inputs."zippy-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_5".dir   = "0_9_5";
  inputs."zippy-0_9_5".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_5".ref   = "master";
  inputs."zippy-0_9_5".repo  = "zippy";
  inputs."zippy-0_9_5".type  = "github";
  inputs."zippy-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_6".dir   = "0_9_6";
  inputs."zippy-0_9_6".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_6".ref   = "master";
  inputs."zippy-0_9_6".repo  = "zippy";
  inputs."zippy-0_9_6".type  = "github";
  inputs."zippy-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_7".dir   = "0_9_7";
  inputs."zippy-0_9_7".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_7".ref   = "master";
  inputs."zippy-0_9_7".repo  = "zippy";
  inputs."zippy-0_9_7".type  = "github";
  inputs."zippy-0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_8".dir   = "0_9_8";
  inputs."zippy-0_9_8".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_8".ref   = "master";
  inputs."zippy-0_9_8".repo  = "zippy";
  inputs."zippy-0_9_8".type  = "github";
  inputs."zippy-0_9_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_9".dir   = "0_9_9";
  inputs."zippy-0_9_9".owner = "nim-nix-pkgs";
  inputs."zippy-0_9_9".ref   = "master";
  inputs."zippy-0_9_9".repo  = "zippy";
  inputs."zippy-0_9_9".type  = "github";
  inputs."zippy-0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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