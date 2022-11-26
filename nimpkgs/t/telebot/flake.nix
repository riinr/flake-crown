{
  description = ''Async Telegram Bot API Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."telebot-master".dir   = "master";
  inputs."telebot-master".owner = "nim-nix-pkgs";
  inputs."telebot-master".ref   = "master";
  inputs."telebot-master".repo  = "telebot";
  inputs."telebot-master".type  = "github";
  inputs."telebot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_1".dir   = "0_1_1";
  inputs."telebot-0_1_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_1".ref   = "master";
  inputs."telebot-0_1_1".repo  = "telebot";
  inputs."telebot-0_1_1".type  = "github";
  inputs."telebot-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_2".dir   = "0_1_2";
  inputs."telebot-0_1_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_2".ref   = "master";
  inputs."telebot-0_1_2".repo  = "telebot";
  inputs."telebot-0_1_2".type  = "github";
  inputs."telebot-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_3".dir   = "0_1_3";
  inputs."telebot-0_1_3".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_3".ref   = "master";
  inputs."telebot-0_1_3".repo  = "telebot";
  inputs."telebot-0_1_3".type  = "github";
  inputs."telebot-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_4".dir   = "0_1_4";
  inputs."telebot-0_1_4".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_4".ref   = "master";
  inputs."telebot-0_1_4".repo  = "telebot";
  inputs."telebot-0_1_4".type  = "github";
  inputs."telebot-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_5".dir   = "0_1_5";
  inputs."telebot-0_1_5".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_5".ref   = "master";
  inputs."telebot-0_1_5".repo  = "telebot";
  inputs."telebot-0_1_5".type  = "github";
  inputs."telebot-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_6".dir   = "0_1_6";
  inputs."telebot-0_1_6".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_6".ref   = "master";
  inputs."telebot-0_1_6".repo  = "telebot";
  inputs."telebot-0_1_6".type  = "github";
  inputs."telebot-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_1_7".dir   = "0_1_7";
  inputs."telebot-0_1_7".owner = "nim-nix-pkgs";
  inputs."telebot-0_1_7".ref   = "master";
  inputs."telebot-0_1_7".repo  = "telebot";
  inputs."telebot-0_1_7".type  = "github";
  inputs."telebot-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_0".dir   = "0_3_0";
  inputs."telebot-0_3_0".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_0".ref   = "master";
  inputs."telebot-0_3_0".repo  = "telebot";
  inputs."telebot-0_3_0".type  = "github";
  inputs."telebot-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_1".dir   = "0_3_1";
  inputs."telebot-0_3_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_1".ref   = "master";
  inputs."telebot-0_3_1".repo  = "telebot";
  inputs."telebot-0_3_1".type  = "github";
  inputs."telebot-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_3".dir   = "0_3_3";
  inputs."telebot-0_3_3".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_3".ref   = "master";
  inputs."telebot-0_3_3".repo  = "telebot";
  inputs."telebot-0_3_3".type  = "github";
  inputs."telebot-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_4".dir   = "0_3_4";
  inputs."telebot-0_3_4".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_4".ref   = "master";
  inputs."telebot-0_3_4".repo  = "telebot";
  inputs."telebot-0_3_4".type  = "github";
  inputs."telebot-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_5".dir   = "0_3_5";
  inputs."telebot-0_3_5".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_5".ref   = "master";
  inputs."telebot-0_3_5".repo  = "telebot";
  inputs."telebot-0_3_5".type  = "github";
  inputs."telebot-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_6".dir   = "0_3_6";
  inputs."telebot-0_3_6".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_6".ref   = "master";
  inputs."telebot-0_3_6".repo  = "telebot";
  inputs."telebot-0_3_6".type  = "github";
  inputs."telebot-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_3_7".dir   = "0_3_7";
  inputs."telebot-0_3_7".owner = "nim-nix-pkgs";
  inputs."telebot-0_3_7".ref   = "master";
  inputs."telebot-0_3_7".repo  = "telebot";
  inputs."telebot-0_3_7".type  = "github";
  inputs."telebot-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_4_0".dir   = "0_4_0";
  inputs."telebot-0_4_0".owner = "nim-nix-pkgs";
  inputs."telebot-0_4_0".ref   = "master";
  inputs."telebot-0_4_0".repo  = "telebot";
  inputs."telebot-0_4_0".type  = "github";
  inputs."telebot-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_4_1".dir   = "0_4_1";
  inputs."telebot-0_4_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_4_1".ref   = "master";
  inputs."telebot-0_4_1".repo  = "telebot";
  inputs."telebot-0_4_1".type  = "github";
  inputs."telebot-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_4_2".dir   = "0_4_2";
  inputs."telebot-0_4_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_4_2".ref   = "master";
  inputs."telebot-0_4_2".repo  = "telebot";
  inputs."telebot-0_4_2".type  = "github";
  inputs."telebot-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_0".dir   = "0_5_0";
  inputs."telebot-0_5_0".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_0".ref   = "master";
  inputs."telebot-0_5_0".repo  = "telebot";
  inputs."telebot-0_5_0".type  = "github";
  inputs."telebot-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_1".dir   = "0_5_1";
  inputs."telebot-0_5_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_1".ref   = "master";
  inputs."telebot-0_5_1".repo  = "telebot";
  inputs."telebot-0_5_1".type  = "github";
  inputs."telebot-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_2".dir   = "0_5_2";
  inputs."telebot-0_5_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_2".ref   = "master";
  inputs."telebot-0_5_2".repo  = "telebot";
  inputs."telebot-0_5_2".type  = "github";
  inputs."telebot-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_3".dir   = "0_5_3";
  inputs."telebot-0_5_3".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_3".ref   = "master";
  inputs."telebot-0_5_3".repo  = "telebot";
  inputs."telebot-0_5_3".type  = "github";
  inputs."telebot-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_4".dir   = "0_5_4";
  inputs."telebot-0_5_4".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_4".ref   = "master";
  inputs."telebot-0_5_4".repo  = "telebot";
  inputs."telebot-0_5_4".type  = "github";
  inputs."telebot-0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_5".dir   = "0_5_5";
  inputs."telebot-0_5_5".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_5".ref   = "master";
  inputs."telebot-0_5_5".repo  = "telebot";
  inputs."telebot-0_5_5".type  = "github";
  inputs."telebot-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_6".dir   = "0_5_6";
  inputs."telebot-0_5_6".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_6".ref   = "master";
  inputs."telebot-0_5_6".repo  = "telebot";
  inputs."telebot-0_5_6".type  = "github";
  inputs."telebot-0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_6_1".dir   = "0_5_6_1";
  inputs."telebot-0_5_6_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_6_1".ref   = "master";
  inputs."telebot-0_5_6_1".repo  = "telebot";
  inputs."telebot-0_5_6_1".type  = "github";
  inputs."telebot-0_5_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_6_2".dir   = "0_5_6_2";
  inputs."telebot-0_5_6_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_6_2".ref   = "master";
  inputs."telebot-0_5_6_2".repo  = "telebot";
  inputs."telebot-0_5_6_2".type  = "github";
  inputs."telebot-0_5_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_6_3".dir   = "0_5_6_3";
  inputs."telebot-0_5_6_3".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_6_3".ref   = "master";
  inputs."telebot-0_5_6_3".repo  = "telebot";
  inputs."telebot-0_5_6_3".type  = "github";
  inputs."telebot-0_5_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_6_4".dir   = "0_5_6_4";
  inputs."telebot-0_5_6_4".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_6_4".ref   = "master";
  inputs."telebot-0_5_6_4".repo  = "telebot";
  inputs."telebot-0_5_6_4".type  = "github";
  inputs."telebot-0_5_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_7_1".dir   = "0_5_7_1";
  inputs."telebot-0_5_7_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_7_1".ref   = "master";
  inputs."telebot-0_5_7_1".repo  = "telebot";
  inputs."telebot-0_5_7_1".type  = "github";
  inputs."telebot-0_5_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_7_2".dir   = "0_5_7_2";
  inputs."telebot-0_5_7_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_7_2".ref   = "master";
  inputs."telebot-0_5_7_2".repo  = "telebot";
  inputs."telebot-0_5_7_2".type  = "github";
  inputs."telebot-0_5_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_7_3".dir   = "0_5_7_3";
  inputs."telebot-0_5_7_3".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_7_3".ref   = "master";
  inputs."telebot-0_5_7_3".repo  = "telebot";
  inputs."telebot-0_5_7_3".type  = "github";
  inputs."telebot-0_5_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_7_4".dir   = "0_5_7_4";
  inputs."telebot-0_5_7_4".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_7_4".ref   = "master";
  inputs."telebot-0_5_7_4".repo  = "telebot";
  inputs."telebot-0_5_7_4".type  = "github";
  inputs."telebot-0_5_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_8".dir   = "0_5_8";
  inputs."telebot-0_5_8".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_8".ref   = "master";
  inputs."telebot-0_5_8".repo  = "telebot";
  inputs."telebot-0_5_8".type  = "github";
  inputs."telebot-0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_5_9".dir   = "0_5_9";
  inputs."telebot-0_5_9".owner = "nim-nix-pkgs";
  inputs."telebot-0_5_9".ref   = "master";
  inputs."telebot-0_5_9".repo  = "telebot";
  inputs."telebot-0_5_9".type  = "github";
  inputs."telebot-0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_0".dir   = "0_6_0";
  inputs."telebot-0_6_0".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_0".ref   = "master";
  inputs."telebot-0_6_0".repo  = "telebot";
  inputs."telebot-0_6_0".type  = "github";
  inputs."telebot-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_1".dir   = "0_6_1";
  inputs."telebot-0_6_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_1".ref   = "master";
  inputs."telebot-0_6_1".repo  = "telebot";
  inputs."telebot-0_6_1".type  = "github";
  inputs."telebot-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_2".dir   = "0_6_2";
  inputs."telebot-0_6_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_2".ref   = "master";
  inputs."telebot-0_6_2".repo  = "telebot";
  inputs."telebot-0_6_2".type  = "github";
  inputs."telebot-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_3".dir   = "0_6_3";
  inputs."telebot-0_6_3".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_3".ref   = "master";
  inputs."telebot-0_6_3".repo  = "telebot";
  inputs."telebot-0_6_3".type  = "github";
  inputs."telebot-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_4".dir   = "0_6_4";
  inputs."telebot-0_6_4".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_4".ref   = "master";
  inputs."telebot-0_6_4".repo  = "telebot";
  inputs."telebot-0_6_4".type  = "github";
  inputs."telebot-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_5".dir   = "0_6_5";
  inputs."telebot-0_6_5".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_5".ref   = "master";
  inputs."telebot-0_6_5".repo  = "telebot";
  inputs."telebot-0_6_5".type  = "github";
  inputs."telebot-0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_6".dir   = "0_6_6";
  inputs."telebot-0_6_6".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_6".ref   = "master";
  inputs."telebot-0_6_6".repo  = "telebot";
  inputs."telebot-0_6_6".type  = "github";
  inputs."telebot-0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_7".dir   = "0_6_7";
  inputs."telebot-0_6_7".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_7".ref   = "master";
  inputs."telebot-0_6_7".repo  = "telebot";
  inputs."telebot-0_6_7".type  = "github";
  inputs."telebot-0_6_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_8".dir   = "0_6_8";
  inputs."telebot-0_6_8".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_8".ref   = "master";
  inputs."telebot-0_6_8".repo  = "telebot";
  inputs."telebot-0_6_8".type  = "github";
  inputs."telebot-0_6_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_6_9".dir   = "0_6_9";
  inputs."telebot-0_6_9".owner = "nim-nix-pkgs";
  inputs."telebot-0_6_9".ref   = "master";
  inputs."telebot-0_6_9".repo  = "telebot";
  inputs."telebot-0_6_9".type  = "github";
  inputs."telebot-0_6_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_6_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_7_0".dir   = "0_7_0";
  inputs."telebot-0_7_0".owner = "nim-nix-pkgs";
  inputs."telebot-0_7_0".ref   = "master";
  inputs."telebot-0_7_0".repo  = "telebot";
  inputs."telebot-0_7_0".type  = "github";
  inputs."telebot-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_7_1".dir   = "0_7_1";
  inputs."telebot-0_7_1".owner = "nim-nix-pkgs";
  inputs."telebot-0_7_1".ref   = "master";
  inputs."telebot-0_7_1".repo  = "telebot";
  inputs."telebot-0_7_1".type  = "github";
  inputs."telebot-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-0_7_2".dir   = "0_7_2";
  inputs."telebot-0_7_2".owner = "nim-nix-pkgs";
  inputs."telebot-0_7_2".ref   = "master";
  inputs."telebot-0_7_2".repo  = "telebot";
  inputs."telebot-0_7_2".type  = "github";
  inputs."telebot-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_0".dir   = "1_0_0";
  inputs."telebot-1_0_0".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_0".ref   = "master";
  inputs."telebot-1_0_0".repo  = "telebot";
  inputs."telebot-1_0_0".type  = "github";
  inputs."telebot-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_1".dir   = "1_0_1";
  inputs."telebot-1_0_1".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_1".ref   = "master";
  inputs."telebot-1_0_1".repo  = "telebot";
  inputs."telebot-1_0_1".type  = "github";
  inputs."telebot-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_10".dir   = "1_0_10";
  inputs."telebot-1_0_10".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_10".ref   = "master";
  inputs."telebot-1_0_10".repo  = "telebot";
  inputs."telebot-1_0_10".type  = "github";
  inputs."telebot-1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_11".dir   = "1_0_11";
  inputs."telebot-1_0_11".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_11".ref   = "master";
  inputs."telebot-1_0_11".repo  = "telebot";
  inputs."telebot-1_0_11".type  = "github";
  inputs."telebot-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_12".dir   = "1_0_12";
  inputs."telebot-1_0_12".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_12".ref   = "master";
  inputs."telebot-1_0_12".repo  = "telebot";
  inputs."telebot-1_0_12".type  = "github";
  inputs."telebot-1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_2".dir   = "1_0_2";
  inputs."telebot-1_0_2".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_2".ref   = "master";
  inputs."telebot-1_0_2".repo  = "telebot";
  inputs."telebot-1_0_2".type  = "github";
  inputs."telebot-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_3".dir   = "1_0_3";
  inputs."telebot-1_0_3".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_3".ref   = "master";
  inputs."telebot-1_0_3".repo  = "telebot";
  inputs."telebot-1_0_3".type  = "github";
  inputs."telebot-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_4".dir   = "1_0_4";
  inputs."telebot-1_0_4".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_4".ref   = "master";
  inputs."telebot-1_0_4".repo  = "telebot";
  inputs."telebot-1_0_4".type  = "github";
  inputs."telebot-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_5".dir   = "1_0_5";
  inputs."telebot-1_0_5".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_5".ref   = "master";
  inputs."telebot-1_0_5".repo  = "telebot";
  inputs."telebot-1_0_5".type  = "github";
  inputs."telebot-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_6".dir   = "1_0_6";
  inputs."telebot-1_0_6".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_6".ref   = "master";
  inputs."telebot-1_0_6".repo  = "telebot";
  inputs."telebot-1_0_6".type  = "github";
  inputs."telebot-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_7".dir   = "1_0_7";
  inputs."telebot-1_0_7".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_7".ref   = "master";
  inputs."telebot-1_0_7".repo  = "telebot";
  inputs."telebot-1_0_7".type  = "github";
  inputs."telebot-1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_8".dir   = "1_0_8";
  inputs."telebot-1_0_8".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_8".ref   = "master";
  inputs."telebot-1_0_8".repo  = "telebot";
  inputs."telebot-1_0_8".type  = "github";
  inputs."telebot-1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-1_0_9".dir   = "1_0_9";
  inputs."telebot-1_0_9".owner = "nim-nix-pkgs";
  inputs."telebot-1_0_9".ref   = "master";
  inputs."telebot-1_0_9".repo  = "telebot";
  inputs."telebot-1_0_9".type  = "github";
  inputs."telebot-1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_01_01".dir   = "2022_01_01";
  inputs."telebot-2022_01_01".owner = "nim-nix-pkgs";
  inputs."telebot-2022_01_01".ref   = "master";
  inputs."telebot-2022_01_01".repo  = "telebot";
  inputs."telebot-2022_01_01".type  = "github";
  inputs."telebot-2022_01_01".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_01_01".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_01_02".dir   = "2022_01_02";
  inputs."telebot-2022_01_02".owner = "nim-nix-pkgs";
  inputs."telebot-2022_01_02".ref   = "master";
  inputs."telebot-2022_01_02".repo  = "telebot";
  inputs."telebot-2022_01_02".type  = "github";
  inputs."telebot-2022_01_02".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_01_02".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_01_07".dir   = "2022_01_07";
  inputs."telebot-2022_01_07".owner = "nim-nix-pkgs";
  inputs."telebot-2022_01_07".ref   = "master";
  inputs."telebot-2022_01_07".repo  = "telebot";
  inputs."telebot-2022_01_07".type  = "github";
  inputs."telebot-2022_01_07".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_01_07".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_02_02".dir   = "2022_02_02";
  inputs."telebot-2022_02_02".owner = "nim-nix-pkgs";
  inputs."telebot-2022_02_02".ref   = "master";
  inputs."telebot-2022_02_02".repo  = "telebot";
  inputs."telebot-2022_02_02".type  = "github";
  inputs."telebot-2022_02_02".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_02_02".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_04_16".dir   = "2022_04_16";
  inputs."telebot-2022_04_16".owner = "nim-nix-pkgs";
  inputs."telebot-2022_04_16".ref   = "master";
  inputs."telebot-2022_04_16".repo  = "telebot";
  inputs."telebot-2022_04_16".type  = "github";
  inputs."telebot-2022_04_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_04_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_04_17".dir   = "2022_04_17";
  inputs."telebot-2022_04_17".owner = "nim-nix-pkgs";
  inputs."telebot-2022_04_17".ref   = "master";
  inputs."telebot-2022_04_17".repo  = "telebot";
  inputs."telebot-2022_04_17".type  = "github";
  inputs."telebot-2022_04_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_04_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_08_14".dir   = "2022_08_14";
  inputs."telebot-2022_08_14".owner = "nim-nix-pkgs";
  inputs."telebot-2022_08_14".ref   = "master";
  inputs."telebot-2022_08_14".repo  = "telebot";
  inputs."telebot-2022_08_14".type  = "github";
  inputs."telebot-2022_08_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_08_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_10_18".dir   = "2022_10_18";
  inputs."telebot-2022_10_18".owner = "nim-nix-pkgs";
  inputs."telebot-2022_10_18".ref   = "master";
  inputs."telebot-2022_10_18".repo  = "telebot";
  inputs."telebot-2022_10_18".type  = "github";
  inputs."telebot-2022_10_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_10_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-2022_11_07".dir   = "2022_11_07";
  inputs."telebot-2022_11_07".owner = "nim-nix-pkgs";
  inputs."telebot-2022_11_07".ref   = "master";
  inputs."telebot-2022_11_07".repo  = "telebot";
  inputs."telebot-2022_11_07".type  = "github";
  inputs."telebot-2022_11_07".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-2022_11_07".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot-signed".dir   = "signed";
  inputs."telebot-signed".owner = "nim-nix-pkgs";
  inputs."telebot-signed".ref   = "master";
  inputs."telebot-signed".repo  = "telebot";
  inputs."telebot-signed".type  = "github";
  inputs."telebot-signed".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot-signed".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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