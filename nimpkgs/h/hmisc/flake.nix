{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hmisc-devel".dir   = "devel";
  inputs."hmisc-devel".owner = "nim-nix-pkgs";
  inputs."hmisc-devel".ref   = "master";
  inputs."hmisc-devel".repo  = "hmisc";
  inputs."hmisc-devel".type  = "github";
  inputs."hmisc-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-master".dir   = "master";
  inputs."hmisc-master".owner = "nim-nix-pkgs";
  inputs."hmisc-master".ref   = "master";
  inputs."hmisc-master".repo  = "hmisc";
  inputs."hmisc-master".type  = "github";
  inputs."hmisc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_0".dir   = "v0_10_0";
  inputs."hmisc-v0_10_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_0".ref   = "master";
  inputs."hmisc-v0_10_0".repo  = "hmisc";
  inputs."hmisc-v0_10_0".type  = "github";
  inputs."hmisc-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_2".dir   = "v0_10_2";
  inputs."hmisc-v0_10_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_2".ref   = "master";
  inputs."hmisc-v0_10_2".repo  = "hmisc";
  inputs."hmisc-v0_10_2".type  = "github";
  inputs."hmisc-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_3".dir   = "v0_10_3";
  inputs."hmisc-v0_10_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_3".ref   = "master";
  inputs."hmisc-v0_10_3".repo  = "hmisc";
  inputs."hmisc-v0_10_3".type  = "github";
  inputs."hmisc-v0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_4".dir   = "v0_10_4";
  inputs."hmisc-v0_10_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_4".ref   = "master";
  inputs."hmisc-v0_10_4".repo  = "hmisc";
  inputs."hmisc-v0_10_4".type  = "github";
  inputs."hmisc-v0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_5".dir   = "v0_10_5";
  inputs."hmisc-v0_10_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_5".ref   = "master";
  inputs."hmisc-v0_10_5".repo  = "hmisc";
  inputs."hmisc-v0_10_5".type  = "github";
  inputs."hmisc-v0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_6".dir   = "v0_10_6";
  inputs."hmisc-v0_10_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_6".ref   = "master";
  inputs."hmisc-v0_10_6".repo  = "hmisc";
  inputs."hmisc-v0_10_6".type  = "github";
  inputs."hmisc-v0_10_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_7".dir   = "v0_10_7";
  inputs."hmisc-v0_10_7".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_7".ref   = "master";
  inputs."hmisc-v0_10_7".repo  = "hmisc";
  inputs."hmisc-v0_10_7".type  = "github";
  inputs."hmisc-v0_10_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_10_9".dir   = "v0_10_9";
  inputs."hmisc-v0_10_9".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_10_9".ref   = "master";
  inputs."hmisc-v0_10_9".repo  = "hmisc";
  inputs."hmisc-v0_10_9".type  = "github";
  inputs."hmisc-v0_10_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_10_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_1".dir   = "v0_11_1";
  inputs."hmisc-v0_11_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_1".ref   = "master";
  inputs."hmisc-v0_11_1".repo  = "hmisc";
  inputs."hmisc-v0_11_1".type  = "github";
  inputs."hmisc-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_10".dir   = "v0_11_10";
  inputs."hmisc-v0_11_10".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_10".ref   = "master";
  inputs."hmisc-v0_11_10".repo  = "hmisc";
  inputs."hmisc-v0_11_10".type  = "github";
  inputs."hmisc-v0_11_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_11".dir   = "v0_11_11";
  inputs."hmisc-v0_11_11".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_11".ref   = "master";
  inputs."hmisc-v0_11_11".repo  = "hmisc";
  inputs."hmisc-v0_11_11".type  = "github";
  inputs."hmisc-v0_11_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_12".dir   = "v0_11_12";
  inputs."hmisc-v0_11_12".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_12".ref   = "master";
  inputs."hmisc-v0_11_12".repo  = "hmisc";
  inputs."hmisc-v0_11_12".type  = "github";
  inputs."hmisc-v0_11_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_13".dir   = "v0_11_13";
  inputs."hmisc-v0_11_13".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_13".ref   = "master";
  inputs."hmisc-v0_11_13".repo  = "hmisc";
  inputs."hmisc-v0_11_13".type  = "github";
  inputs."hmisc-v0_11_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_14".dir   = "v0_11_14";
  inputs."hmisc-v0_11_14".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_14".ref   = "master";
  inputs."hmisc-v0_11_14".repo  = "hmisc";
  inputs."hmisc-v0_11_14".type  = "github";
  inputs."hmisc-v0_11_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_15".dir   = "v0_11_15";
  inputs."hmisc-v0_11_15".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_15".ref   = "master";
  inputs."hmisc-v0_11_15".repo  = "hmisc";
  inputs."hmisc-v0_11_15".type  = "github";
  inputs."hmisc-v0_11_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_16".dir   = "v0_11_16";
  inputs."hmisc-v0_11_16".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_16".ref   = "master";
  inputs."hmisc-v0_11_16".repo  = "hmisc";
  inputs."hmisc-v0_11_16".type  = "github";
  inputs."hmisc-v0_11_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_17".dir   = "v0_11_17";
  inputs."hmisc-v0_11_17".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_17".ref   = "master";
  inputs."hmisc-v0_11_17".repo  = "hmisc";
  inputs."hmisc-v0_11_17".type  = "github";
  inputs."hmisc-v0_11_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_18".dir   = "v0_11_18";
  inputs."hmisc-v0_11_18".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_18".ref   = "master";
  inputs."hmisc-v0_11_18".repo  = "hmisc";
  inputs."hmisc-v0_11_18".type  = "github";
  inputs."hmisc-v0_11_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_19".dir   = "v0_11_19";
  inputs."hmisc-v0_11_19".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_19".ref   = "master";
  inputs."hmisc-v0_11_19".repo  = "hmisc";
  inputs."hmisc-v0_11_19".type  = "github";
  inputs."hmisc-v0_11_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_2".dir   = "v0_11_2";
  inputs."hmisc-v0_11_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_2".ref   = "master";
  inputs."hmisc-v0_11_2".repo  = "hmisc";
  inputs."hmisc-v0_11_2".type  = "github";
  inputs."hmisc-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_3".dir   = "v0_11_3";
  inputs."hmisc-v0_11_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_3".ref   = "master";
  inputs."hmisc-v0_11_3".repo  = "hmisc";
  inputs."hmisc-v0_11_3".type  = "github";
  inputs."hmisc-v0_11_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_4".dir   = "v0_11_4";
  inputs."hmisc-v0_11_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_4".ref   = "master";
  inputs."hmisc-v0_11_4".repo  = "hmisc";
  inputs."hmisc-v0_11_4".type  = "github";
  inputs."hmisc-v0_11_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_5".dir   = "v0_11_5";
  inputs."hmisc-v0_11_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_5".ref   = "master";
  inputs."hmisc-v0_11_5".repo  = "hmisc";
  inputs."hmisc-v0_11_5".type  = "github";
  inputs."hmisc-v0_11_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_6".dir   = "v0_11_6";
  inputs."hmisc-v0_11_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_6".ref   = "master";
  inputs."hmisc-v0_11_6".repo  = "hmisc";
  inputs."hmisc-v0_11_6".type  = "github";
  inputs."hmisc-v0_11_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_7".dir   = "v0_11_7";
  inputs."hmisc-v0_11_7".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_7".ref   = "master";
  inputs."hmisc-v0_11_7".repo  = "hmisc";
  inputs."hmisc-v0_11_7".type  = "github";
  inputs."hmisc-v0_11_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_8".dir   = "v0_11_8";
  inputs."hmisc-v0_11_8".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_8".ref   = "master";
  inputs."hmisc-v0_11_8".repo  = "hmisc";
  inputs."hmisc-v0_11_8".type  = "github";
  inputs."hmisc-v0_11_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_11_9".dir   = "v0_11_9";
  inputs."hmisc-v0_11_9".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_11_9".ref   = "master";
  inputs."hmisc-v0_11_9".repo  = "hmisc";
  inputs."hmisc-v0_11_9".type  = "github";
  inputs."hmisc-v0_11_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_11_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_0".dir   = "v0_12_0";
  inputs."hmisc-v0_12_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_0".ref   = "master";
  inputs."hmisc-v0_12_0".repo  = "hmisc";
  inputs."hmisc-v0_12_0".type  = "github";
  inputs."hmisc-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_1".dir   = "v0_12_1";
  inputs."hmisc-v0_12_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_1".ref   = "master";
  inputs."hmisc-v0_12_1".repo  = "hmisc";
  inputs."hmisc-v0_12_1".type  = "github";
  inputs."hmisc-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_2".dir   = "v0_12_2";
  inputs."hmisc-v0_12_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_2".ref   = "master";
  inputs."hmisc-v0_12_2".repo  = "hmisc";
  inputs."hmisc-v0_12_2".type  = "github";
  inputs."hmisc-v0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_3".dir   = "v0_12_3";
  inputs."hmisc-v0_12_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_3".ref   = "master";
  inputs."hmisc-v0_12_3".repo  = "hmisc";
  inputs."hmisc-v0_12_3".type  = "github";
  inputs."hmisc-v0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_4".dir   = "v0_12_4";
  inputs."hmisc-v0_12_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_4".ref   = "master";
  inputs."hmisc-v0_12_4".repo  = "hmisc";
  inputs."hmisc-v0_12_4".type  = "github";
  inputs."hmisc-v0_12_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_5".dir   = "v0_12_5";
  inputs."hmisc-v0_12_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_5".ref   = "master";
  inputs."hmisc-v0_12_5".repo  = "hmisc";
  inputs."hmisc-v0_12_5".type  = "github";
  inputs."hmisc-v0_12_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_12_6".dir   = "v0_12_6";
  inputs."hmisc-v0_12_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_12_6".ref   = "master";
  inputs."hmisc-v0_12_6".repo  = "hmisc";
  inputs."hmisc-v0_12_6".type  = "github";
  inputs."hmisc-v0_12_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_12_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_13_0".dir   = "v0_13_0";
  inputs."hmisc-v0_13_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_13_0".ref   = "master";
  inputs."hmisc-v0_13_0".repo  = "hmisc";
  inputs."hmisc-v0_13_0".type  = "github";
  inputs."hmisc-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_13_1".dir   = "v0_13_1";
  inputs."hmisc-v0_13_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_13_1".ref   = "master";
  inputs."hmisc-v0_13_1".repo  = "hmisc";
  inputs."hmisc-v0_13_1".type  = "github";
  inputs."hmisc-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_0".dir   = "v0_14_0";
  inputs."hmisc-v0_14_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_0".ref   = "master";
  inputs."hmisc-v0_14_0".repo  = "hmisc";
  inputs."hmisc-v0_14_0".type  = "github";
  inputs."hmisc-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_1".dir   = "v0_14_1";
  inputs."hmisc-v0_14_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_1".ref   = "master";
  inputs."hmisc-v0_14_1".repo  = "hmisc";
  inputs."hmisc-v0_14_1".type  = "github";
  inputs."hmisc-v0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_2".dir   = "v0_14_2";
  inputs."hmisc-v0_14_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_2".ref   = "master";
  inputs."hmisc-v0_14_2".repo  = "hmisc";
  inputs."hmisc-v0_14_2".type  = "github";
  inputs."hmisc-v0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_3".dir   = "v0_14_3";
  inputs."hmisc-v0_14_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_3".ref   = "master";
  inputs."hmisc-v0_14_3".repo  = "hmisc";
  inputs."hmisc-v0_14_3".type  = "github";
  inputs."hmisc-v0_14_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_4".dir   = "v0_14_4";
  inputs."hmisc-v0_14_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_4".ref   = "master";
  inputs."hmisc-v0_14_4".repo  = "hmisc";
  inputs."hmisc-v0_14_4".type  = "github";
  inputs."hmisc-v0_14_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_5".dir   = "v0_14_5";
  inputs."hmisc-v0_14_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_5".ref   = "master";
  inputs."hmisc-v0_14_5".repo  = "hmisc";
  inputs."hmisc-v0_14_5".type  = "github";
  inputs."hmisc-v0_14_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_14_6".dir   = "v0_14_6";
  inputs."hmisc-v0_14_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_14_6".ref   = "master";
  inputs."hmisc-v0_14_6".repo  = "hmisc";
  inputs."hmisc-v0_14_6".type  = "github";
  inputs."hmisc-v0_14_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_14_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_26".dir   = "v0_3_26";
  inputs."hmisc-v0_3_26".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_3_26".ref   = "master";
  inputs."hmisc-v0_3_26".repo  = "hmisc";
  inputs."hmisc-v0_3_26".type  = "github";
  inputs."hmisc-v0_3_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_27".dir   = "v0_3_27";
  inputs."hmisc-v0_3_27".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_3_27".ref   = "master";
  inputs."hmisc-v0_3_27".repo  = "hmisc";
  inputs."hmisc-v0_3_27".type  = "github";
  inputs."hmisc-v0_3_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_28".dir   = "v0_3_28";
  inputs."hmisc-v0_3_28".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_3_28".ref   = "master";
  inputs."hmisc-v0_3_28".repo  = "hmisc";
  inputs."hmisc-v0_3_28".type  = "github";
  inputs."hmisc-v0_3_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_29".dir   = "v0_3_29";
  inputs."hmisc-v0_3_29".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_3_29".ref   = "master";
  inputs."hmisc-v0_3_29".repo  = "hmisc";
  inputs."hmisc-v0_3_29".type  = "github";
  inputs."hmisc-v0_3_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_3_30".dir   = "v0_3_30";
  inputs."hmisc-v0_3_30".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_3_30".ref   = "master";
  inputs."hmisc-v0_3_30".repo  = "hmisc";
  inputs."hmisc-v0_3_30".type  = "github";
  inputs."hmisc-v0_3_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_3_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_0".dir   = "v0_4_0";
  inputs."hmisc-v0_4_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_0".ref   = "master";
  inputs."hmisc-v0_4_0".repo  = "hmisc";
  inputs."hmisc-v0_4_0".type  = "github";
  inputs."hmisc-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_1".dir   = "v0_4_1";
  inputs."hmisc-v0_4_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_1".ref   = "master";
  inputs."hmisc-v0_4_1".repo  = "hmisc";
  inputs."hmisc-v0_4_1".type  = "github";
  inputs."hmisc-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_2".dir   = "v0_4_2";
  inputs."hmisc-v0_4_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_2".ref   = "master";
  inputs."hmisc-v0_4_2".repo  = "hmisc";
  inputs."hmisc-v0_4_2".type  = "github";
  inputs."hmisc-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_3".dir   = "v0_4_3";
  inputs."hmisc-v0_4_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_3".ref   = "master";
  inputs."hmisc-v0_4_3".repo  = "hmisc";
  inputs."hmisc-v0_4_3".type  = "github";
  inputs."hmisc-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_4".dir   = "v0_4_4";
  inputs."hmisc-v0_4_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_4".ref   = "master";
  inputs."hmisc-v0_4_4".repo  = "hmisc";
  inputs."hmisc-v0_4_4".type  = "github";
  inputs."hmisc-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_5".dir   = "v0_4_5";
  inputs."hmisc-v0_4_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_5".ref   = "master";
  inputs."hmisc-v0_4_5".repo  = "hmisc";
  inputs."hmisc-v0_4_5".type  = "github";
  inputs."hmisc-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_6".dir   = "v0_4_6";
  inputs."hmisc-v0_4_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_6".ref   = "master";
  inputs."hmisc-v0_4_6".repo  = "hmisc";
  inputs."hmisc-v0_4_6".type  = "github";
  inputs."hmisc-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_7".dir   = "v0_4_7";
  inputs."hmisc-v0_4_7".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_7".ref   = "master";
  inputs."hmisc-v0_4_7".repo  = "hmisc";
  inputs."hmisc-v0_4_7".type  = "github";
  inputs."hmisc-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_4_8".dir   = "v0_4_8";
  inputs."hmisc-v0_4_8".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_4_8".ref   = "master";
  inputs."hmisc-v0_4_8".repo  = "hmisc";
  inputs."hmisc-v0_4_8".type  = "github";
  inputs."hmisc-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_5_0".dir   = "v0_5_0";
  inputs."hmisc-v0_5_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_5_0".ref   = "master";
  inputs."hmisc-v0_5_0".repo  = "hmisc";
  inputs."hmisc-v0_5_0".type  = "github";
  inputs."hmisc-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_5_1".dir   = "v0_5_1";
  inputs."hmisc-v0_5_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_5_1".ref   = "master";
  inputs."hmisc-v0_5_1".repo  = "hmisc";
  inputs."hmisc-v0_5_1".type  = "github";
  inputs."hmisc-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_6_0".dir   = "v0_6_0";
  inputs."hmisc-v0_6_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_6_0".ref   = "master";
  inputs."hmisc-v0_6_0".repo  = "hmisc";
  inputs."hmisc-v0_6_0".type  = "github";
  inputs."hmisc-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_6_1".dir   = "v0_6_1";
  inputs."hmisc-v0_6_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_6_1".ref   = "master";
  inputs."hmisc-v0_6_1".repo  = "hmisc";
  inputs."hmisc-v0_6_1".type  = "github";
  inputs."hmisc-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_6_2".dir   = "v0_6_2";
  inputs."hmisc-v0_6_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_6_2".ref   = "master";
  inputs."hmisc-v0_6_2".repo  = "hmisc";
  inputs."hmisc-v0_6_2".type  = "github";
  inputs."hmisc-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_7_0".dir   = "v0_7_0";
  inputs."hmisc-v0_7_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_7_0".ref   = "master";
  inputs."hmisc-v0_7_0".repo  = "hmisc";
  inputs."hmisc-v0_7_0".type  = "github";
  inputs."hmisc-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_0".dir   = "v0_8_0";
  inputs."hmisc-v0_8_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_0".ref   = "master";
  inputs."hmisc-v0_8_0".repo  = "hmisc";
  inputs."hmisc-v0_8_0".type  = "github";
  inputs."hmisc-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_1".dir   = "v0_8_1";
  inputs."hmisc-v0_8_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_1".ref   = "master";
  inputs."hmisc-v0_8_1".repo  = "hmisc";
  inputs."hmisc-v0_8_1".type  = "github";
  inputs."hmisc-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_10".dir   = "v0_8_10";
  inputs."hmisc-v0_8_10".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_10".ref   = "master";
  inputs."hmisc-v0_8_10".repo  = "hmisc";
  inputs."hmisc-v0_8_10".type  = "github";
  inputs."hmisc-v0_8_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_2".dir   = "v0_8_2";
  inputs."hmisc-v0_8_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_2".ref   = "master";
  inputs."hmisc-v0_8_2".repo  = "hmisc";
  inputs."hmisc-v0_8_2".type  = "github";
  inputs."hmisc-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_3".dir   = "v0_8_3";
  inputs."hmisc-v0_8_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_3".ref   = "master";
  inputs."hmisc-v0_8_3".repo  = "hmisc";
  inputs."hmisc-v0_8_3".type  = "github";
  inputs."hmisc-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_4".dir   = "v0_8_4";
  inputs."hmisc-v0_8_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_4".ref   = "master";
  inputs."hmisc-v0_8_4".repo  = "hmisc";
  inputs."hmisc-v0_8_4".type  = "github";
  inputs."hmisc-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_5".dir   = "v0_8_5";
  inputs."hmisc-v0_8_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_5".ref   = "master";
  inputs."hmisc-v0_8_5".repo  = "hmisc";
  inputs."hmisc-v0_8_5".type  = "github";
  inputs."hmisc-v0_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_6".dir   = "v0_8_6";
  inputs."hmisc-v0_8_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_6".ref   = "master";
  inputs."hmisc-v0_8_6".repo  = "hmisc";
  inputs."hmisc-v0_8_6".type  = "github";
  inputs."hmisc-v0_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_7".dir   = "v0_8_7";
  inputs."hmisc-v0_8_7".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_7".ref   = "master";
  inputs."hmisc-v0_8_7".repo  = "hmisc";
  inputs."hmisc-v0_8_7".type  = "github";
  inputs."hmisc-v0_8_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_8".dir   = "v0_8_8";
  inputs."hmisc-v0_8_8".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_8".ref   = "master";
  inputs."hmisc-v0_8_8".repo  = "hmisc";
  inputs."hmisc-v0_8_8".type  = "github";
  inputs."hmisc-v0_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_8_9".dir   = "v0_8_9";
  inputs."hmisc-v0_8_9".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_8_9".ref   = "master";
  inputs."hmisc-v0_8_9".repo  = "hmisc";
  inputs."hmisc-v0_8_9".type  = "github";
  inputs."hmisc-v0_8_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_8_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_0".dir   = "v0_9_0";
  inputs."hmisc-v0_9_0".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_0".ref   = "master";
  inputs."hmisc-v0_9_0".repo  = "hmisc";
  inputs."hmisc-v0_9_0".type  = "github";
  inputs."hmisc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_1".dir   = "v0_9_1";
  inputs."hmisc-v0_9_1".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_1".ref   = "master";
  inputs."hmisc-v0_9_1".repo  = "hmisc";
  inputs."hmisc-v0_9_1".type  = "github";
  inputs."hmisc-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_11".dir   = "v0_9_11";
  inputs."hmisc-v0_9_11".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_11".ref   = "master";
  inputs."hmisc-v0_9_11".repo  = "hmisc";
  inputs."hmisc-v0_9_11".type  = "github";
  inputs."hmisc-v0_9_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_12".dir   = "v0_9_12";
  inputs."hmisc-v0_9_12".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_12".ref   = "master";
  inputs."hmisc-v0_9_12".repo  = "hmisc";
  inputs."hmisc-v0_9_12".type  = "github";
  inputs."hmisc-v0_9_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_13".dir   = "v0_9_13";
  inputs."hmisc-v0_9_13".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_13".ref   = "master";
  inputs."hmisc-v0_9_13".repo  = "hmisc";
  inputs."hmisc-v0_9_13".type  = "github";
  inputs."hmisc-v0_9_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_14".dir   = "v0_9_14";
  inputs."hmisc-v0_9_14".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_14".ref   = "master";
  inputs."hmisc-v0_9_14".repo  = "hmisc";
  inputs."hmisc-v0_9_14".type  = "github";
  inputs."hmisc-v0_9_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_15".dir   = "v0_9_15";
  inputs."hmisc-v0_9_15".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_15".ref   = "master";
  inputs."hmisc-v0_9_15".repo  = "hmisc";
  inputs."hmisc-v0_9_15".type  = "github";
  inputs."hmisc-v0_9_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_17".dir   = "v0_9_17";
  inputs."hmisc-v0_9_17".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_17".ref   = "master";
  inputs."hmisc-v0_9_17".repo  = "hmisc";
  inputs."hmisc-v0_9_17".type  = "github";
  inputs."hmisc-v0_9_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_18".dir   = "v0_9_18";
  inputs."hmisc-v0_9_18".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_18".ref   = "master";
  inputs."hmisc-v0_9_18".repo  = "hmisc";
  inputs."hmisc-v0_9_18".type  = "github";
  inputs."hmisc-v0_9_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_19".dir   = "v0_9_19";
  inputs."hmisc-v0_9_19".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_19".ref   = "master";
  inputs."hmisc-v0_9_19".repo  = "hmisc";
  inputs."hmisc-v0_9_19".type  = "github";
  inputs."hmisc-v0_9_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_2".dir   = "v0_9_2";
  inputs."hmisc-v0_9_2".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_2".ref   = "master";
  inputs."hmisc-v0_9_2".repo  = "hmisc";
  inputs."hmisc-v0_9_2".type  = "github";
  inputs."hmisc-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_3".dir   = "v0_9_3";
  inputs."hmisc-v0_9_3".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_3".ref   = "master";
  inputs."hmisc-v0_9_3".repo  = "hmisc";
  inputs."hmisc-v0_9_3".type  = "github";
  inputs."hmisc-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_4".dir   = "v0_9_4";
  inputs."hmisc-v0_9_4".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_4".ref   = "master";
  inputs."hmisc-v0_9_4".repo  = "hmisc";
  inputs."hmisc-v0_9_4".type  = "github";
  inputs."hmisc-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_5".dir   = "v0_9_5";
  inputs."hmisc-v0_9_5".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_5".ref   = "master";
  inputs."hmisc-v0_9_5".repo  = "hmisc";
  inputs."hmisc-v0_9_5".type  = "github";
  inputs."hmisc-v0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_6".dir   = "v0_9_6";
  inputs."hmisc-v0_9_6".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_6".ref   = "master";
  inputs."hmisc-v0_9_6".repo  = "hmisc";
  inputs."hmisc-v0_9_6".type  = "github";
  inputs."hmisc-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_7".dir   = "v0_9_7";
  inputs."hmisc-v0_9_7".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_7".ref   = "master";
  inputs."hmisc-v0_9_7".repo  = "hmisc";
  inputs."hmisc-v0_9_7".type  = "github";
  inputs."hmisc-v0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_8".dir   = "v0_9_8";
  inputs."hmisc-v0_9_8".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_8".ref   = "master";
  inputs."hmisc-v0_9_8".repo  = "hmisc";
  inputs."hmisc-v0_9_8".type  = "github";
  inputs."hmisc-v0_9_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc-v0_9_9".dir   = "v0_9_9";
  inputs."hmisc-v0_9_9".owner = "nim-nix-pkgs";
  inputs."hmisc-v0_9_9".ref   = "master";
  inputs."hmisc-v0_9_9".repo  = "hmisc";
  inputs."hmisc-v0_9_9".type  = "github";
  inputs."hmisc-v0_9_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc-v0_9_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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