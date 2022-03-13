{
  description = ''High level GObject-Introspection based GTK3 bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gintro-master".dir   = "master";
  inputs."gintro-master".owner = "nim-nix-pkgs";
  inputs."gintro-master".ref   = "master";
  inputs."gintro-master".repo  = "gintro";
  inputs."gintro-master".type  = "github";
  inputs."gintro-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_1_0".dir   = "v0_1_0";
  inputs."gintro-v0_1_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_1_0".ref   = "master";
  inputs."gintro-v0_1_0".repo  = "gintro";
  inputs."gintro-v0_1_0".type  = "github";
  inputs."gintro-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_2_0".dir   = "v0_2_0";
  inputs."gintro-v0_2_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_2_0".ref   = "master";
  inputs."gintro-v0_2_0".repo  = "gintro";
  inputs."gintro-v0_2_0".type  = "github";
  inputs."gintro-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_0".dir   = "v0_4_0";
  inputs."gintro-v0_4_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_0".ref   = "master";
  inputs."gintro-v0_4_0".repo  = "gintro";
  inputs."gintro-v0_4_0".type  = "github";
  inputs."gintro-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_1".dir   = "v0_4_1";
  inputs."gintro-v0_4_1".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_1".ref   = "master";
  inputs."gintro-v0_4_1".repo  = "gintro";
  inputs."gintro-v0_4_1".type  = "github";
  inputs."gintro-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_10".dir   = "v0_4_10";
  inputs."gintro-v0_4_10".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_10".ref   = "master";
  inputs."gintro-v0_4_10".repo  = "gintro";
  inputs."gintro-v0_4_10".type  = "github";
  inputs."gintro-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_11".dir   = "v0_4_11";
  inputs."gintro-v0_4_11".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_11".ref   = "master";
  inputs."gintro-v0_4_11".repo  = "gintro";
  inputs."gintro-v0_4_11".type  = "github";
  inputs."gintro-v0_4_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_14".dir   = "v0_4_14";
  inputs."gintro-v0_4_14".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_14".ref   = "master";
  inputs."gintro-v0_4_14".repo  = "gintro";
  inputs."gintro-v0_4_14".type  = "github";
  inputs."gintro-v0_4_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_15".dir   = "v0_4_15";
  inputs."gintro-v0_4_15".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_15".ref   = "master";
  inputs."gintro-v0_4_15".repo  = "gintro";
  inputs."gintro-v0_4_15".type  = "github";
  inputs."gintro-v0_4_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_16".dir   = "v0_4_16";
  inputs."gintro-v0_4_16".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_16".ref   = "master";
  inputs."gintro-v0_4_16".repo  = "gintro";
  inputs."gintro-v0_4_16".type  = "github";
  inputs."gintro-v0_4_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_17".dir   = "v0_4_17";
  inputs."gintro-v0_4_17".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_17".ref   = "master";
  inputs."gintro-v0_4_17".repo  = "gintro";
  inputs."gintro-v0_4_17".type  = "github";
  inputs."gintro-v0_4_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_18".dir   = "v0_4_18";
  inputs."gintro-v0_4_18".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_18".ref   = "master";
  inputs."gintro-v0_4_18".repo  = "gintro";
  inputs."gintro-v0_4_18".type  = "github";
  inputs."gintro-v0_4_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_2".dir   = "v0_4_2";
  inputs."gintro-v0_4_2".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_2".ref   = "master";
  inputs."gintro-v0_4_2".repo  = "gintro";
  inputs."gintro-v0_4_2".type  = "github";
  inputs."gintro-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_20".dir   = "v0_4_20";
  inputs."gintro-v0_4_20".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_20".ref   = "master";
  inputs."gintro-v0_4_20".repo  = "gintro";
  inputs."gintro-v0_4_20".type  = "github";
  inputs."gintro-v0_4_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_22".dir   = "v0_4_22";
  inputs."gintro-v0_4_22".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_22".ref   = "master";
  inputs."gintro-v0_4_22".repo  = "gintro";
  inputs."gintro-v0_4_22".type  = "github";
  inputs."gintro-v0_4_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_23".dir   = "v0_4_23";
  inputs."gintro-v0_4_23".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_23".ref   = "master";
  inputs."gintro-v0_4_23".repo  = "gintro";
  inputs."gintro-v0_4_23".type  = "github";
  inputs."gintro-v0_4_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_3".dir   = "v0_4_3";
  inputs."gintro-v0_4_3".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_3".ref   = "master";
  inputs."gintro-v0_4_3".repo  = "gintro";
  inputs."gintro-v0_4_3".type  = "github";
  inputs."gintro-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_4".dir   = "v0_4_4";
  inputs."gintro-v0_4_4".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_4".ref   = "master";
  inputs."gintro-v0_4_4".repo  = "gintro";
  inputs."gintro-v0_4_4".type  = "github";
  inputs."gintro-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_5".dir   = "v0_4_5";
  inputs."gintro-v0_4_5".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_5".ref   = "master";
  inputs."gintro-v0_4_5".repo  = "gintro";
  inputs."gintro-v0_4_5".type  = "github";
  inputs."gintro-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_6".dir   = "v0_4_6";
  inputs."gintro-v0_4_6".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_6".ref   = "master";
  inputs."gintro-v0_4_6".repo  = "gintro";
  inputs."gintro-v0_4_6".type  = "github";
  inputs."gintro-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_7".dir   = "v0_4_7";
  inputs."gintro-v0_4_7".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_7".ref   = "master";
  inputs."gintro-v0_4_7".repo  = "gintro";
  inputs."gintro-v0_4_7".type  = "github";
  inputs."gintro-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_8".dir   = "v0_4_8";
  inputs."gintro-v0_4_8".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_8".ref   = "master";
  inputs."gintro-v0_4_8".repo  = "gintro";
  inputs."gintro-v0_4_8".type  = "github";
  inputs."gintro-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_4_9".dir   = "v0_4_9";
  inputs."gintro-v0_4_9".owner = "nim-nix-pkgs";
  inputs."gintro-v0_4_9".ref   = "master";
  inputs."gintro-v0_4_9".repo  = "gintro";
  inputs."gintro-v0_4_9".type  = "github";
  inputs."gintro-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_0".dir   = "v0_5_0";
  inputs."gintro-v0_5_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_5_0".ref   = "master";
  inputs."gintro-v0_5_0".repo  = "gintro";
  inputs."gintro-v0_5_0".type  = "github";
  inputs."gintro-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_1".dir   = "v0_5_1";
  inputs."gintro-v0_5_1".owner = "nim-nix-pkgs";
  inputs."gintro-v0_5_1".ref   = "master";
  inputs."gintro-v0_5_1".repo  = "gintro";
  inputs."gintro-v0_5_1".type  = "github";
  inputs."gintro-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_2".dir   = "v0_5_2";
  inputs."gintro-v0_5_2".owner = "nim-nix-pkgs";
  inputs."gintro-v0_5_2".ref   = "master";
  inputs."gintro-v0_5_2".repo  = "gintro";
  inputs."gintro-v0_5_2".type  = "github";
  inputs."gintro-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_3".dir   = "v0_5_3";
  inputs."gintro-v0_5_3".owner = "nim-nix-pkgs";
  inputs."gintro-v0_5_3".ref   = "master";
  inputs."gintro-v0_5_3".repo  = "gintro";
  inputs."gintro-v0_5_3".type  = "github";
  inputs."gintro-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_4".dir   = "v0_5_4";
  inputs."gintro-v0_5_4".owner = "nim-nix-pkgs";
  inputs."gintro-v0_5_4".ref   = "master";
  inputs."gintro-v0_5_4".repo  = "gintro";
  inputs."gintro-v0_5_4".type  = "github";
  inputs."gintro-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_5_5".dir   = "v0_5_5";
  inputs."gintro-v0_5_5".owner = "nim-nix-pkgs";
  inputs."gintro-v0_5_5".ref   = "master";
  inputs."gintro-v0_5_5".repo  = "gintro";
  inputs."gintro-v0_5_5".type  = "github";
  inputs."gintro-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_6_0".dir   = "v0_6_0";
  inputs."gintro-v0_6_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_6_0".ref   = "master";
  inputs."gintro-v0_6_0".repo  = "gintro";
  inputs."gintro-v0_6_0".type  = "github";
  inputs."gintro-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_6_1".dir   = "v0_6_1";
  inputs."gintro-v0_6_1".owner = "nim-nix-pkgs";
  inputs."gintro-v0_6_1".ref   = "master";
  inputs."gintro-v0_6_1".repo  = "gintro";
  inputs."gintro-v0_6_1".type  = "github";
  inputs."gintro-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_0".dir   = "v0_7_0";
  inputs."gintro-v0_7_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_0".ref   = "master";
  inputs."gintro-v0_7_0".repo  = "gintro";
  inputs."gintro-v0_7_0".type  = "github";
  inputs."gintro-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_1".dir   = "v0_7_1";
  inputs."gintro-v0_7_1".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_1".ref   = "master";
  inputs."gintro-v0_7_1".repo  = "gintro";
  inputs."gintro-v0_7_1".type  = "github";
  inputs."gintro-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_2".dir   = "v0_7_2";
  inputs."gintro-v0_7_2".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_2".ref   = "master";
  inputs."gintro-v0_7_2".repo  = "gintro";
  inputs."gintro-v0_7_2".type  = "github";
  inputs."gintro-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_3".dir   = "v0_7_3";
  inputs."gintro-v0_7_3".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_3".ref   = "master";
  inputs."gintro-v0_7_3".repo  = "gintro";
  inputs."gintro-v0_7_3".type  = "github";
  inputs."gintro-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_4".dir   = "v0_7_4";
  inputs."gintro-v0_7_4".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_4".ref   = "master";
  inputs."gintro-v0_7_4".repo  = "gintro";
  inputs."gintro-v0_7_4".type  = "github";
  inputs."gintro-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_5".dir   = "v0_7_5";
  inputs."gintro-v0_7_5".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_5".ref   = "master";
  inputs."gintro-v0_7_5".repo  = "gintro";
  inputs."gintro-v0_7_5".type  = "github";
  inputs."gintro-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_6".dir   = "v0_7_6";
  inputs."gintro-v0_7_6".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_6".ref   = "master";
  inputs."gintro-v0_7_6".repo  = "gintro";
  inputs."gintro-v0_7_6".type  = "github";
  inputs."gintro-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_7".dir   = "v0_7_7";
  inputs."gintro-v0_7_7".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_7".ref   = "master";
  inputs."gintro-v0_7_7".repo  = "gintro";
  inputs."gintro-v0_7_7".type  = "github";
  inputs."gintro-v0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_8".dir   = "v0_7_8";
  inputs."gintro-v0_7_8".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_8".ref   = "master";
  inputs."gintro-v0_7_8".repo  = "gintro";
  inputs."gintro-v0_7_8".type  = "github";
  inputs."gintro-v0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_7_9".dir   = "v0_7_9";
  inputs."gintro-v0_7_9".owner = "nim-nix-pkgs";
  inputs."gintro-v0_7_9".ref   = "master";
  inputs."gintro-v0_7_9".repo  = "gintro";
  inputs."gintro-v0_7_9".type  = "github";
  inputs."gintro-v0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_0".dir   = "v0_8_0";
  inputs."gintro-v0_8_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_0".ref   = "master";
  inputs."gintro-v0_8_0".repo  = "gintro";
  inputs."gintro-v0_8_0".type  = "github";
  inputs."gintro-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_1".dir   = "v0_8_1";
  inputs."gintro-v0_8_1".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_1".ref   = "master";
  inputs."gintro-v0_8_1".repo  = "gintro";
  inputs."gintro-v0_8_1".type  = "github";
  inputs."gintro-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_2".dir   = "v0_8_2";
  inputs."gintro-v0_8_2".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_2".ref   = "master";
  inputs."gintro-v0_8_2".repo  = "gintro";
  inputs."gintro-v0_8_2".type  = "github";
  inputs."gintro-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_3".dir   = "v0_8_3";
  inputs."gintro-v0_8_3".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_3".ref   = "master";
  inputs."gintro-v0_8_3".repo  = "gintro";
  inputs."gintro-v0_8_3".type  = "github";
  inputs."gintro-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_4".dir   = "v0_8_4";
  inputs."gintro-v0_8_4".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_4".ref   = "master";
  inputs."gintro-v0_8_4".repo  = "gintro";
  inputs."gintro-v0_8_4".type  = "github";
  inputs."gintro-v0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_5".dir   = "v0_8_5";
  inputs."gintro-v0_8_5".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_5".ref   = "master";
  inputs."gintro-v0_8_5".repo  = "gintro";
  inputs."gintro-v0_8_5".type  = "github";
  inputs."gintro-v0_8_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_6".dir   = "v0_8_6";
  inputs."gintro-v0_8_6".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_6".ref   = "master";
  inputs."gintro-v0_8_6".repo  = "gintro";
  inputs."gintro-v0_8_6".type  = "github";
  inputs."gintro-v0_8_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_7".dir   = "v0_8_7";
  inputs."gintro-v0_8_7".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_7".ref   = "master";
  inputs."gintro-v0_8_7".repo  = "gintro";
  inputs."gintro-v0_8_7".type  = "github";
  inputs."gintro-v0_8_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_8".dir   = "v0_8_8";
  inputs."gintro-v0_8_8".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_8".ref   = "master";
  inputs."gintro-v0_8_8".repo  = "gintro";
  inputs."gintro-v0_8_8".type  = "github";
  inputs."gintro-v0_8_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_8_9".dir   = "v0_8_9";
  inputs."gintro-v0_8_9".owner = "nim-nix-pkgs";
  inputs."gintro-v0_8_9".ref   = "master";
  inputs."gintro-v0_8_9".repo  = "gintro";
  inputs."gintro-v0_8_9".type  = "github";
  inputs."gintro-v0_8_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_8_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_0".dir   = "v0_9_0";
  inputs."gintro-v0_9_0".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_0".ref   = "master";
  inputs."gintro-v0_9_0".repo  = "gintro";
  inputs."gintro-v0_9_0".type  = "github";
  inputs."gintro-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_1".dir   = "v0_9_1";
  inputs."gintro-v0_9_1".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_1".ref   = "master";
  inputs."gintro-v0_9_1".repo  = "gintro";
  inputs."gintro-v0_9_1".type  = "github";
  inputs."gintro-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_2".dir   = "v0_9_2";
  inputs."gintro-v0_9_2".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_2".ref   = "master";
  inputs."gintro-v0_9_2".repo  = "gintro";
  inputs."gintro-v0_9_2".type  = "github";
  inputs."gintro-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_3".dir   = "v0_9_3";
  inputs."gintro-v0_9_3".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_3".ref   = "master";
  inputs."gintro-v0_9_3".repo  = "gintro";
  inputs."gintro-v0_9_3".type  = "github";
  inputs."gintro-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_4".dir   = "v0_9_4";
  inputs."gintro-v0_9_4".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_4".ref   = "master";
  inputs."gintro-v0_9_4".repo  = "gintro";
  inputs."gintro-v0_9_4".type  = "github";
  inputs."gintro-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_5".dir   = "v0_9_5";
  inputs."gintro-v0_9_5".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_5".ref   = "master";
  inputs."gintro-v0_9_5".repo  = "gintro";
  inputs."gintro-v0_9_5".type  = "github";
  inputs."gintro-v0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_6".dir   = "v0_9_6";
  inputs."gintro-v0_9_6".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_6".ref   = "master";
  inputs."gintro-v0_9_6".repo  = "gintro";
  inputs."gintro-v0_9_6".type  = "github";
  inputs."gintro-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gintro-v0_9_7".dir   = "v0_9_7";
  inputs."gintro-v0_9_7".owner = "nim-nix-pkgs";
  inputs."gintro-v0_9_7".ref   = "master";
  inputs."gintro-v0_9_7".repo  = "gintro";
  inputs."gintro-v0_9_7".type  = "github";
  inputs."gintro-v0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro-v0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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