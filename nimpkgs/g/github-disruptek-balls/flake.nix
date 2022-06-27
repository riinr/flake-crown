{
  description = ''a unittest framework with balls 🔴🟡🟢'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."balls-master".dir   = "master";
  inputs."balls-master".owner = "nim-nix-pkgs";
  inputs."balls-master".ref   = "master";
  inputs."balls-master".repo  = "balls";
  inputs."balls-master".type  = "github";
  inputs."balls-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_0".dir   = "0_1_0";
  inputs."github-disruptek-balls-0_1_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_0".ref   = "master";
  inputs."github-disruptek-balls-0_1_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_0".type  = "github";
  inputs."github-disruptek-balls-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_1".dir   = "0_1_1";
  inputs."github-disruptek-balls-0_1_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_1".ref   = "master";
  inputs."github-disruptek-balls-0_1_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_1".type  = "github";
  inputs."github-disruptek-balls-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_2".dir   = "0_1_2";
  inputs."github-disruptek-balls-0_1_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_2".ref   = "master";
  inputs."github-disruptek-balls-0_1_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_2".type  = "github";
  inputs."github-disruptek-balls-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_3".dir   = "0_1_3";
  inputs."github-disruptek-balls-0_1_3".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_3".ref   = "master";
  inputs."github-disruptek-balls-0_1_3".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_3".type  = "github";
  inputs."github-disruptek-balls-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_4".dir   = "0_1_4";
  inputs."github-disruptek-balls-0_1_4".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_4".ref   = "master";
  inputs."github-disruptek-balls-0_1_4".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_4".type  = "github";
  inputs."github-disruptek-balls-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_5".dir   = "0_1_5";
  inputs."github-disruptek-balls-0_1_5".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_5".ref   = "master";
  inputs."github-disruptek-balls-0_1_5".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_5".type  = "github";
  inputs."github-disruptek-balls-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_6".dir   = "0_1_6";
  inputs."github-disruptek-balls-0_1_6".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_6".ref   = "master";
  inputs."github-disruptek-balls-0_1_6".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_6".type  = "github";
  inputs."github-disruptek-balls-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_1_7".dir   = "0_1_7";
  inputs."github-disruptek-balls-0_1_7".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_1_7".ref   = "master";
  inputs."github-disruptek-balls-0_1_7".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_1_7".type  = "github";
  inputs."github-disruptek-balls-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_10_0".dir   = "0_10_0";
  inputs."github-disruptek-balls-0_10_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_10_0".ref   = "master";
  inputs."github-disruptek-balls-0_10_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_10_0".type  = "github";
  inputs."github-disruptek-balls-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_2_0".dir   = "0_2_0";
  inputs."github-disruptek-balls-0_2_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_2_0".ref   = "master";
  inputs."github-disruptek-balls-0_2_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_2_0".type  = "github";
  inputs."github-disruptek-balls-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_2_1".dir   = "0_2_1";
  inputs."github-disruptek-balls-0_2_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_2_1".ref   = "master";
  inputs."github-disruptek-balls-0_2_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_2_1".type  = "github";
  inputs."github-disruptek-balls-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_2_2".dir   = "0_2_2";
  inputs."github-disruptek-balls-0_2_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_2_2".ref   = "master";
  inputs."github-disruptek-balls-0_2_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_2_2".type  = "github";
  inputs."github-disruptek-balls-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_0".dir   = "0_3_0";
  inputs."github-disruptek-balls-0_3_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_0".ref   = "master";
  inputs."github-disruptek-balls-0_3_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_0".type  = "github";
  inputs."github-disruptek-balls-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_1".dir   = "0_3_1";
  inputs."github-disruptek-balls-0_3_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_1".ref   = "master";
  inputs."github-disruptek-balls-0_3_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_1".type  = "github";
  inputs."github-disruptek-balls-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_2".dir   = "0_3_2";
  inputs."github-disruptek-balls-0_3_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_2".ref   = "master";
  inputs."github-disruptek-balls-0_3_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_2".type  = "github";
  inputs."github-disruptek-balls-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_3".dir   = "0_3_3";
  inputs."github-disruptek-balls-0_3_3".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_3".ref   = "master";
  inputs."github-disruptek-balls-0_3_3".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_3".type  = "github";
  inputs."github-disruptek-balls-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_4".dir   = "0_3_4";
  inputs."github-disruptek-balls-0_3_4".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_4".ref   = "master";
  inputs."github-disruptek-balls-0_3_4".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_4".type  = "github";
  inputs."github-disruptek-balls-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_5".dir   = "0_3_5";
  inputs."github-disruptek-balls-0_3_5".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_5".ref   = "master";
  inputs."github-disruptek-balls-0_3_5".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_5".type  = "github";
  inputs."github-disruptek-balls-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_6".dir   = "0_3_6";
  inputs."github-disruptek-balls-0_3_6".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_6".ref   = "master";
  inputs."github-disruptek-balls-0_3_6".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_6".type  = "github";
  inputs."github-disruptek-balls-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_7".dir   = "0_3_7";
  inputs."github-disruptek-balls-0_3_7".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_7".ref   = "master";
  inputs."github-disruptek-balls-0_3_7".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_7".type  = "github";
  inputs."github-disruptek-balls-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_8".dir   = "0_3_8";
  inputs."github-disruptek-balls-0_3_8".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_8".ref   = "master";
  inputs."github-disruptek-balls-0_3_8".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_8".type  = "github";
  inputs."github-disruptek-balls-0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_3_9".dir   = "0_3_9";
  inputs."github-disruptek-balls-0_3_9".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_3_9".ref   = "master";
  inputs."github-disruptek-balls-0_3_9".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_3_9".type  = "github";
  inputs."github-disruptek-balls-0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_4_0".dir   = "0_4_0";
  inputs."github-disruptek-balls-0_4_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_4_0".ref   = "master";
  inputs."github-disruptek-balls-0_4_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_4_0".type  = "github";
  inputs."github-disruptek-balls-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_4_1".dir   = "0_4_1";
  inputs."github-disruptek-balls-0_4_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_4_1".ref   = "master";
  inputs."github-disruptek-balls-0_4_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_4_1".type  = "github";
  inputs."github-disruptek-balls-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_4_2".dir   = "0_4_2";
  inputs."github-disruptek-balls-0_4_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_4_2".ref   = "master";
  inputs."github-disruptek-balls-0_4_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_4_2".type  = "github";
  inputs."github-disruptek-balls-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_5_0".dir   = "0_5_0";
  inputs."github-disruptek-balls-0_5_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_5_0".ref   = "master";
  inputs."github-disruptek-balls-0_5_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_5_0".type  = "github";
  inputs."github-disruptek-balls-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_5_1".dir   = "0_5_1";
  inputs."github-disruptek-balls-0_5_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_5_1".ref   = "master";
  inputs."github-disruptek-balls-0_5_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_5_1".type  = "github";
  inputs."github-disruptek-balls-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_6_0".dir   = "0_6_0";
  inputs."github-disruptek-balls-0_6_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_6_0".ref   = "master";
  inputs."github-disruptek-balls-0_6_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_6_0".type  = "github";
  inputs."github-disruptek-balls-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_0".dir   = "0_7_0";
  inputs."github-disruptek-balls-0_7_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_0".ref   = "master";
  inputs."github-disruptek-balls-0_7_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_0".type  = "github";
  inputs."github-disruptek-balls-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_1".dir   = "0_7_1";
  inputs."github-disruptek-balls-0_7_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_1".ref   = "master";
  inputs."github-disruptek-balls-0_7_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_1".type  = "github";
  inputs."github-disruptek-balls-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_10".dir   = "0_7_10";
  inputs."github-disruptek-balls-0_7_10".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_10".ref   = "master";
  inputs."github-disruptek-balls-0_7_10".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_10".type  = "github";
  inputs."github-disruptek-balls-0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_11".dir   = "0_7_11";
  inputs."github-disruptek-balls-0_7_11".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_11".ref   = "master";
  inputs."github-disruptek-balls-0_7_11".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_11".type  = "github";
  inputs."github-disruptek-balls-0_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_12".dir   = "0_7_12";
  inputs."github-disruptek-balls-0_7_12".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_12".ref   = "master";
  inputs."github-disruptek-balls-0_7_12".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_12".type  = "github";
  inputs."github-disruptek-balls-0_7_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_13".dir   = "0_7_13";
  inputs."github-disruptek-balls-0_7_13".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_13".ref   = "master";
  inputs."github-disruptek-balls-0_7_13".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_13".type  = "github";
  inputs."github-disruptek-balls-0_7_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_2".dir   = "0_7_2";
  inputs."github-disruptek-balls-0_7_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_2".ref   = "master";
  inputs."github-disruptek-balls-0_7_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_2".type  = "github";
  inputs."github-disruptek-balls-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_3".dir   = "0_7_3";
  inputs."github-disruptek-balls-0_7_3".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_3".ref   = "master";
  inputs."github-disruptek-balls-0_7_3".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_3".type  = "github";
  inputs."github-disruptek-balls-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_4".dir   = "0_7_4";
  inputs."github-disruptek-balls-0_7_4".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_4".ref   = "master";
  inputs."github-disruptek-balls-0_7_4".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_4".type  = "github";
  inputs."github-disruptek-balls-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_5".dir   = "0_7_5";
  inputs."github-disruptek-balls-0_7_5".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_5".ref   = "master";
  inputs."github-disruptek-balls-0_7_5".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_5".type  = "github";
  inputs."github-disruptek-balls-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_6".dir   = "0_7_6";
  inputs."github-disruptek-balls-0_7_6".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_6".ref   = "master";
  inputs."github-disruptek-balls-0_7_6".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_6".type  = "github";
  inputs."github-disruptek-balls-0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_7".dir   = "0_7_7";
  inputs."github-disruptek-balls-0_7_7".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_7".ref   = "master";
  inputs."github-disruptek-balls-0_7_7".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_7".type  = "github";
  inputs."github-disruptek-balls-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_8".dir   = "0_7_8";
  inputs."github-disruptek-balls-0_7_8".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_8".ref   = "master";
  inputs."github-disruptek-balls-0_7_8".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_8".type  = "github";
  inputs."github-disruptek-balls-0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_7_9".dir   = "0_7_9";
  inputs."github-disruptek-balls-0_7_9".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_7_9".ref   = "master";
  inputs."github-disruptek-balls-0_7_9".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_7_9".type  = "github";
  inputs."github-disruptek-balls-0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_8_0".dir   = "0_8_0";
  inputs."github-disruptek-balls-0_8_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_8_0".ref   = "master";
  inputs."github-disruptek-balls-0_8_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_8_0".type  = "github";
  inputs."github-disruptek-balls-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_0".dir   = "0_9_0";
  inputs."github-disruptek-balls-0_9_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_0".ref   = "master";
  inputs."github-disruptek-balls-0_9_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_0".type  = "github";
  inputs."github-disruptek-balls-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_1".dir   = "0_9_1";
  inputs."github-disruptek-balls-0_9_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_1".ref   = "master";
  inputs."github-disruptek-balls-0_9_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_1".type  = "github";
  inputs."github-disruptek-balls-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_2".dir   = "0_9_2";
  inputs."github-disruptek-balls-0_9_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_2".ref   = "master";
  inputs."github-disruptek-balls-0_9_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_2".type  = "github";
  inputs."github-disruptek-balls-0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_3".dir   = "0_9_3";
  inputs."github-disruptek-balls-0_9_3".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_3".ref   = "master";
  inputs."github-disruptek-balls-0_9_3".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_3".type  = "github";
  inputs."github-disruptek-balls-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_4".dir   = "0_9_4";
  inputs."github-disruptek-balls-0_9_4".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_4".ref   = "master";
  inputs."github-disruptek-balls-0_9_4".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_4".type  = "github";
  inputs."github-disruptek-balls-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_5".dir   = "0_9_5";
  inputs."github-disruptek-balls-0_9_5".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_5".ref   = "master";
  inputs."github-disruptek-balls-0_9_5".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_5".type  = "github";
  inputs."github-disruptek-balls-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_6".dir   = "0_9_6";
  inputs."github-disruptek-balls-0_9_6".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_6".ref   = "master";
  inputs."github-disruptek-balls-0_9_6".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_6".type  = "github";
  inputs."github-disruptek-balls-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-0_9_7".dir   = "0_9_7";
  inputs."github-disruptek-balls-0_9_7".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-0_9_7".ref   = "master";
  inputs."github-disruptek-balls-0_9_7".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-0_9_7".type  = "github";
  inputs."github-disruptek-balls-0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_0_0".dir   = "1_0_0";
  inputs."github-disruptek-balls-1_0_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_0_0".ref   = "master";
  inputs."github-disruptek-balls-1_0_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_0_0".type  = "github";
  inputs."github-disruptek-balls-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_0_1".dir   = "1_0_1";
  inputs."github-disruptek-balls-1_0_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_0_1".ref   = "master";
  inputs."github-disruptek-balls-1_0_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_0_1".type  = "github";
  inputs."github-disruptek-balls-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_0".dir   = "1_1_0";
  inputs."github-disruptek-balls-1_1_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_0".ref   = "master";
  inputs."github-disruptek-balls-1_1_0".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_0".type  = "github";
  inputs."github-disruptek-balls-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_1".dir   = "1_1_1";
  inputs."github-disruptek-balls-1_1_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_1".ref   = "master";
  inputs."github-disruptek-balls-1_1_1".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_1".type  = "github";
  inputs."github-disruptek-balls-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_10".dir   = "1_1_10";
  inputs."github-disruptek-balls-1_1_10".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_10".ref   = "master";
  inputs."github-disruptek-balls-1_1_10".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_10".type  = "github";
  inputs."github-disruptek-balls-1_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_11".dir   = "1_1_11";
  inputs."github-disruptek-balls-1_1_11".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_11".ref   = "master";
  inputs."github-disruptek-balls-1_1_11".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_11".type  = "github";
  inputs."github-disruptek-balls-1_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_12".dir   = "1_1_12";
  inputs."github-disruptek-balls-1_1_12".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_12".ref   = "master";
  inputs."github-disruptek-balls-1_1_12".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_12".type  = "github";
  inputs."github-disruptek-balls-1_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_2".dir   = "1_1_2";
  inputs."github-disruptek-balls-1_1_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_2".ref   = "master";
  inputs."github-disruptek-balls-1_1_2".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_2".type  = "github";
  inputs."github-disruptek-balls-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_3".dir   = "1_1_3";
  inputs."github-disruptek-balls-1_1_3".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_3".ref   = "master";
  inputs."github-disruptek-balls-1_1_3".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_3".type  = "github";
  inputs."github-disruptek-balls-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_4".dir   = "1_1_4";
  inputs."github-disruptek-balls-1_1_4".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_4".ref   = "master";
  inputs."github-disruptek-balls-1_1_4".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_4".type  = "github";
  inputs."github-disruptek-balls-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_5".dir   = "1_1_5";
  inputs."github-disruptek-balls-1_1_5".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_5".ref   = "master";
  inputs."github-disruptek-balls-1_1_5".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_5".type  = "github";
  inputs."github-disruptek-balls-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_6".dir   = "1_1_6";
  inputs."github-disruptek-balls-1_1_6".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_6".ref   = "master";
  inputs."github-disruptek-balls-1_1_6".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_6".type  = "github";
  inputs."github-disruptek-balls-1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_7".dir   = "1_1_7";
  inputs."github-disruptek-balls-1_1_7".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_7".ref   = "master";
  inputs."github-disruptek-balls-1_1_7".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_7".type  = "github";
  inputs."github-disruptek-balls-1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_8".dir   = "1_1_8";
  inputs."github-disruptek-balls-1_1_8".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_8".ref   = "master";
  inputs."github-disruptek-balls-1_1_8".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_8".type  = "github";
  inputs."github-disruptek-balls-1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-balls-1_1_9".dir   = "1_1_9";
  inputs."github-disruptek-balls-1_1_9".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls-1_1_9".ref   = "master";
  inputs."github-disruptek-balls-1_1_9".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls-1_1_9".type  = "github";
  inputs."github-disruptek-balls-1_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls-1_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_0".dir   = "2_0_0";
  inputs."balls-2_0_0".owner = "nim-nix-pkgs";
  inputs."balls-2_0_0".ref   = "master";
  inputs."balls-2_0_0".repo  = "balls";
  inputs."balls-2_0_0".type  = "github";
  inputs."balls-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_1".dir   = "2_0_1";
  inputs."balls-2_0_1".owner = "nim-nix-pkgs";
  inputs."balls-2_0_1".ref   = "master";
  inputs."balls-2_0_1".repo  = "balls";
  inputs."balls-2_0_1".type  = "github";
  inputs."balls-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_2".dir   = "2_0_2";
  inputs."balls-2_0_2".owner = "nim-nix-pkgs";
  inputs."balls-2_0_2".ref   = "master";
  inputs."balls-2_0_2".repo  = "balls";
  inputs."balls-2_0_2".type  = "github";
  inputs."balls-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_3".dir   = "2_0_3";
  inputs."balls-2_0_3".owner = "nim-nix-pkgs";
  inputs."balls-2_0_3".ref   = "master";
  inputs."balls-2_0_3".repo  = "balls";
  inputs."balls-2_0_3".type  = "github";
  inputs."balls-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_4".dir   = "2_0_4";
  inputs."balls-2_0_4".owner = "nim-nix-pkgs";
  inputs."balls-2_0_4".ref   = "master";
  inputs."balls-2_0_4".repo  = "balls";
  inputs."balls-2_0_4".type  = "github";
  inputs."balls-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_5".dir   = "2_0_5";
  inputs."balls-2_0_5".owner = "nim-nix-pkgs";
  inputs."balls-2_0_5".ref   = "master";
  inputs."balls-2_0_5".repo  = "balls";
  inputs."balls-2_0_5".type  = "github";
  inputs."balls-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_6".dir   = "2_0_6";
  inputs."balls-2_0_6".owner = "nim-nix-pkgs";
  inputs."balls-2_0_6".ref   = "master";
  inputs."balls-2_0_6".repo  = "balls";
  inputs."balls-2_0_6".type  = "github";
  inputs."balls-2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_0_7".dir   = "2_0_7";
  inputs."balls-2_0_7".owner = "nim-nix-pkgs";
  inputs."balls-2_0_7".ref   = "master";
  inputs."balls-2_0_7".repo  = "balls";
  inputs."balls-2_0_7".type  = "github";
  inputs."balls-2_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_1_0".dir   = "2_1_0";
  inputs."balls-2_1_0".owner = "nim-nix-pkgs";
  inputs."balls-2_1_0".ref   = "master";
  inputs."balls-2_1_0".repo  = "balls";
  inputs."balls-2_1_0".type  = "github";
  inputs."balls-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_2_0".dir   = "2_2_0";
  inputs."balls-2_2_0".owner = "nim-nix-pkgs";
  inputs."balls-2_2_0".ref   = "master";
  inputs."balls-2_2_0".repo  = "balls";
  inputs."balls-2_2_0".type  = "github";
  inputs."balls-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_2_1".dir   = "2_2_1";
  inputs."balls-2_2_1".owner = "nim-nix-pkgs";
  inputs."balls-2_2_1".ref   = "master";
  inputs."balls-2_2_1".repo  = "balls";
  inputs."balls-2_2_1".type  = "github";
  inputs."balls-2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_3_0".dir   = "2_3_0";
  inputs."balls-2_3_0".owner = "nim-nix-pkgs";
  inputs."balls-2_3_0".ref   = "master";
  inputs."balls-2_3_0".repo  = "balls";
  inputs."balls-2_3_0".type  = "github";
  inputs."balls-2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_3_1".dir   = "2_3_1";
  inputs."balls-2_3_1".owner = "nim-nix-pkgs";
  inputs."balls-2_3_1".ref   = "master";
  inputs."balls-2_3_1".repo  = "balls";
  inputs."balls-2_3_1".type  = "github";
  inputs."balls-2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_4_0".dir   = "2_4_0";
  inputs."balls-2_4_0".owner = "nim-nix-pkgs";
  inputs."balls-2_4_0".ref   = "master";
  inputs."balls-2_4_0".repo  = "balls";
  inputs."balls-2_4_0".type  = "github";
  inputs."balls-2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_4_1".dir   = "2_4_1";
  inputs."balls-2_4_1".owner = "nim-nix-pkgs";
  inputs."balls-2_4_1".ref   = "master";
  inputs."balls-2_4_1".repo  = "balls";
  inputs."balls-2_4_1".type  = "github";
  inputs."balls-2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_4_2".dir   = "2_4_2";
  inputs."balls-2_4_2".owner = "nim-nix-pkgs";
  inputs."balls-2_4_2".ref   = "master";
  inputs."balls-2_4_2".repo  = "balls";
  inputs."balls-2_4_2".type  = "github";
  inputs."balls-2_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_4_3".dir   = "2_4_3";
  inputs."balls-2_4_3".owner = "nim-nix-pkgs";
  inputs."balls-2_4_3".ref   = "master";
  inputs."balls-2_4_3".repo  = "balls";
  inputs."balls-2_4_3".type  = "github";
  inputs."balls-2_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_4_4".dir   = "2_4_4";
  inputs."balls-2_4_4".owner = "nim-nix-pkgs";
  inputs."balls-2_4_4".ref   = "master";
  inputs."balls-2_4_4".repo  = "balls";
  inputs."balls-2_4_4".type  = "github";
  inputs."balls-2_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_4_5".dir   = "2_4_5";
  inputs."balls-2_4_5".owner = "nim-nix-pkgs";
  inputs."balls-2_4_5".ref   = "master";
  inputs."balls-2_4_5".repo  = "balls";
  inputs."balls-2_4_5".type  = "github";
  inputs."balls-2_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_5_0".dir   = "2_5_0";
  inputs."balls-2_5_0".owner = "nim-nix-pkgs";
  inputs."balls-2_5_0".ref   = "master";
  inputs."balls-2_5_0".repo  = "balls";
  inputs."balls-2_5_0".type  = "github";
  inputs."balls-2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_5_1".dir   = "2_5_1";
  inputs."balls-2_5_1".owner = "nim-nix-pkgs";
  inputs."balls-2_5_1".ref   = "master";
  inputs."balls-2_5_1".repo  = "balls";
  inputs."balls-2_5_1".type  = "github";
  inputs."balls-2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_5_2".dir   = "2_5_2";
  inputs."balls-2_5_2".owner = "nim-nix-pkgs";
  inputs."balls-2_5_2".ref   = "master";
  inputs."balls-2_5_2".repo  = "balls";
  inputs."balls-2_5_2".type  = "github";
  inputs."balls-2_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_5_3".dir   = "2_5_3";
  inputs."balls-2_5_3".owner = "nim-nix-pkgs";
  inputs."balls-2_5_3".ref   = "master";
  inputs."balls-2_5_3".repo  = "balls";
  inputs."balls-2_5_3".type  = "github";
  inputs."balls-2_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_5_4".dir   = "2_5_4";
  inputs."balls-2_5_4".owner = "nim-nix-pkgs";
  inputs."balls-2_5_4".ref   = "master";
  inputs."balls-2_5_4".repo  = "balls";
  inputs."balls-2_5_4".type  = "github";
  inputs."balls-2_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_6_0".dir   = "2_6_0";
  inputs."balls-2_6_0".owner = "nim-nix-pkgs";
  inputs."balls-2_6_0".ref   = "master";
  inputs."balls-2_6_0".repo  = "balls";
  inputs."balls-2_6_0".type  = "github";
  inputs."balls-2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_6_1".dir   = "2_6_1";
  inputs."balls-2_6_1".owner = "nim-nix-pkgs";
  inputs."balls-2_6_1".ref   = "master";
  inputs."balls-2_6_1".repo  = "balls";
  inputs."balls-2_6_1".type  = "github";
  inputs."balls-2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_6_2".dir   = "2_6_2";
  inputs."balls-2_6_2".owner = "nim-nix-pkgs";
  inputs."balls-2_6_2".ref   = "master";
  inputs."balls-2_6_2".repo  = "balls";
  inputs."balls-2_6_2".type  = "github";
  inputs."balls-2_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-2_7_0".dir   = "2_7_0";
  inputs."balls-2_7_0".owner = "nim-nix-pkgs";
  inputs."balls-2_7_0".ref   = "master";
  inputs."balls-2_7_0".repo  = "balls";
  inputs."balls-2_7_0".type  = "github";
  inputs."balls-2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_0_0".dir   = "3_0_0";
  inputs."balls-3_0_0".owner = "nim-nix-pkgs";
  inputs."balls-3_0_0".ref   = "master";
  inputs."balls-3_0_0".repo  = "balls";
  inputs."balls-3_0_0".type  = "github";
  inputs."balls-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_0_1".dir   = "3_0_1";
  inputs."balls-3_0_1".owner = "nim-nix-pkgs";
  inputs."balls-3_0_1".ref   = "master";
  inputs."balls-3_0_1".repo  = "balls";
  inputs."balls-3_0_1".type  = "github";
  inputs."balls-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_1_0".dir   = "3_1_0";
  inputs."balls-3_1_0".owner = "nim-nix-pkgs";
  inputs."balls-3_1_0".ref   = "master";
  inputs."balls-3_1_0".repo  = "balls";
  inputs."balls-3_1_0".type  = "github";
  inputs."balls-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_2_0".dir   = "3_2_0";
  inputs."balls-3_2_0".owner = "nim-nix-pkgs";
  inputs."balls-3_2_0".ref   = "master";
  inputs."balls-3_2_0".repo  = "balls";
  inputs."balls-3_2_0".type  = "github";
  inputs."balls-3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_2_1".dir   = "3_2_1";
  inputs."balls-3_2_1".owner = "nim-nix-pkgs";
  inputs."balls-3_2_1".ref   = "master";
  inputs."balls-3_2_1".repo  = "balls";
  inputs."balls-3_2_1".type  = "github";
  inputs."balls-3_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_0".dir   = "3_3_0";
  inputs."balls-3_3_0".owner = "nim-nix-pkgs";
  inputs."balls-3_3_0".ref   = "master";
  inputs."balls-3_3_0".repo  = "balls";
  inputs."balls-3_3_0".type  = "github";
  inputs."balls-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_1".dir   = "3_3_1";
  inputs."balls-3_3_1".owner = "nim-nix-pkgs";
  inputs."balls-3_3_1".ref   = "master";
  inputs."balls-3_3_1".repo  = "balls";
  inputs."balls-3_3_1".type  = "github";
  inputs."balls-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_2".dir   = "3_3_2";
  inputs."balls-3_3_2".owner = "nim-nix-pkgs";
  inputs."balls-3_3_2".ref   = "master";
  inputs."balls-3_3_2".repo  = "balls";
  inputs."balls-3_3_2".type  = "github";
  inputs."balls-3_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_3".dir   = "3_3_3";
  inputs."balls-3_3_3".owner = "nim-nix-pkgs";
  inputs."balls-3_3_3".ref   = "master";
  inputs."balls-3_3_3".repo  = "balls";
  inputs."balls-3_3_3".type  = "github";
  inputs."balls-3_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_4".dir   = "3_3_4";
  inputs."balls-3_3_4".owner = "nim-nix-pkgs";
  inputs."balls-3_3_4".ref   = "master";
  inputs."balls-3_3_4".repo  = "balls";
  inputs."balls-3_3_4".type  = "github";
  inputs."balls-3_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_5".dir   = "3_3_5";
  inputs."balls-3_3_5".owner = "nim-nix-pkgs";
  inputs."balls-3_3_5".ref   = "master";
  inputs."balls-3_3_5".repo  = "balls";
  inputs."balls-3_3_5".type  = "github";
  inputs."balls-3_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_6".dir   = "3_3_6";
  inputs."balls-3_3_6".owner = "nim-nix-pkgs";
  inputs."balls-3_3_6".ref   = "master";
  inputs."balls-3_3_6".repo  = "balls";
  inputs."balls-3_3_6".type  = "github";
  inputs."balls-3_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_3_7".dir   = "3_3_7";
  inputs."balls-3_3_7".owner = "nim-nix-pkgs";
  inputs."balls-3_3_7".ref   = "master";
  inputs."balls-3_3_7".repo  = "balls";
  inputs."balls-3_3_7".type  = "github";
  inputs."balls-3_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_4_0".dir   = "3_4_0";
  inputs."balls-3_4_0".owner = "nim-nix-pkgs";
  inputs."balls-3_4_0".ref   = "master";
  inputs."balls-3_4_0".repo  = "balls";
  inputs."balls-3_4_0".type  = "github";
  inputs."balls-3_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_4_1".dir   = "3_4_1";
  inputs."balls-3_4_1".owner = "nim-nix-pkgs";
  inputs."balls-3_4_1".ref   = "master";
  inputs."balls-3_4_1".repo  = "balls";
  inputs."balls-3_4_1".type  = "github";
  inputs."balls-3_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_4_2".dir   = "3_4_2";
  inputs."balls-3_4_2".owner = "nim-nix-pkgs";
  inputs."balls-3_4_2".ref   = "master";
  inputs."balls-3_4_2".repo  = "balls";
  inputs."balls-3_4_2".type  = "github";
  inputs."balls-3_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_5_0".dir   = "3_5_0";
  inputs."balls-3_5_0".owner = "nim-nix-pkgs";
  inputs."balls-3_5_0".ref   = "master";
  inputs."balls-3_5_0".repo  = "balls";
  inputs."balls-3_5_0".type  = "github";
  inputs."balls-3_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_5_1".dir   = "3_5_1";
  inputs."balls-3_5_1".owner = "nim-nix-pkgs";
  inputs."balls-3_5_1".ref   = "master";
  inputs."balls-3_5_1".repo  = "balls";
  inputs."balls-3_5_1".type  = "github";
  inputs."balls-3_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_6_0".dir   = "3_6_0";
  inputs."balls-3_6_0".owner = "nim-nix-pkgs";
  inputs."balls-3_6_0".ref   = "master";
  inputs."balls-3_6_0".repo  = "balls";
  inputs."balls-3_6_0".type  = "github";
  inputs."balls-3_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-3_7_0".dir   = "3_7_0";
  inputs."balls-3_7_0".owner = "nim-nix-pkgs";
  inputs."balls-3_7_0".ref   = "master";
  inputs."balls-3_7_0".repo  = "balls";
  inputs."balls-3_7_0".type  = "github";
  inputs."balls-3_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-3_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls-rc".dir   = "rc";
  inputs."balls-rc".owner = "nim-nix-pkgs";
  inputs."balls-rc".ref   = "master";
  inputs."balls-rc".repo  = "balls";
  inputs."balls-rc".type  = "github";
  inputs."balls-rc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls-rc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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