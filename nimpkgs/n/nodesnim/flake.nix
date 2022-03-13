{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nodesnim-master".dir   = "master";
  inputs."nodesnim-master".owner = "nim-nix-pkgs";
  inputs."nodesnim-master".ref   = "master";
  inputs."nodesnim-master".repo  = "nodesnim";
  inputs."nodesnim-master".type  = "github";
  inputs."nodesnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-01_09_21_1_24_0_0_6".dir   = "01_09_21_1_24_0_0_6";
  inputs."nodesnim-01_09_21_1_24_0_0_6".owner = "nim-nix-pkgs";
  inputs."nodesnim-01_09_21_1_24_0_0_6".ref   = "master";
  inputs."nodesnim-01_09_21_1_24_0_0_6".repo  = "nodesnim";
  inputs."nodesnim-01_09_21_1_24_0_0_6".type  = "github";
  inputs."nodesnim-01_09_21_1_24_0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-01_09_21_1_24_0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_0".dir   = "nightly-0_2_0";
  inputs."nodesnim-nightly-0_2_0".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_2_0".ref   = "master";
  inputs."nodesnim-nightly-0_2_0".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_2_0".type  = "github";
  inputs."nodesnim-nightly-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_1a".dir   = "nightly-0_2_1a";
  inputs."nodesnim-nightly-0_2_1a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_2_1a".ref   = "master";
  inputs."nodesnim-nightly-0_2_1a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_2_1a".type  = "github";
  inputs."nodesnim-nightly-0_2_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_2a".dir   = "nightly-0_2_2a";
  inputs."nodesnim-nightly-0_2_2a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_2_2a".ref   = "master";
  inputs."nodesnim-nightly-0_2_2a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_2_2a".type  = "github";
  inputs."nodesnim-nightly-0_2_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_4a".dir   = "nightly-0_2_4a";
  inputs."nodesnim-nightly-0_2_4a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_2_4a".ref   = "master";
  inputs."nodesnim-nightly-0_2_4a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_2_4a".type  = "github";
  inputs."nodesnim-nightly-0_2_4a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_4b".dir   = "nightly-0_2_4b";
  inputs."nodesnim-nightly-0_2_4b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_2_4b".ref   = "master";
  inputs."nodesnim-nightly-0_2_4b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_2_4b".type  = "github";
  inputs."nodesnim-nightly-0_2_4b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_4c".dir   = "nightly-0_2_4c";
  inputs."nodesnim-nightly-0_2_4c".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_2_4c".ref   = "master";
  inputs."nodesnim-nightly-0_2_4c".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_2_4c".type  = "github";
  inputs."nodesnim-nightly-0_2_4c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_0a".dir   = "nightly-0_3_0a";
  inputs."nodesnim-nightly-0_3_0a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_0a".ref   = "master";
  inputs."nodesnim-nightly-0_3_0a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_0a".type  = "github";
  inputs."nodesnim-nightly-0_3_0a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_0b".dir   = "nightly-0_3_0b";
  inputs."nodesnim-nightly-0_3_0b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_0b".ref   = "master";
  inputs."nodesnim-nightly-0_3_0b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_0b".type  = "github";
  inputs."nodesnim-nightly-0_3_0b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_0c".dir   = "nightly-0_3_0c";
  inputs."nodesnim-nightly-0_3_0c".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_0c".ref   = "master";
  inputs."nodesnim-nightly-0_3_0c".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_0c".type  = "github";
  inputs."nodesnim-nightly-0_3_0c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_1a".dir   = "nightly-0_3_1a";
  inputs."nodesnim-nightly-0_3_1a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_1a".ref   = "master";
  inputs."nodesnim-nightly-0_3_1a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_1a".type  = "github";
  inputs."nodesnim-nightly-0_3_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_1b".dir   = "nightly-0_3_1b";
  inputs."nodesnim-nightly-0_3_1b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_1b".ref   = "master";
  inputs."nodesnim-nightly-0_3_1b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_1b".type  = "github";
  inputs."nodesnim-nightly-0_3_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2a".dir   = "nightly-0_3_2a";
  inputs."nodesnim-nightly-0_3_2a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_2a".ref   = "master";
  inputs."nodesnim-nightly-0_3_2a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_2a".type  = "github";
  inputs."nodesnim-nightly-0_3_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2b".dir   = "nightly-0_3_2b";
  inputs."nodesnim-nightly-0_3_2b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_2b".ref   = "master";
  inputs."nodesnim-nightly-0_3_2b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_2b".type  = "github";
  inputs."nodesnim-nightly-0_3_2b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2c".dir   = "nightly-0_3_2c";
  inputs."nodesnim-nightly-0_3_2c".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_2c".ref   = "master";
  inputs."nodesnim-nightly-0_3_2c".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_2c".type  = "github";
  inputs."nodesnim-nightly-0_3_2c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2d".dir   = "nightly-0_3_2d";
  inputs."nodesnim-nightly-0_3_2d".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_2d".ref   = "master";
  inputs."nodesnim-nightly-0_3_2d".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_2d".type  = "github";
  inputs."nodesnim-nightly-0_3_2d".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2d".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2e".dir   = "nightly-0_3_2e";
  inputs."nodesnim-nightly-0_3_2e".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_2e".ref   = "master";
  inputs."nodesnim-nightly-0_3_2e".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_2e".type  = "github";
  inputs."nodesnim-nightly-0_3_2e".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2e".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2f".dir   = "nightly-0_3_2f";
  inputs."nodesnim-nightly-0_3_2f".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_2f".ref   = "master";
  inputs."nodesnim-nightly-0_3_2f".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_2f".type  = "github";
  inputs."nodesnim-nightly-0_3_2f".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2f".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_3a".dir   = "nightly-0_3_3a";
  inputs."nodesnim-nightly-0_3_3a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_3a".ref   = "master";
  inputs."nodesnim-nightly-0_3_3a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_3a".type  = "github";
  inputs."nodesnim-nightly-0_3_3a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_3a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_3b".dir   = "nightly-0_3_3b";
  inputs."nodesnim-nightly-0_3_3b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_3_3b".ref   = "master";
  inputs."nodesnim-nightly-0_3_3b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_3_3b".type  = "github";
  inputs."nodesnim-nightly-0_3_3b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_3b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_0a".dir   = "nightly-0_4_0a";
  inputs."nodesnim-nightly-0_4_0a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_0a".ref   = "master";
  inputs."nodesnim-nightly-0_4_0a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_0a".type  = "github";
  inputs."nodesnim-nightly-0_4_0a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_0b".dir   = "nightly-0_4_0b";
  inputs."nodesnim-nightly-0_4_0b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_0b".ref   = "master";
  inputs."nodesnim-nightly-0_4_0b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_0b".type  = "github";
  inputs."nodesnim-nightly-0_4_0b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_0c".dir   = "nightly-0_4_0c";
  inputs."nodesnim-nightly-0_4_0c".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_0c".ref   = "master";
  inputs."nodesnim-nightly-0_4_0c".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_0c".type  = "github";
  inputs."nodesnim-nightly-0_4_0c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_1a".dir   = "nightly-0_4_1a";
  inputs."nodesnim-nightly-0_4_1a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_1a".ref   = "master";
  inputs."nodesnim-nightly-0_4_1a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_1a".type  = "github";
  inputs."nodesnim-nightly-0_4_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_1b".dir   = "nightly-0_4_1b";
  inputs."nodesnim-nightly-0_4_1b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_1b".ref   = "master";
  inputs."nodesnim-nightly-0_4_1b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_1b".type  = "github";
  inputs."nodesnim-nightly-0_4_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_2a".dir   = "nightly-0_4_2a";
  inputs."nodesnim-nightly-0_4_2a".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_2a".ref   = "master";
  inputs."nodesnim-nightly-0_4_2a".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_2a".type  = "github";
  inputs."nodesnim-nightly-0_4_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_2b".dir   = "nightly-0_4_2b";
  inputs."nodesnim-nightly-0_4_2b".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly-0_4_2b".ref   = "master";
  inputs."nodesnim-nightly-0_4_2b".repo  = "nodesnim";
  inputs."nodesnim-nightly-0_4_2b".type  = "github";
  inputs."nodesnim-nightly-0_4_2b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_2b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly_0_2_1".dir   = "nightly_0_2_1";
  inputs."nodesnim-nightly_0_2_1".owner = "nim-nix-pkgs";
  inputs."nodesnim-nightly_0_2_1".ref   = "master";
  inputs."nodesnim-nightly_0_2_1".repo  = "nodesnim";
  inputs."nodesnim-nightly_0_2_1".type  = "github";
  inputs."nodesnim-nightly_0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly_0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable".dir   = "stable";
  inputs."nodesnim-stable".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable".ref   = "master";
  inputs."nodesnim-stable".repo  = "nodesnim";
  inputs."nodesnim-stable".type  = "github";
  inputs."nodesnim-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_2_1".dir   = "stable-0_2_1";
  inputs."nodesnim-stable-0_2_1".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_2_1".ref   = "master";
  inputs."nodesnim-stable-0_2_1".repo  = "nodesnim";
  inputs."nodesnim-stable-0_2_1".type  = "github";
  inputs."nodesnim-stable-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_2_2".dir   = "stable-0_2_2";
  inputs."nodesnim-stable-0_2_2".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_2_2".ref   = "master";
  inputs."nodesnim-stable-0_2_2".repo  = "nodesnim";
  inputs."nodesnim-stable-0_2_2".type  = "github";
  inputs."nodesnim-stable-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_2_4".dir   = "stable-0_2_4";
  inputs."nodesnim-stable-0_2_4".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_2_4".ref   = "master";
  inputs."nodesnim-stable-0_2_4".repo  = "nodesnim";
  inputs."nodesnim-stable-0_2_4".type  = "github";
  inputs."nodesnim-stable-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_3_0".dir   = "stable-0_3_0";
  inputs."nodesnim-stable-0_3_0".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_3_0".ref   = "master";
  inputs."nodesnim-stable-0_3_0".repo  = "nodesnim";
  inputs."nodesnim-stable-0_3_0".type  = "github";
  inputs."nodesnim-stable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_3_1".dir   = "stable-0_3_1";
  inputs."nodesnim-stable-0_3_1".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_3_1".ref   = "master";
  inputs."nodesnim-stable-0_3_1".repo  = "nodesnim";
  inputs."nodesnim-stable-0_3_1".type  = "github";
  inputs."nodesnim-stable-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_3_2".dir   = "stable-0_3_2";
  inputs."nodesnim-stable-0_3_2".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_3_2".ref   = "master";
  inputs."nodesnim-stable-0_3_2".repo  = "nodesnim";
  inputs."nodesnim-stable-0_3_2".type  = "github";
  inputs."nodesnim-stable-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_4_0".dir   = "stable-0_4_0";
  inputs."nodesnim-stable-0_4_0".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_4_0".ref   = "master";
  inputs."nodesnim-stable-0_4_0".repo  = "nodesnim";
  inputs."nodesnim-stable-0_4_0".type  = "github";
  inputs."nodesnim-stable-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_4_1".dir   = "stable-0_4_1";
  inputs."nodesnim-stable-0_4_1".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_4_1".ref   = "master";
  inputs."nodesnim-stable-0_4_1".repo  = "nodesnim";
  inputs."nodesnim-stable-0_4_1".type  = "github";
  inputs."nodesnim-stable-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_4_2".dir   = "stable-0_4_2";
  inputs."nodesnim-stable-0_4_2".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable-0_4_2".ref   = "master";
  inputs."nodesnim-stable-0_4_2".repo  = "nodesnim";
  inputs."nodesnim-stable-0_4_2".type  = "github";
  inputs."nodesnim-stable-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable_0_3_2".dir   = "stable_0_3_2";
  inputs."nodesnim-stable_0_3_2".owner = "nim-nix-pkgs";
  inputs."nodesnim-stable_0_3_2".ref   = "master";
  inputs."nodesnim-stable_0_3_2".repo  = "nodesnim";
  inputs."nodesnim-stable_0_3_2".type  = "github";
  inputs."nodesnim-stable_0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable_0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-v0_0_1".dir   = "v0_0_1";
  inputs."nodesnim-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nodesnim-v0_0_1".ref   = "master";
  inputs."nodesnim-v0_0_1".repo  = "nodesnim";
  inputs."nodesnim-v0_0_1".type  = "github";
  inputs."nodesnim-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-v0_1_1".dir   = "v0_1_1";
  inputs."nodesnim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nodesnim-v0_1_1".ref   = "master";
  inputs."nodesnim-v0_1_1".repo  = "nodesnim";
  inputs."nodesnim-v0_1_1".type  = "github";
  inputs."nodesnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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