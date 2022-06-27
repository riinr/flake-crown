{
  description = ''balls'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."testes-master".dir   = "master";
  inputs."testes-master".owner = "nim-nix-pkgs";
  inputs."testes-master".ref   = "master";
  inputs."testes-master".repo  = "testes";
  inputs."testes-master".type  = "github";
  inputs."testes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_0".dir   = "0_1_0";
  inputs."testes-0_1_0".owner = "nim-nix-pkgs";
  inputs."testes-0_1_0".ref   = "master";
  inputs."testes-0_1_0".repo  = "testes";
  inputs."testes-0_1_0".type  = "github";
  inputs."testes-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_1".dir   = "0_1_1";
  inputs."testes-0_1_1".owner = "nim-nix-pkgs";
  inputs."testes-0_1_1".ref   = "master";
  inputs."testes-0_1_1".repo  = "testes";
  inputs."testes-0_1_1".type  = "github";
  inputs."testes-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_2".dir   = "0_1_2";
  inputs."testes-0_1_2".owner = "nim-nix-pkgs";
  inputs."testes-0_1_2".ref   = "master";
  inputs."testes-0_1_2".repo  = "testes";
  inputs."testes-0_1_2".type  = "github";
  inputs."testes-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_3".dir   = "0_1_3";
  inputs."testes-0_1_3".owner = "nim-nix-pkgs";
  inputs."testes-0_1_3".ref   = "master";
  inputs."testes-0_1_3".repo  = "testes";
  inputs."testes-0_1_3".type  = "github";
  inputs."testes-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_4".dir   = "0_1_4";
  inputs."testes-0_1_4".owner = "nim-nix-pkgs";
  inputs."testes-0_1_4".ref   = "master";
  inputs."testes-0_1_4".repo  = "testes";
  inputs."testes-0_1_4".type  = "github";
  inputs."testes-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_5".dir   = "0_1_5";
  inputs."testes-0_1_5".owner = "nim-nix-pkgs";
  inputs."testes-0_1_5".ref   = "master";
  inputs."testes-0_1_5".repo  = "testes";
  inputs."testes-0_1_5".type  = "github";
  inputs."testes-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_6".dir   = "0_1_6";
  inputs."testes-0_1_6".owner = "nim-nix-pkgs";
  inputs."testes-0_1_6".ref   = "master";
  inputs."testes-0_1_6".repo  = "testes";
  inputs."testes-0_1_6".type  = "github";
  inputs."testes-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_1_7".dir   = "0_1_7";
  inputs."testes-0_1_7".owner = "nim-nix-pkgs";
  inputs."testes-0_1_7".ref   = "master";
  inputs."testes-0_1_7".repo  = "testes";
  inputs."testes-0_1_7".type  = "github";
  inputs."testes-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_10_0".dir   = "0_10_0";
  inputs."testes-0_10_0".owner = "nim-nix-pkgs";
  inputs."testes-0_10_0".ref   = "master";
  inputs."testes-0_10_0".repo  = "testes";
  inputs."testes-0_10_0".type  = "github";
  inputs."testes-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_2_0".dir   = "0_2_0";
  inputs."testes-0_2_0".owner = "nim-nix-pkgs";
  inputs."testes-0_2_0".ref   = "master";
  inputs."testes-0_2_0".repo  = "testes";
  inputs."testes-0_2_0".type  = "github";
  inputs."testes-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_2_1".dir   = "0_2_1";
  inputs."testes-0_2_1".owner = "nim-nix-pkgs";
  inputs."testes-0_2_1".ref   = "master";
  inputs."testes-0_2_1".repo  = "testes";
  inputs."testes-0_2_1".type  = "github";
  inputs."testes-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_2_2".dir   = "0_2_2";
  inputs."testes-0_2_2".owner = "nim-nix-pkgs";
  inputs."testes-0_2_2".ref   = "master";
  inputs."testes-0_2_2".repo  = "testes";
  inputs."testes-0_2_2".type  = "github";
  inputs."testes-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_0".dir   = "0_3_0";
  inputs."testes-0_3_0".owner = "nim-nix-pkgs";
  inputs."testes-0_3_0".ref   = "master";
  inputs."testes-0_3_0".repo  = "testes";
  inputs."testes-0_3_0".type  = "github";
  inputs."testes-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_1".dir   = "0_3_1";
  inputs."testes-0_3_1".owner = "nim-nix-pkgs";
  inputs."testes-0_3_1".ref   = "master";
  inputs."testes-0_3_1".repo  = "testes";
  inputs."testes-0_3_1".type  = "github";
  inputs."testes-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_2".dir   = "0_3_2";
  inputs."testes-0_3_2".owner = "nim-nix-pkgs";
  inputs."testes-0_3_2".ref   = "master";
  inputs."testes-0_3_2".repo  = "testes";
  inputs."testes-0_3_2".type  = "github";
  inputs."testes-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_3".dir   = "0_3_3";
  inputs."testes-0_3_3".owner = "nim-nix-pkgs";
  inputs."testes-0_3_3".ref   = "master";
  inputs."testes-0_3_3".repo  = "testes";
  inputs."testes-0_3_3".type  = "github";
  inputs."testes-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_4".dir   = "0_3_4";
  inputs."testes-0_3_4".owner = "nim-nix-pkgs";
  inputs."testes-0_3_4".ref   = "master";
  inputs."testes-0_3_4".repo  = "testes";
  inputs."testes-0_3_4".type  = "github";
  inputs."testes-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_5".dir   = "0_3_5";
  inputs."testes-0_3_5".owner = "nim-nix-pkgs";
  inputs."testes-0_3_5".ref   = "master";
  inputs."testes-0_3_5".repo  = "testes";
  inputs."testes-0_3_5".type  = "github";
  inputs."testes-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_6".dir   = "0_3_6";
  inputs."testes-0_3_6".owner = "nim-nix-pkgs";
  inputs."testes-0_3_6".ref   = "master";
  inputs."testes-0_3_6".repo  = "testes";
  inputs."testes-0_3_6".type  = "github";
  inputs."testes-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_7".dir   = "0_3_7";
  inputs."testes-0_3_7".owner = "nim-nix-pkgs";
  inputs."testes-0_3_7".ref   = "master";
  inputs."testes-0_3_7".repo  = "testes";
  inputs."testes-0_3_7".type  = "github";
  inputs."testes-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_8".dir   = "0_3_8";
  inputs."testes-0_3_8".owner = "nim-nix-pkgs";
  inputs."testes-0_3_8".ref   = "master";
  inputs."testes-0_3_8".repo  = "testes";
  inputs."testes-0_3_8".type  = "github";
  inputs."testes-0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_3_9".dir   = "0_3_9";
  inputs."testes-0_3_9".owner = "nim-nix-pkgs";
  inputs."testes-0_3_9".ref   = "master";
  inputs."testes-0_3_9".repo  = "testes";
  inputs."testes-0_3_9".type  = "github";
  inputs."testes-0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_4_0".dir   = "0_4_0";
  inputs."testes-0_4_0".owner = "nim-nix-pkgs";
  inputs."testes-0_4_0".ref   = "master";
  inputs."testes-0_4_0".repo  = "testes";
  inputs."testes-0_4_0".type  = "github";
  inputs."testes-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_4_1".dir   = "0_4_1";
  inputs."testes-0_4_1".owner = "nim-nix-pkgs";
  inputs."testes-0_4_1".ref   = "master";
  inputs."testes-0_4_1".repo  = "testes";
  inputs."testes-0_4_1".type  = "github";
  inputs."testes-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_4_2".dir   = "0_4_2";
  inputs."testes-0_4_2".owner = "nim-nix-pkgs";
  inputs."testes-0_4_2".ref   = "master";
  inputs."testes-0_4_2".repo  = "testes";
  inputs."testes-0_4_2".type  = "github";
  inputs."testes-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_5_0".dir   = "0_5_0";
  inputs."testes-0_5_0".owner = "nim-nix-pkgs";
  inputs."testes-0_5_0".ref   = "master";
  inputs."testes-0_5_0".repo  = "testes";
  inputs."testes-0_5_0".type  = "github";
  inputs."testes-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_5_1".dir   = "0_5_1";
  inputs."testes-0_5_1".owner = "nim-nix-pkgs";
  inputs."testes-0_5_1".ref   = "master";
  inputs."testes-0_5_1".repo  = "testes";
  inputs."testes-0_5_1".type  = "github";
  inputs."testes-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_6_0".dir   = "0_6_0";
  inputs."testes-0_6_0".owner = "nim-nix-pkgs";
  inputs."testes-0_6_0".ref   = "master";
  inputs."testes-0_6_0".repo  = "testes";
  inputs."testes-0_6_0".type  = "github";
  inputs."testes-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_0".dir   = "0_7_0";
  inputs."testes-0_7_0".owner = "nim-nix-pkgs";
  inputs."testes-0_7_0".ref   = "master";
  inputs."testes-0_7_0".repo  = "testes";
  inputs."testes-0_7_0".type  = "github";
  inputs."testes-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_1".dir   = "0_7_1";
  inputs."testes-0_7_1".owner = "nim-nix-pkgs";
  inputs."testes-0_7_1".ref   = "master";
  inputs."testes-0_7_1".repo  = "testes";
  inputs."testes-0_7_1".type  = "github";
  inputs."testes-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_10".dir   = "0_7_10";
  inputs."testes-0_7_10".owner = "nim-nix-pkgs";
  inputs."testes-0_7_10".ref   = "master";
  inputs."testes-0_7_10".repo  = "testes";
  inputs."testes-0_7_10".type  = "github";
  inputs."testes-0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_11".dir   = "0_7_11";
  inputs."testes-0_7_11".owner = "nim-nix-pkgs";
  inputs."testes-0_7_11".ref   = "master";
  inputs."testes-0_7_11".repo  = "testes";
  inputs."testes-0_7_11".type  = "github";
  inputs."testes-0_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_12".dir   = "0_7_12";
  inputs."testes-0_7_12".owner = "nim-nix-pkgs";
  inputs."testes-0_7_12".ref   = "master";
  inputs."testes-0_7_12".repo  = "testes";
  inputs."testes-0_7_12".type  = "github";
  inputs."testes-0_7_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_13".dir   = "0_7_13";
  inputs."testes-0_7_13".owner = "nim-nix-pkgs";
  inputs."testes-0_7_13".ref   = "master";
  inputs."testes-0_7_13".repo  = "testes";
  inputs."testes-0_7_13".type  = "github";
  inputs."testes-0_7_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_2".dir   = "0_7_2";
  inputs."testes-0_7_2".owner = "nim-nix-pkgs";
  inputs."testes-0_7_2".ref   = "master";
  inputs."testes-0_7_2".repo  = "testes";
  inputs."testes-0_7_2".type  = "github";
  inputs."testes-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_3".dir   = "0_7_3";
  inputs."testes-0_7_3".owner = "nim-nix-pkgs";
  inputs."testes-0_7_3".ref   = "master";
  inputs."testes-0_7_3".repo  = "testes";
  inputs."testes-0_7_3".type  = "github";
  inputs."testes-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_4".dir   = "0_7_4";
  inputs."testes-0_7_4".owner = "nim-nix-pkgs";
  inputs."testes-0_7_4".ref   = "master";
  inputs."testes-0_7_4".repo  = "testes";
  inputs."testes-0_7_4".type  = "github";
  inputs."testes-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_5".dir   = "0_7_5";
  inputs."testes-0_7_5".owner = "nim-nix-pkgs";
  inputs."testes-0_7_5".ref   = "master";
  inputs."testes-0_7_5".repo  = "testes";
  inputs."testes-0_7_5".type  = "github";
  inputs."testes-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_6".dir   = "0_7_6";
  inputs."testes-0_7_6".owner = "nim-nix-pkgs";
  inputs."testes-0_7_6".ref   = "master";
  inputs."testes-0_7_6".repo  = "testes";
  inputs."testes-0_7_6".type  = "github";
  inputs."testes-0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_7".dir   = "0_7_7";
  inputs."testes-0_7_7".owner = "nim-nix-pkgs";
  inputs."testes-0_7_7".ref   = "master";
  inputs."testes-0_7_7".repo  = "testes";
  inputs."testes-0_7_7".type  = "github";
  inputs."testes-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_8".dir   = "0_7_8";
  inputs."testes-0_7_8".owner = "nim-nix-pkgs";
  inputs."testes-0_7_8".ref   = "master";
  inputs."testes-0_7_8".repo  = "testes";
  inputs."testes-0_7_8".type  = "github";
  inputs."testes-0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_7_9".dir   = "0_7_9";
  inputs."testes-0_7_9".owner = "nim-nix-pkgs";
  inputs."testes-0_7_9".ref   = "master";
  inputs."testes-0_7_9".repo  = "testes";
  inputs."testes-0_7_9".type  = "github";
  inputs."testes-0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_8_0".dir   = "0_8_0";
  inputs."testes-0_8_0".owner = "nim-nix-pkgs";
  inputs."testes-0_8_0".ref   = "master";
  inputs."testes-0_8_0".repo  = "testes";
  inputs."testes-0_8_0".type  = "github";
  inputs."testes-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_0".dir   = "0_9_0";
  inputs."testes-0_9_0".owner = "nim-nix-pkgs";
  inputs."testes-0_9_0".ref   = "master";
  inputs."testes-0_9_0".repo  = "testes";
  inputs."testes-0_9_0".type  = "github";
  inputs."testes-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_1".dir   = "0_9_1";
  inputs."testes-0_9_1".owner = "nim-nix-pkgs";
  inputs."testes-0_9_1".ref   = "master";
  inputs."testes-0_9_1".repo  = "testes";
  inputs."testes-0_9_1".type  = "github";
  inputs."testes-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_2".dir   = "0_9_2";
  inputs."testes-0_9_2".owner = "nim-nix-pkgs";
  inputs."testes-0_9_2".ref   = "master";
  inputs."testes-0_9_2".repo  = "testes";
  inputs."testes-0_9_2".type  = "github";
  inputs."testes-0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_3".dir   = "0_9_3";
  inputs."testes-0_9_3".owner = "nim-nix-pkgs";
  inputs."testes-0_9_3".ref   = "master";
  inputs."testes-0_9_3".repo  = "testes";
  inputs."testes-0_9_3".type  = "github";
  inputs."testes-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_4".dir   = "0_9_4";
  inputs."testes-0_9_4".owner = "nim-nix-pkgs";
  inputs."testes-0_9_4".ref   = "master";
  inputs."testes-0_9_4".repo  = "testes";
  inputs."testes-0_9_4".type  = "github";
  inputs."testes-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_5".dir   = "0_9_5";
  inputs."testes-0_9_5".owner = "nim-nix-pkgs";
  inputs."testes-0_9_5".ref   = "master";
  inputs."testes-0_9_5".repo  = "testes";
  inputs."testes-0_9_5".type  = "github";
  inputs."testes-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_6".dir   = "0_9_6";
  inputs."testes-0_9_6".owner = "nim-nix-pkgs";
  inputs."testes-0_9_6".ref   = "master";
  inputs."testes-0_9_6".repo  = "testes";
  inputs."testes-0_9_6".type  = "github";
  inputs."testes-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-0_9_7".dir   = "0_9_7";
  inputs."testes-0_9_7".owner = "nim-nix-pkgs";
  inputs."testes-0_9_7".ref   = "master";
  inputs."testes-0_9_7".repo  = "testes";
  inputs."testes-0_9_7".type  = "github";
  inputs."testes-0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_0_0".dir   = "1_0_0";
  inputs."testes-1_0_0".owner = "nim-nix-pkgs";
  inputs."testes-1_0_0".ref   = "master";
  inputs."testes-1_0_0".repo  = "testes";
  inputs."testes-1_0_0".type  = "github";
  inputs."testes-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_0_1".dir   = "1_0_1";
  inputs."testes-1_0_1".owner = "nim-nix-pkgs";
  inputs."testes-1_0_1".ref   = "master";
  inputs."testes-1_0_1".repo  = "testes";
  inputs."testes-1_0_1".type  = "github";
  inputs."testes-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_0_2".dir   = "1_0_2";
  inputs."testes-1_0_2".owner = "nim-nix-pkgs";
  inputs."testes-1_0_2".ref   = "master";
  inputs."testes-1_0_2".repo  = "testes";
  inputs."testes-1_0_2".type  = "github";
  inputs."testes-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_0".dir   = "1_1_0";
  inputs."testes-1_1_0".owner = "nim-nix-pkgs";
  inputs."testes-1_1_0".ref   = "master";
  inputs."testes-1_1_0".repo  = "testes";
  inputs."testes-1_1_0".type  = "github";
  inputs."testes-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_1".dir   = "1_1_1";
  inputs."testes-1_1_1".owner = "nim-nix-pkgs";
  inputs."testes-1_1_1".ref   = "master";
  inputs."testes-1_1_1".repo  = "testes";
  inputs."testes-1_1_1".type  = "github";
  inputs."testes-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_10".dir   = "1_1_10";
  inputs."testes-1_1_10".owner = "nim-nix-pkgs";
  inputs."testes-1_1_10".ref   = "master";
  inputs."testes-1_1_10".repo  = "testes";
  inputs."testes-1_1_10".type  = "github";
  inputs."testes-1_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_11".dir   = "1_1_11";
  inputs."testes-1_1_11".owner = "nim-nix-pkgs";
  inputs."testes-1_1_11".ref   = "master";
  inputs."testes-1_1_11".repo  = "testes";
  inputs."testes-1_1_11".type  = "github";
  inputs."testes-1_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_12".dir   = "1_1_12";
  inputs."testes-1_1_12".owner = "nim-nix-pkgs";
  inputs."testes-1_1_12".ref   = "master";
  inputs."testes-1_1_12".repo  = "testes";
  inputs."testes-1_1_12".type  = "github";
  inputs."testes-1_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_2".dir   = "1_1_2";
  inputs."testes-1_1_2".owner = "nim-nix-pkgs";
  inputs."testes-1_1_2".ref   = "master";
  inputs."testes-1_1_2".repo  = "testes";
  inputs."testes-1_1_2".type  = "github";
  inputs."testes-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_3".dir   = "1_1_3";
  inputs."testes-1_1_3".owner = "nim-nix-pkgs";
  inputs."testes-1_1_3".ref   = "master";
  inputs."testes-1_1_3".repo  = "testes";
  inputs."testes-1_1_3".type  = "github";
  inputs."testes-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_4".dir   = "1_1_4";
  inputs."testes-1_1_4".owner = "nim-nix-pkgs";
  inputs."testes-1_1_4".ref   = "master";
  inputs."testes-1_1_4".repo  = "testes";
  inputs."testes-1_1_4".type  = "github";
  inputs."testes-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_5".dir   = "1_1_5";
  inputs."testes-1_1_5".owner = "nim-nix-pkgs";
  inputs."testes-1_1_5".ref   = "master";
  inputs."testes-1_1_5".repo  = "testes";
  inputs."testes-1_1_5".type  = "github";
  inputs."testes-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_6".dir   = "1_1_6";
  inputs."testes-1_1_6".owner = "nim-nix-pkgs";
  inputs."testes-1_1_6".ref   = "master";
  inputs."testes-1_1_6".repo  = "testes";
  inputs."testes-1_1_6".type  = "github";
  inputs."testes-1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_7".dir   = "1_1_7";
  inputs."testes-1_1_7".owner = "nim-nix-pkgs";
  inputs."testes-1_1_7".ref   = "master";
  inputs."testes-1_1_7".repo  = "testes";
  inputs."testes-1_1_7".type  = "github";
  inputs."testes-1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_8".dir   = "1_1_8";
  inputs."testes-1_1_8".owner = "nim-nix-pkgs";
  inputs."testes-1_1_8".ref   = "master";
  inputs."testes-1_1_8".repo  = "testes";
  inputs."testes-1_1_8".type  = "github";
  inputs."testes-1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testes-1_1_9".dir   = "1_1_9";
  inputs."testes-1_1_9".owner = "nim-nix-pkgs";
  inputs."testes-1_1_9".ref   = "master";
  inputs."testes-1_1_9".repo  = "testes";
  inputs."testes-1_1_9".type  = "github";
  inputs."testes-1_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testes-1_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-testes-2_0_0".dir   = "2_0_0";
  inputs."github-disruptek-testes-2_0_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-testes-2_0_0".ref   = "master";
  inputs."github-disruptek-testes-2_0_0".repo  = "github-disruptek-testes";
  inputs."github-disruptek-testes-2_0_0".type  = "github";
  inputs."github-disruptek-testes-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-testes-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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