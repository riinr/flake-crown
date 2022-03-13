{
  description = ''Full-featured 2d graphics library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pixie-master".dir   = "master";
  inputs."pixie-master".owner = "nim-nix-pkgs";
  inputs."pixie-master".ref   = "master";
  inputs."pixie-master".repo  = "pixie";
  inputs."pixie-master".type  = "github";
  inputs."pixie-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_10".dir   = "0_0_10";
  inputs."pixie-0_0_10".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_10".ref   = "master";
  inputs."pixie-0_0_10".repo  = "pixie";
  inputs."pixie-0_0_10".type  = "github";
  inputs."pixie-0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_11".dir   = "0_0_11";
  inputs."pixie-0_0_11".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_11".ref   = "master";
  inputs."pixie-0_0_11".repo  = "pixie";
  inputs."pixie-0_0_11".type  = "github";
  inputs."pixie-0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_12".dir   = "0_0_12";
  inputs."pixie-0_0_12".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_12".ref   = "master";
  inputs."pixie-0_0_12".repo  = "pixie";
  inputs."pixie-0_0_12".type  = "github";
  inputs."pixie-0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_13".dir   = "0_0_13";
  inputs."pixie-0_0_13".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_13".ref   = "master";
  inputs."pixie-0_0_13".repo  = "pixie";
  inputs."pixie-0_0_13".type  = "github";
  inputs."pixie-0_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_14".dir   = "0_0_14";
  inputs."pixie-0_0_14".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_14".ref   = "master";
  inputs."pixie-0_0_14".repo  = "pixie";
  inputs."pixie-0_0_14".type  = "github";
  inputs."pixie-0_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_15".dir   = "0_0_15";
  inputs."pixie-0_0_15".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_15".ref   = "master";
  inputs."pixie-0_0_15".repo  = "pixie";
  inputs."pixie-0_0_15".type  = "github";
  inputs."pixie-0_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_16".dir   = "0_0_16";
  inputs."pixie-0_0_16".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_16".ref   = "master";
  inputs."pixie-0_0_16".repo  = "pixie";
  inputs."pixie-0_0_16".type  = "github";
  inputs."pixie-0_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_17".dir   = "0_0_17";
  inputs."pixie-0_0_17".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_17".ref   = "master";
  inputs."pixie-0_0_17".repo  = "pixie";
  inputs."pixie-0_0_17".type  = "github";
  inputs."pixie-0_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_18".dir   = "0_0_18";
  inputs."pixie-0_0_18".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_18".ref   = "master";
  inputs."pixie-0_0_18".repo  = "pixie";
  inputs."pixie-0_0_18".type  = "github";
  inputs."pixie-0_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_2".dir   = "0_0_2";
  inputs."pixie-0_0_2".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_2".ref   = "master";
  inputs."pixie-0_0_2".repo  = "pixie";
  inputs."pixie-0_0_2".type  = "github";
  inputs."pixie-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_20".dir   = "0_0_20";
  inputs."pixie-0_0_20".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_20".ref   = "master";
  inputs."pixie-0_0_20".repo  = "pixie";
  inputs."pixie-0_0_20".type  = "github";
  inputs."pixie-0_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_21".dir   = "0_0_21";
  inputs."pixie-0_0_21".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_21".ref   = "master";
  inputs."pixie-0_0_21".repo  = "pixie";
  inputs."pixie-0_0_21".type  = "github";
  inputs."pixie-0_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_3".dir   = "0_0_3";
  inputs."pixie-0_0_3".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_3".ref   = "master";
  inputs."pixie-0_0_3".repo  = "pixie";
  inputs."pixie-0_0_3".type  = "github";
  inputs."pixie-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_4".dir   = "0_0_4";
  inputs."pixie-0_0_4".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_4".ref   = "master";
  inputs."pixie-0_0_4".repo  = "pixie";
  inputs."pixie-0_0_4".type  = "github";
  inputs."pixie-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_5".dir   = "0_0_5";
  inputs."pixie-0_0_5".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_5".ref   = "master";
  inputs."pixie-0_0_5".repo  = "pixie";
  inputs."pixie-0_0_5".type  = "github";
  inputs."pixie-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_6".dir   = "0_0_6";
  inputs."pixie-0_0_6".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_6".ref   = "master";
  inputs."pixie-0_0_6".repo  = "pixie";
  inputs."pixie-0_0_6".type  = "github";
  inputs."pixie-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_7".dir   = "0_0_7";
  inputs."pixie-0_0_7".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_7".ref   = "master";
  inputs."pixie-0_0_7".repo  = "pixie";
  inputs."pixie-0_0_7".type  = "github";
  inputs."pixie-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_8".dir   = "0_0_8";
  inputs."pixie-0_0_8".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_8".ref   = "master";
  inputs."pixie-0_0_8".repo  = "pixie";
  inputs."pixie-0_0_8".type  = "github";
  inputs."pixie-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-0_0_9".dir   = "0_0_9";
  inputs."pixie-0_0_9".owner = "nim-nix-pkgs";
  inputs."pixie-0_0_9".ref   = "master";
  inputs."pixie-0_0_9".repo  = "pixie";
  inputs."pixie-0_0_9".type  = "github";
  inputs."pixie-0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_0".dir   = "1_0_0";
  inputs."pixie-1_0_0".owner = "nim-nix-pkgs";
  inputs."pixie-1_0_0".ref   = "master";
  inputs."pixie-1_0_0".repo  = "pixie";
  inputs."pixie-1_0_0".type  = "github";
  inputs."pixie-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_1".dir   = "1_0_1";
  inputs."pixie-1_0_1".owner = "nim-nix-pkgs";
  inputs."pixie-1_0_1".ref   = "master";
  inputs."pixie-1_0_1".repo  = "pixie";
  inputs."pixie-1_0_1".type  = "github";
  inputs."pixie-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_2".dir   = "1_0_2";
  inputs."pixie-1_0_2".owner = "nim-nix-pkgs";
  inputs."pixie-1_0_2".ref   = "master";
  inputs."pixie-1_0_2".repo  = "pixie";
  inputs."pixie-1_0_2".type  = "github";
  inputs."pixie-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_3".dir   = "1_0_3";
  inputs."pixie-1_0_3".owner = "nim-nix-pkgs";
  inputs."pixie-1_0_3".ref   = "master";
  inputs."pixie-1_0_3".repo  = "pixie";
  inputs."pixie-1_0_3".type  = "github";
  inputs."pixie-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_4".dir   = "1_0_4";
  inputs."pixie-1_0_4".owner = "nim-nix-pkgs";
  inputs."pixie-1_0_4".ref   = "master";
  inputs."pixie-1_0_4".repo  = "pixie";
  inputs."pixie-1_0_4".type  = "github";
  inputs."pixie-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_0_5".dir   = "1_0_5";
  inputs."pixie-1_0_5".owner = "nim-nix-pkgs";
  inputs."pixie-1_0_5".ref   = "master";
  inputs."pixie-1_0_5".repo  = "pixie";
  inputs."pixie-1_0_5".type  = "github";
  inputs."pixie-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_1_0".dir   = "1_1_0";
  inputs."pixie-1_1_0".owner = "nim-nix-pkgs";
  inputs."pixie-1_1_0".ref   = "master";
  inputs."pixie-1_1_0".repo  = "pixie";
  inputs."pixie-1_1_0".type  = "github";
  inputs."pixie-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_1_2".dir   = "1_1_2";
  inputs."pixie-1_1_2".owner = "nim-nix-pkgs";
  inputs."pixie-1_1_2".ref   = "master";
  inputs."pixie-1_1_2".repo  = "pixie";
  inputs."pixie-1_1_2".type  = "github";
  inputs."pixie-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_1_3".dir   = "1_1_3";
  inputs."pixie-1_1_3".owner = "nim-nix-pkgs";
  inputs."pixie-1_1_3".ref   = "master";
  inputs."pixie-1_1_3".repo  = "pixie";
  inputs."pixie-1_1_3".type  = "github";
  inputs."pixie-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-1_2_0".dir   = "1_2_0";
  inputs."pixie-1_2_0".owner = "nim-nix-pkgs";
  inputs."pixie-1_2_0".ref   = "master";
  inputs."pixie-1_2_0".repo  = "pixie";
  inputs."pixie-1_2_0".type  = "github";
  inputs."pixie-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_0".dir   = "2_0_0";
  inputs."pixie-2_0_0".owner = "nim-nix-pkgs";
  inputs."pixie-2_0_0".ref   = "master";
  inputs."pixie-2_0_0".repo  = "pixie";
  inputs."pixie-2_0_0".type  = "github";
  inputs."pixie-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_1".dir   = "2_0_1";
  inputs."pixie-2_0_1".owner = "nim-nix-pkgs";
  inputs."pixie-2_0_1".ref   = "master";
  inputs."pixie-2_0_1".repo  = "pixie";
  inputs."pixie-2_0_1".type  = "github";
  inputs."pixie-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_2".dir   = "2_0_2";
  inputs."pixie-2_0_2".owner = "nim-nix-pkgs";
  inputs."pixie-2_0_2".ref   = "master";
  inputs."pixie-2_0_2".repo  = "pixie";
  inputs."pixie-2_0_2".type  = "github";
  inputs."pixie-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_3".dir   = "2_0_3";
  inputs."pixie-2_0_3".owner = "nim-nix-pkgs";
  inputs."pixie-2_0_3".ref   = "master";
  inputs."pixie-2_0_3".repo  = "pixie";
  inputs."pixie-2_0_3".type  = "github";
  inputs."pixie-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_4".dir   = "2_0_4";
  inputs."pixie-2_0_4".owner = "nim-nix-pkgs";
  inputs."pixie-2_0_4".ref   = "master";
  inputs."pixie-2_0_4".repo  = "pixie";
  inputs."pixie-2_0_4".type  = "github";
  inputs."pixie-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_0_5".dir   = "2_0_5";
  inputs."pixie-2_0_5".owner = "nim-nix-pkgs";
  inputs."pixie-2_0_5".ref   = "master";
  inputs."pixie-2_0_5".repo  = "pixie";
  inputs."pixie-2_0_5".type  = "github";
  inputs."pixie-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_1_0".dir   = "2_1_0";
  inputs."pixie-2_1_0".owner = "nim-nix-pkgs";
  inputs."pixie-2_1_0".ref   = "master";
  inputs."pixie-2_1_0".repo  = "pixie";
  inputs."pixie-2_1_0".type  = "github";
  inputs."pixie-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-2_1_1".dir   = "2_1_1";
  inputs."pixie-2_1_1".owner = "nim-nix-pkgs";
  inputs."pixie-2_1_1".ref   = "master";
  inputs."pixie-2_1_1".repo  = "pixie";
  inputs."pixie-2_1_1".type  = "github";
  inputs."pixie-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_0".dir   = "3_0_0";
  inputs."pixie-3_0_0".owner = "nim-nix-pkgs";
  inputs."pixie-3_0_0".ref   = "master";
  inputs."pixie-3_0_0".repo  = "pixie";
  inputs."pixie-3_0_0".type  = "github";
  inputs."pixie-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_1".dir   = "3_0_1";
  inputs."pixie-3_0_1".owner = "nim-nix-pkgs";
  inputs."pixie-3_0_1".ref   = "master";
  inputs."pixie-3_0_1".repo  = "pixie";
  inputs."pixie-3_0_1".type  = "github";
  inputs."pixie-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_2".dir   = "3_0_2";
  inputs."pixie-3_0_2".owner = "nim-nix-pkgs";
  inputs."pixie-3_0_2".ref   = "master";
  inputs."pixie-3_0_2".repo  = "pixie";
  inputs."pixie-3_0_2".type  = "github";
  inputs."pixie-3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_3".dir   = "3_0_3";
  inputs."pixie-3_0_3".owner = "nim-nix-pkgs";
  inputs."pixie-3_0_3".ref   = "master";
  inputs."pixie-3_0_3".repo  = "pixie";
  inputs."pixie-3_0_3".type  = "github";
  inputs."pixie-3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_0_4".dir   = "3_0_4";
  inputs."pixie-3_0_4".owner = "nim-nix-pkgs";
  inputs."pixie-3_0_4".ref   = "master";
  inputs."pixie-3_0_4".repo  = "pixie";
  inputs."pixie-3_0_4".type  = "github";
  inputs."pixie-3_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_0".dir   = "3_1_0";
  inputs."pixie-3_1_0".owner = "nim-nix-pkgs";
  inputs."pixie-3_1_0".ref   = "master";
  inputs."pixie-3_1_0".repo  = "pixie";
  inputs."pixie-3_1_0".type  = "github";
  inputs."pixie-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_1".dir   = "3_1_1";
  inputs."pixie-3_1_1".owner = "nim-nix-pkgs";
  inputs."pixie-3_1_1".ref   = "master";
  inputs."pixie-3_1_1".repo  = "pixie";
  inputs."pixie-3_1_1".type  = "github";
  inputs."pixie-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_2".dir   = "3_1_2";
  inputs."pixie-3_1_2".owner = "nim-nix-pkgs";
  inputs."pixie-3_1_2".ref   = "master";
  inputs."pixie-3_1_2".repo  = "pixie";
  inputs."pixie-3_1_2".type  = "github";
  inputs."pixie-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_3".dir   = "3_1_3";
  inputs."pixie-3_1_3".owner = "nim-nix-pkgs";
  inputs."pixie-3_1_3".ref   = "master";
  inputs."pixie-3_1_3".repo  = "pixie";
  inputs."pixie-3_1_3".type  = "github";
  inputs."pixie-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-3_1_4".dir   = "3_1_4";
  inputs."pixie-3_1_4".owner = "nim-nix-pkgs";
  inputs."pixie-3_1_4".ref   = "master";
  inputs."pixie-3_1_4".repo  = "pixie";
  inputs."pixie-3_1_4".type  = "github";
  inputs."pixie-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-4_0_0".dir   = "4_0_0";
  inputs."pixie-4_0_0".owner = "nim-nix-pkgs";
  inputs."pixie-4_0_0".ref   = "master";
  inputs."pixie-4_0_0".repo  = "pixie";
  inputs."pixie-4_0_0".type  = "github";
  inputs."pixie-4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie-4_0_1".dir   = "4_0_1";
  inputs."pixie-4_0_1".owner = "nim-nix-pkgs";
  inputs."pixie-4_0_1".ref   = "master";
  inputs."pixie-4_0_1".repo  = "pixie";
  inputs."pixie-4_0_1".type  = "github";
  inputs."pixie-4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie-4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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