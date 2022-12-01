{
  description = ''Package providing the Nim compiler binaries plus all its source files that can be used as a library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim-devel".dir   = "devel";
  inputs."nim-devel".owner = "nim-nix-pkgs";
  inputs."nim-devel".ref   = "master";
  inputs."nim-devel".repo  = "nim";
  inputs."nim-devel".type  = "github";
  inputs."nim-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_10_2".dir   = "v0_10_2";
  inputs."nim-v0_10_2".owner = "nim-nix-pkgs";
  inputs."nim-v0_10_2".ref   = "master";
  inputs."nim-v0_10_2".repo  = "nim";
  inputs."nim-v0_10_2".type  = "github";
  inputs."nim-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_11_0".dir   = "v0_11_0";
  inputs."compiler-v0_11_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_11_0".ref   = "master";
  inputs."compiler-v0_11_0".repo  = "compiler";
  inputs."compiler-v0_11_0".type  = "github";
  inputs."compiler-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_11_2".dir   = "v0_11_2";
  inputs."compiler-v0_11_2".owner = "nim-nix-pkgs";
  inputs."compiler-v0_11_2".ref   = "master";
  inputs."compiler-v0_11_2".repo  = "compiler";
  inputs."compiler-v0_11_2".type  = "github";
  inputs."compiler-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_12_0".dir   = "v0_12_0";
  inputs."compiler-v0_12_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_12_0".ref   = "master";
  inputs."compiler-v0_12_0".repo  = "compiler";
  inputs."compiler-v0_12_0".type  = "github";
  inputs."compiler-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_13_0".dir   = "v0_13_0";
  inputs."compiler-v0_13_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_13_0".ref   = "master";
  inputs."compiler-v0_13_0".repo  = "compiler";
  inputs."compiler-v0_13_0".type  = "github";
  inputs."compiler-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_14_0".dir   = "v0_14_0";
  inputs."compiler-v0_14_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_14_0".ref   = "master";
  inputs."compiler-v0_14_0".repo  = "compiler";
  inputs."compiler-v0_14_0".type  = "github";
  inputs."compiler-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_14_2".dir   = "v0_14_2";
  inputs."compiler-v0_14_2".owner = "nim-nix-pkgs";
  inputs."compiler-v0_14_2".ref   = "master";
  inputs."compiler-v0_14_2".repo  = "compiler";
  inputs."compiler-v0_14_2".type  = "github";
  inputs."compiler-v0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_15_0".dir   = "v0_15_0";
  inputs."compiler-v0_15_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_15_0".ref   = "master";
  inputs."compiler-v0_15_0".repo  = "compiler";
  inputs."compiler-v0_15_0".type  = "github";
  inputs."compiler-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_15_2".dir   = "v0_15_2";
  inputs."compiler-v0_15_2".owner = "nim-nix-pkgs";
  inputs."compiler-v0_15_2".ref   = "master";
  inputs."compiler-v0_15_2".repo  = "compiler";
  inputs."compiler-v0_15_2".type  = "github";
  inputs."compiler-v0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_16_0".dir   = "v0_16_0";
  inputs."compiler-v0_16_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_16_0".ref   = "master";
  inputs."compiler-v0_16_0".repo  = "compiler";
  inputs."compiler-v0_16_0".type  = "github";
  inputs."compiler-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_17_0".dir   = "v0_17_0";
  inputs."compiler-v0_17_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_17_0".ref   = "master";
  inputs."compiler-v0_17_0".repo  = "compiler";
  inputs."compiler-v0_17_0".type  = "github";
  inputs."compiler-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_17_2".dir   = "v0_17_2";
  inputs."compiler-v0_17_2".owner = "nim-nix-pkgs";
  inputs."compiler-v0_17_2".ref   = "master";
  inputs."compiler-v0_17_2".repo  = "compiler";
  inputs."compiler-v0_17_2".type  = "github";
  inputs."compiler-v0_17_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_17_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_18_0".dir   = "v0_18_0";
  inputs."compiler-v0_18_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_18_0".ref   = "master";
  inputs."compiler-v0_18_0".repo  = "compiler";
  inputs."compiler-v0_18_0".type  = "github";
  inputs."compiler-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_0".dir   = "v0_19_0";
  inputs."compiler-v0_19_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_19_0".ref   = "master";
  inputs."compiler-v0_19_0".repo  = "compiler";
  inputs."compiler-v0_19_0".type  = "github";
  inputs."compiler-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_2".dir   = "v0_19_2";
  inputs."compiler-v0_19_2".owner = "nim-nix-pkgs";
  inputs."compiler-v0_19_2".ref   = "master";
  inputs."compiler-v0_19_2".repo  = "compiler";
  inputs."compiler-v0_19_2".type  = "github";
  inputs."compiler-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_4".dir   = "v0_19_4";
  inputs."compiler-v0_19_4".owner = "nim-nix-pkgs";
  inputs."compiler-v0_19_4".ref   = "master";
  inputs."compiler-v0_19_4".repo  = "compiler";
  inputs."compiler-v0_19_4".type  = "github";
  inputs."compiler-v0_19_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_6".dir   = "v0_19_6";
  inputs."compiler-v0_19_6".owner = "nim-nix-pkgs";
  inputs."compiler-v0_19_6".ref   = "master";
  inputs."compiler-v0_19_6".repo  = "compiler";
  inputs."compiler-v0_19_6".type  = "github";
  inputs."compiler-v0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_20_0".dir   = "v0_20_0";
  inputs."compiler-v0_20_0".owner = "nim-nix-pkgs";
  inputs."compiler-v0_20_0".ref   = "master";
  inputs."compiler-v0_20_0".repo  = "compiler";
  inputs."compiler-v0_20_0".type  = "github";
  inputs."compiler-v0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_20_2".dir   = "v0_20_2";
  inputs."compiler-v0_20_2".owner = "nim-nix-pkgs";
  inputs."compiler-v0_20_2".ref   = "master";
  inputs."compiler-v0_20_2".repo  = "compiler";
  inputs."compiler-v0_20_2".type  = "github";
  inputs."compiler-v0_20_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_20_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_8_14".dir   = "v0_8_14";
  inputs."nim-v0_8_14".owner = "nim-nix-pkgs";
  inputs."nim-v0_8_14".ref   = "master";
  inputs."nim-v0_8_14".repo  = "nim";
  inputs."nim-v0_8_14".type  = "github";
  inputs."nim-v0_8_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_8_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_9_0".dir   = "v0_9_0";
  inputs."nim-v0_9_0".owner = "nim-nix-pkgs";
  inputs."nim-v0_9_0".ref   = "master";
  inputs."nim-v0_9_0".repo  = "nim";
  inputs."nim-v0_9_0".type  = "github";
  inputs."nim-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_9_2".dir   = "v0_9_2";
  inputs."nim-v0_9_2".owner = "nim-nix-pkgs";
  inputs."nim-v0_9_2".ref   = "master";
  inputs."nim-v0_9_2".repo  = "nim";
  inputs."nim-v0_9_2".type  = "github";
  inputs."nim-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_9_4".dir   = "v0_9_4";
  inputs."nim-v0_9_4".owner = "nim-nix-pkgs";
  inputs."nim-v0_9_4".ref   = "master";
  inputs."nim-v0_9_4".repo  = "nim";
  inputs."nim-v0_9_4".type  = "github";
  inputs."nim-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-v0_9_6".dir   = "v0_9_6";
  inputs."nim-v0_9_6".owner = "nim-nix-pkgs";
  inputs."nim-v0_9_6".ref   = "master";
  inputs."nim-v0_9_6".repo  = "nim";
  inputs."nim-v0_9_6".type  = "github";
  inputs."nim-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_0".dir   = "v1_0_0";
  inputs."compiler-v1_0_0".owner = "nim-nix-pkgs";
  inputs."compiler-v1_0_0".ref   = "master";
  inputs."compiler-v1_0_0".repo  = "compiler";
  inputs."compiler-v1_0_0".type  = "github";
  inputs."compiler-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_10".dir   = "v1_0_10";
  inputs."compiler-v1_0_10".owner = "nim-nix-pkgs";
  inputs."compiler-v1_0_10".ref   = "master";
  inputs."compiler-v1_0_10".repo  = "compiler";
  inputs."compiler-v1_0_10".type  = "github";
  inputs."compiler-v1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_2".dir   = "v1_0_2";
  inputs."compiler-v1_0_2".owner = "nim-nix-pkgs";
  inputs."compiler-v1_0_2".ref   = "master";
  inputs."compiler-v1_0_2".repo  = "compiler";
  inputs."compiler-v1_0_2".type  = "github";
  inputs."compiler-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_4".dir   = "v1_0_4";
  inputs."compiler-v1_0_4".owner = "nim-nix-pkgs";
  inputs."compiler-v1_0_4".ref   = "master";
  inputs."compiler-v1_0_4".repo  = "compiler";
  inputs."compiler-v1_0_4".type  = "github";
  inputs."compiler-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_6".dir   = "v1_0_6";
  inputs."compiler-v1_0_6".owner = "nim-nix-pkgs";
  inputs."compiler-v1_0_6".ref   = "master";
  inputs."compiler-v1_0_6".repo  = "compiler";
  inputs."compiler-v1_0_6".type  = "github";
  inputs."compiler-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_8".dir   = "v1_0_8";
  inputs."compiler-v1_0_8".owner = "nim-nix-pkgs";
  inputs."compiler-v1_0_8".ref   = "master";
  inputs."compiler-v1_0_8".repo  = "compiler";
  inputs."compiler-v1_0_8".type  = "github";
  inputs."compiler-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_0".dir   = "v1_2_0";
  inputs."compiler-v1_2_0".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_0".ref   = "master";
  inputs."compiler-v1_2_0".repo  = "compiler";
  inputs."compiler-v1_2_0".type  = "github";
  inputs."compiler-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_10".dir   = "v1_2_10";
  inputs."compiler-v1_2_10".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_10".ref   = "master";
  inputs."compiler-v1_2_10".repo  = "compiler";
  inputs."compiler-v1_2_10".type  = "github";
  inputs."compiler-v1_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_12".dir   = "v1_2_12";
  inputs."compiler-v1_2_12".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_12".ref   = "master";
  inputs."compiler-v1_2_12".repo  = "compiler";
  inputs."compiler-v1_2_12".type  = "github";
  inputs."compiler-v1_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_14".dir   = "v1_2_14";
  inputs."compiler-v1_2_14".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_14".ref   = "master";
  inputs."compiler-v1_2_14".repo  = "compiler";
  inputs."compiler-v1_2_14".type  = "github";
  inputs."compiler-v1_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_16".dir   = "v1_2_16";
  inputs."compiler-v1_2_16".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_16".ref   = "master";
  inputs."compiler-v1_2_16".repo  = "compiler";
  inputs."compiler-v1_2_16".type  = "github";
  inputs."compiler-v1_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_18".dir   = "v1_2_18";
  inputs."compiler-v1_2_18".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_18".ref   = "master";
  inputs."compiler-v1_2_18".repo  = "compiler";
  inputs."compiler-v1_2_18".type  = "github";
  inputs."compiler-v1_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_2".dir   = "v1_2_2";
  inputs."compiler-v1_2_2".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_2".ref   = "master";
  inputs."compiler-v1_2_2".repo  = "compiler";
  inputs."compiler-v1_2_2".type  = "github";
  inputs."compiler-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_4".dir   = "v1_2_4";
  inputs."compiler-v1_2_4".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_4".ref   = "master";
  inputs."compiler-v1_2_4".repo  = "compiler";
  inputs."compiler-v1_2_4".type  = "github";
  inputs."compiler-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_6".dir   = "v1_2_6";
  inputs."compiler-v1_2_6".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_6".ref   = "master";
  inputs."compiler-v1_2_6".repo  = "compiler";
  inputs."compiler-v1_2_6".type  = "github";
  inputs."compiler-v1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_8".dir   = "v1_2_8";
  inputs."compiler-v1_2_8".owner = "nim-nix-pkgs";
  inputs."compiler-v1_2_8".ref   = "master";
  inputs."compiler-v1_2_8".repo  = "compiler";
  inputs."compiler-v1_2_8".type  = "github";
  inputs."compiler-v1_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_0".dir   = "v1_4_0";
  inputs."compiler-v1_4_0".owner = "nim-nix-pkgs";
  inputs."compiler-v1_4_0".ref   = "master";
  inputs."compiler-v1_4_0".repo  = "compiler";
  inputs."compiler-v1_4_0".type  = "github";
  inputs."compiler-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_2".dir   = "v1_4_2";
  inputs."compiler-v1_4_2".owner = "nim-nix-pkgs";
  inputs."compiler-v1_4_2".ref   = "master";
  inputs."compiler-v1_4_2".repo  = "compiler";
  inputs."compiler-v1_4_2".type  = "github";
  inputs."compiler-v1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_4".dir   = "v1_4_4";
  inputs."compiler-v1_4_4".owner = "nim-nix-pkgs";
  inputs."compiler-v1_4_4".ref   = "master";
  inputs."compiler-v1_4_4".repo  = "compiler";
  inputs."compiler-v1_4_4".type  = "github";
  inputs."compiler-v1_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_6".dir   = "v1_4_6";
  inputs."compiler-v1_4_6".owner = "nim-nix-pkgs";
  inputs."compiler-v1_4_6".ref   = "master";
  inputs."compiler-v1_4_6".repo  = "compiler";
  inputs."compiler-v1_4_6".type  = "github";
  inputs."compiler-v1_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_8".dir   = "v1_4_8";
  inputs."compiler-v1_4_8".owner = "nim-nix-pkgs";
  inputs."compiler-v1_4_8".ref   = "master";
  inputs."compiler-v1_4_8".repo  = "compiler";
  inputs."compiler-v1_4_8".type  = "github";
  inputs."compiler-v1_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_0".dir   = "v1_6_0";
  inputs."compiler-v1_6_0".owner = "nim-nix-pkgs";
  inputs."compiler-v1_6_0".ref   = "master";
  inputs."compiler-v1_6_0".repo  = "compiler";
  inputs."compiler-v1_6_0".type  = "github";
  inputs."compiler-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_10".dir   = "v1_6_10";
  inputs."compiler-v1_6_10".owner = "nim-nix-pkgs";
  inputs."compiler-v1_6_10".ref   = "master";
  inputs."compiler-v1_6_10".repo  = "compiler";
  inputs."compiler-v1_6_10".type  = "github";
  inputs."compiler-v1_6_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_2".dir   = "v1_6_2";
  inputs."compiler-v1_6_2".owner = "nim-nix-pkgs";
  inputs."compiler-v1_6_2".ref   = "master";
  inputs."compiler-v1_6_2".repo  = "compiler";
  inputs."compiler-v1_6_2".type  = "github";
  inputs."compiler-v1_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_4".dir   = "v1_6_4";
  inputs."compiler-v1_6_4".owner = "nim-nix-pkgs";
  inputs."compiler-v1_6_4".ref   = "master";
  inputs."compiler-v1_6_4".repo  = "compiler";
  inputs."compiler-v1_6_4".type  = "github";
  inputs."compiler-v1_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_6".dir   = "v1_6_6";
  inputs."compiler-v1_6_6".owner = "nim-nix-pkgs";
  inputs."compiler-v1_6_6".ref   = "master";
  inputs."compiler-v1_6_6".repo  = "compiler";
  inputs."compiler-v1_6_6".type  = "github";
  inputs."compiler-v1_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_8".dir   = "v1_6_8";
  inputs."compiler-v1_6_8".owner = "nim-nix-pkgs";
  inputs."compiler-v1_6_8".ref   = "master";
  inputs."compiler-v1_6_8".repo  = "compiler";
  inputs."compiler-v1_6_8".type  = "github";
  inputs."compiler-v1_6_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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