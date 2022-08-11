{
  description = ''ANSI art + MIDI music editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ansiwave-master".dir   = "master";
  inputs."ansiwave-master".owner = "nim-nix-pkgs";
  inputs."ansiwave-master".ref   = "master";
  inputs."ansiwave-master".repo  = "ansiwave";
  inputs."ansiwave-master".type  = "github";
  inputs."ansiwave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0".dir   = "0_1_0";
  inputs."ansiwave-0_1_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_1_0".ref   = "master";
  inputs."ansiwave-0_1_0".repo  = "ansiwave";
  inputs."ansiwave-0_1_0".type  = "github";
  inputs."ansiwave-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0-linux".dir   = "0_1_0-linux";
  inputs."ansiwave-0_1_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_1_0-linux".ref   = "master";
  inputs."ansiwave-0_1_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_1_0-linux".type  = "github";
  inputs."ansiwave-0_1_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0-macos".dir   = "0_1_0-macos";
  inputs."ansiwave-0_1_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_1_0-macos".ref   = "master";
  inputs."ansiwave-0_1_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_1_0-macos".type  = "github";
  inputs."ansiwave-0_1_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0-windows".dir   = "0_1_0-windows";
  inputs."ansiwave-0_1_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_1_0-windows".ref   = "master";
  inputs."ansiwave-0_1_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_1_0-windows".type  = "github";
  inputs."ansiwave-0_1_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0".dir   = "0_2_0";
  inputs."ansiwave-0_2_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_2_0".ref   = "master";
  inputs."ansiwave-0_2_0".repo  = "ansiwave";
  inputs."ansiwave-0_2_0".type  = "github";
  inputs."ansiwave-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0-linux".dir   = "0_2_0-linux";
  inputs."ansiwave-0_2_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_2_0-linux".ref   = "master";
  inputs."ansiwave-0_2_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_2_0-linux".type  = "github";
  inputs."ansiwave-0_2_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0-macos".dir   = "0_2_0-macos";
  inputs."ansiwave-0_2_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_2_0-macos".ref   = "master";
  inputs."ansiwave-0_2_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_2_0-macos".type  = "github";
  inputs."ansiwave-0_2_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0-windows".dir   = "0_2_0-windows";
  inputs."ansiwave-0_2_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_2_0-windows".ref   = "master";
  inputs."ansiwave-0_2_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_2_0-windows".type  = "github";
  inputs."ansiwave-0_2_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0".dir   = "0_3_0";
  inputs."ansiwave-0_3_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_3_0".ref   = "master";
  inputs."ansiwave-0_3_0".repo  = "ansiwave";
  inputs."ansiwave-0_3_0".type  = "github";
  inputs."ansiwave-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0-linux".dir   = "0_3_0-linux";
  inputs."ansiwave-0_3_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_3_0-linux".ref   = "master";
  inputs."ansiwave-0_3_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_3_0-linux".type  = "github";
  inputs."ansiwave-0_3_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0-macos".dir   = "0_3_0-macos";
  inputs."ansiwave-0_3_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_3_0-macos".ref   = "master";
  inputs."ansiwave-0_3_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_3_0-macos".type  = "github";
  inputs."ansiwave-0_3_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0-windows".dir   = "0_3_0-windows";
  inputs."ansiwave-0_3_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_3_0-windows".ref   = "master";
  inputs."ansiwave-0_3_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_3_0-windows".type  = "github";
  inputs."ansiwave-0_3_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0".dir   = "0_4_0";
  inputs."ansiwave-0_4_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_4_0".ref   = "master";
  inputs."ansiwave-0_4_0".repo  = "ansiwave";
  inputs."ansiwave-0_4_0".type  = "github";
  inputs."ansiwave-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0-linux".dir   = "0_4_0-linux";
  inputs."ansiwave-0_4_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_4_0-linux".ref   = "master";
  inputs."ansiwave-0_4_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_4_0-linux".type  = "github";
  inputs."ansiwave-0_4_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0-macos".dir   = "0_4_0-macos";
  inputs."ansiwave-0_4_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_4_0-macos".ref   = "master";
  inputs."ansiwave-0_4_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_4_0-macos".type  = "github";
  inputs."ansiwave-0_4_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0-windows".dir   = "0_4_0-windows";
  inputs."ansiwave-0_4_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_4_0-windows".ref   = "master";
  inputs."ansiwave-0_4_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_4_0-windows".type  = "github";
  inputs."ansiwave-0_4_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0".dir   = "0_5_0";
  inputs."ansiwave-0_5_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_5_0".ref   = "master";
  inputs."ansiwave-0_5_0".repo  = "ansiwave";
  inputs."ansiwave-0_5_0".type  = "github";
  inputs."ansiwave-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0-linux".dir   = "0_5_0-linux";
  inputs."ansiwave-0_5_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_5_0-linux".ref   = "master";
  inputs."ansiwave-0_5_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_5_0-linux".type  = "github";
  inputs."ansiwave-0_5_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0-macos".dir   = "0_5_0-macos";
  inputs."ansiwave-0_5_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_5_0-macos".ref   = "master";
  inputs."ansiwave-0_5_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_5_0-macos".type  = "github";
  inputs."ansiwave-0_5_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0-windows".dir   = "0_5_0-windows";
  inputs."ansiwave-0_5_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_5_0-windows".ref   = "master";
  inputs."ansiwave-0_5_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_5_0-windows".type  = "github";
  inputs."ansiwave-0_5_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0".dir   = "0_6_0";
  inputs."ansiwave-0_6_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_6_0".ref   = "master";
  inputs."ansiwave-0_6_0".repo  = "ansiwave";
  inputs."ansiwave-0_6_0".type  = "github";
  inputs."ansiwave-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0-linux".dir   = "0_6_0-linux";
  inputs."ansiwave-0_6_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_6_0-linux".ref   = "master";
  inputs."ansiwave-0_6_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_6_0-linux".type  = "github";
  inputs."ansiwave-0_6_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0-macos".dir   = "0_6_0-macos";
  inputs."ansiwave-0_6_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_6_0-macos".ref   = "master";
  inputs."ansiwave-0_6_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_6_0-macos".type  = "github";
  inputs."ansiwave-0_6_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0-windows".dir   = "0_6_0-windows";
  inputs."ansiwave-0_6_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_6_0-windows".ref   = "master";
  inputs."ansiwave-0_6_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_6_0-windows".type  = "github";
  inputs."ansiwave-0_6_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0".dir   = "0_7_0";
  inputs."ansiwave-0_7_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_7_0".ref   = "master";
  inputs."ansiwave-0_7_0".repo  = "ansiwave";
  inputs."ansiwave-0_7_0".type  = "github";
  inputs."ansiwave-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0-linux".dir   = "0_7_0-linux";
  inputs."ansiwave-0_7_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_7_0-linux".ref   = "master";
  inputs."ansiwave-0_7_0-linux".repo  = "ansiwave";
  inputs."ansiwave-0_7_0-linux".type  = "github";
  inputs."ansiwave-0_7_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0-macos".dir   = "0_7_0-macos";
  inputs."ansiwave-0_7_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_7_0-macos".ref   = "master";
  inputs."ansiwave-0_7_0-macos".repo  = "ansiwave";
  inputs."ansiwave-0_7_0-macos".type  = "github";
  inputs."ansiwave-0_7_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0-windows".dir   = "0_7_0-windows";
  inputs."ansiwave-0_7_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-0_7_0-windows".ref   = "master";
  inputs."ansiwave-0_7_0-windows".repo  = "ansiwave";
  inputs."ansiwave-0_7_0-windows".type  = "github";
  inputs."ansiwave-0_7_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0".dir   = "1_0_0";
  inputs."ansiwave-1_0_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_0".ref   = "master";
  inputs."ansiwave-1_0_0".repo  = "ansiwave";
  inputs."ansiwave-1_0_0".type  = "github";
  inputs."ansiwave-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0-linux".dir   = "1_0_0-linux";
  inputs."ansiwave-1_0_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_0-linux".ref   = "master";
  inputs."ansiwave-1_0_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_0_0-linux".type  = "github";
  inputs."ansiwave-1_0_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0-macos".dir   = "1_0_0-macos";
  inputs."ansiwave-1_0_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_0-macos".ref   = "master";
  inputs."ansiwave-1_0_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_0_0-macos".type  = "github";
  inputs."ansiwave-1_0_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0-windows".dir   = "1_0_0-windows";
  inputs."ansiwave-1_0_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_0-windows".ref   = "master";
  inputs."ansiwave-1_0_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_0_0-windows".type  = "github";
  inputs."ansiwave-1_0_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1".dir   = "1_0_1";
  inputs."ansiwave-1_0_1".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_1".ref   = "master";
  inputs."ansiwave-1_0_1".repo  = "ansiwave";
  inputs."ansiwave-1_0_1".type  = "github";
  inputs."ansiwave-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1-linux".dir   = "1_0_1-linux";
  inputs."ansiwave-1_0_1-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_1-linux".ref   = "master";
  inputs."ansiwave-1_0_1-linux".repo  = "ansiwave";
  inputs."ansiwave-1_0_1-linux".type  = "github";
  inputs."ansiwave-1_0_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1-macos".dir   = "1_0_1-macos";
  inputs."ansiwave-1_0_1-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_1-macos".ref   = "master";
  inputs."ansiwave-1_0_1-macos".repo  = "ansiwave";
  inputs."ansiwave-1_0_1-macos".type  = "github";
  inputs."ansiwave-1_0_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1-windows".dir   = "1_0_1-windows";
  inputs."ansiwave-1_0_1-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_1-windows".ref   = "master";
  inputs."ansiwave-1_0_1-windows".repo  = "ansiwave";
  inputs."ansiwave-1_0_1-windows".type  = "github";
  inputs."ansiwave-1_0_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2".dir   = "1_0_2";
  inputs."ansiwave-1_0_2".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_2".ref   = "master";
  inputs."ansiwave-1_0_2".repo  = "ansiwave";
  inputs."ansiwave-1_0_2".type  = "github";
  inputs."ansiwave-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2-linux".dir   = "1_0_2-linux";
  inputs."ansiwave-1_0_2-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_2-linux".ref   = "master";
  inputs."ansiwave-1_0_2-linux".repo  = "ansiwave";
  inputs."ansiwave-1_0_2-linux".type  = "github";
  inputs."ansiwave-1_0_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2-macos".dir   = "1_0_2-macos";
  inputs."ansiwave-1_0_2-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_2-macos".ref   = "master";
  inputs."ansiwave-1_0_2-macos".repo  = "ansiwave";
  inputs."ansiwave-1_0_2-macos".type  = "github";
  inputs."ansiwave-1_0_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2-windows".dir   = "1_0_2-windows";
  inputs."ansiwave-1_0_2-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_0_2-windows".ref   = "master";
  inputs."ansiwave-1_0_2-windows".repo  = "ansiwave";
  inputs."ansiwave-1_0_2-windows".type  = "github";
  inputs."ansiwave-1_0_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0".dir   = "1_1_0";
  inputs."ansiwave-1_1_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_1_0".ref   = "master";
  inputs."ansiwave-1_1_0".repo  = "ansiwave";
  inputs."ansiwave-1_1_0".type  = "github";
  inputs."ansiwave-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0-linux".dir   = "1_1_0-linux";
  inputs."ansiwave-1_1_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_1_0-linux".ref   = "master";
  inputs."ansiwave-1_1_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_1_0-linux".type  = "github";
  inputs."ansiwave-1_1_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0-macos".dir   = "1_1_0-macos";
  inputs."ansiwave-1_1_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_1_0-macos".ref   = "master";
  inputs."ansiwave-1_1_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_1_0-macos".type  = "github";
  inputs."ansiwave-1_1_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0-windows".dir   = "1_1_0-windows";
  inputs."ansiwave-1_1_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_1_0-windows".ref   = "master";
  inputs."ansiwave-1_1_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_1_0-windows".type  = "github";
  inputs."ansiwave-1_1_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0".dir   = "1_2_0";
  inputs."ansiwave-1_2_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_0".ref   = "master";
  inputs."ansiwave-1_2_0".repo  = "ansiwave";
  inputs."ansiwave-1_2_0".type  = "github";
  inputs."ansiwave-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0-linux".dir   = "1_2_0-linux";
  inputs."ansiwave-1_2_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_0-linux".ref   = "master";
  inputs."ansiwave-1_2_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_2_0-linux".type  = "github";
  inputs."ansiwave-1_2_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0-macos".dir   = "1_2_0-macos";
  inputs."ansiwave-1_2_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_0-macos".ref   = "master";
  inputs."ansiwave-1_2_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_2_0-macos".type  = "github";
  inputs."ansiwave-1_2_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0-windows".dir   = "1_2_0-windows";
  inputs."ansiwave-1_2_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_0-windows".ref   = "master";
  inputs."ansiwave-1_2_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_2_0-windows".type  = "github";
  inputs."ansiwave-1_2_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1".dir   = "1_2_1";
  inputs."ansiwave-1_2_1".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_1".ref   = "master";
  inputs."ansiwave-1_2_1".repo  = "ansiwave";
  inputs."ansiwave-1_2_1".type  = "github";
  inputs."ansiwave-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1-linux".dir   = "1_2_1-linux";
  inputs."ansiwave-1_2_1-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_1-linux".ref   = "master";
  inputs."ansiwave-1_2_1-linux".repo  = "ansiwave";
  inputs."ansiwave-1_2_1-linux".type  = "github";
  inputs."ansiwave-1_2_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1-macos".dir   = "1_2_1-macos";
  inputs."ansiwave-1_2_1-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_1-macos".ref   = "master";
  inputs."ansiwave-1_2_1-macos".repo  = "ansiwave";
  inputs."ansiwave-1_2_1-macos".type  = "github";
  inputs."ansiwave-1_2_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1-windows".dir   = "1_2_1-windows";
  inputs."ansiwave-1_2_1-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_1-windows".ref   = "master";
  inputs."ansiwave-1_2_1-windows".repo  = "ansiwave";
  inputs."ansiwave-1_2_1-windows".type  = "github";
  inputs."ansiwave-1_2_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2".dir   = "1_2_2";
  inputs."ansiwave-1_2_2".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_2".ref   = "master";
  inputs."ansiwave-1_2_2".repo  = "ansiwave";
  inputs."ansiwave-1_2_2".type  = "github";
  inputs."ansiwave-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2-linux".dir   = "1_2_2-linux";
  inputs."ansiwave-1_2_2-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_2-linux".ref   = "master";
  inputs."ansiwave-1_2_2-linux".repo  = "ansiwave";
  inputs."ansiwave-1_2_2-linux".type  = "github";
  inputs."ansiwave-1_2_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2-macos".dir   = "1_2_2-macos";
  inputs."ansiwave-1_2_2-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_2-macos".ref   = "master";
  inputs."ansiwave-1_2_2-macos".repo  = "ansiwave";
  inputs."ansiwave-1_2_2-macos".type  = "github";
  inputs."ansiwave-1_2_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2-windows".dir   = "1_2_2-windows";
  inputs."ansiwave-1_2_2-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_2-windows".ref   = "master";
  inputs."ansiwave-1_2_2-windows".repo  = "ansiwave";
  inputs."ansiwave-1_2_2-windows".type  = "github";
  inputs."ansiwave-1_2_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_3".dir   = "1_2_3";
  inputs."ansiwave-1_2_3".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_3".ref   = "master";
  inputs."ansiwave-1_2_3".repo  = "ansiwave";
  inputs."ansiwave-1_2_3".type  = "github";
  inputs."ansiwave-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_4".dir   = "1_2_4";
  inputs."ansiwave-1_2_4".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_4".ref   = "master";
  inputs."ansiwave-1_2_4".repo  = "ansiwave";
  inputs."ansiwave-1_2_4".type  = "github";
  inputs."ansiwave-1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6".dir   = "1_2_6";
  inputs."ansiwave-1_2_6".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_6".ref   = "master";
  inputs."ansiwave-1_2_6".repo  = "ansiwave";
  inputs."ansiwave-1_2_6".type  = "github";
  inputs."ansiwave-1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6-linux".dir   = "1_2_6-linux";
  inputs."ansiwave-1_2_6-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_6-linux".ref   = "master";
  inputs."ansiwave-1_2_6-linux".repo  = "ansiwave";
  inputs."ansiwave-1_2_6-linux".type  = "github";
  inputs."ansiwave-1_2_6-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6-macos".dir   = "1_2_6-macos";
  inputs."ansiwave-1_2_6-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_6-macos".ref   = "master";
  inputs."ansiwave-1_2_6-macos".repo  = "ansiwave";
  inputs."ansiwave-1_2_6-macos".type  = "github";
  inputs."ansiwave-1_2_6-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6-windows".dir   = "1_2_6-windows";
  inputs."ansiwave-1_2_6-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_2_6-windows".ref   = "master";
  inputs."ansiwave-1_2_6-windows".repo  = "ansiwave";
  inputs."ansiwave-1_2_6-windows".type  = "github";
  inputs."ansiwave-1_2_6-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0".dir   = "1_3_0";
  inputs."ansiwave-1_3_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_0".ref   = "master";
  inputs."ansiwave-1_3_0".repo  = "ansiwave";
  inputs."ansiwave-1_3_0".type  = "github";
  inputs."ansiwave-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0-linux".dir   = "1_3_0-linux";
  inputs."ansiwave-1_3_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_0-linux".ref   = "master";
  inputs."ansiwave-1_3_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_3_0-linux".type  = "github";
  inputs."ansiwave-1_3_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0-macos".dir   = "1_3_0-macos";
  inputs."ansiwave-1_3_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_0-macos".ref   = "master";
  inputs."ansiwave-1_3_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_3_0-macos".type  = "github";
  inputs."ansiwave-1_3_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0-windows".dir   = "1_3_0-windows";
  inputs."ansiwave-1_3_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_0-windows".ref   = "master";
  inputs."ansiwave-1_3_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_3_0-windows".type  = "github";
  inputs."ansiwave-1_3_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1".dir   = "1_3_1";
  inputs."ansiwave-1_3_1".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_1".ref   = "master";
  inputs."ansiwave-1_3_1".repo  = "ansiwave";
  inputs."ansiwave-1_3_1".type  = "github";
  inputs."ansiwave-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1-linux".dir   = "1_3_1-linux";
  inputs."ansiwave-1_3_1-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_1-linux".ref   = "master";
  inputs."ansiwave-1_3_1-linux".repo  = "ansiwave";
  inputs."ansiwave-1_3_1-linux".type  = "github";
  inputs."ansiwave-1_3_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1-macos".dir   = "1_3_1-macos";
  inputs."ansiwave-1_3_1-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_1-macos".ref   = "master";
  inputs."ansiwave-1_3_1-macos".repo  = "ansiwave";
  inputs."ansiwave-1_3_1-macos".type  = "github";
  inputs."ansiwave-1_3_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1-windows".dir   = "1_3_1-windows";
  inputs."ansiwave-1_3_1-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_1-windows".ref   = "master";
  inputs."ansiwave-1_3_1-windows".repo  = "ansiwave";
  inputs."ansiwave-1_3_1-windows".type  = "github";
  inputs."ansiwave-1_3_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2".dir   = "1_3_2";
  inputs."ansiwave-1_3_2".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_2".ref   = "master";
  inputs."ansiwave-1_3_2".repo  = "ansiwave";
  inputs."ansiwave-1_3_2".type  = "github";
  inputs."ansiwave-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2-linux".dir   = "1_3_2-linux";
  inputs."ansiwave-1_3_2-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_2-linux".ref   = "master";
  inputs."ansiwave-1_3_2-linux".repo  = "ansiwave";
  inputs."ansiwave-1_3_2-linux".type  = "github";
  inputs."ansiwave-1_3_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2-macos".dir   = "1_3_2-macos";
  inputs."ansiwave-1_3_2-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_2-macos".ref   = "master";
  inputs."ansiwave-1_3_2-macos".repo  = "ansiwave";
  inputs."ansiwave-1_3_2-macos".type  = "github";
  inputs."ansiwave-1_3_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2-windows".dir   = "1_3_2-windows";
  inputs."ansiwave-1_3_2-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_2-windows".ref   = "master";
  inputs."ansiwave-1_3_2-windows".repo  = "ansiwave";
  inputs."ansiwave-1_3_2-windows".type  = "github";
  inputs."ansiwave-1_3_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3".dir   = "1_3_3";
  inputs."ansiwave-1_3_3".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_3".ref   = "master";
  inputs."ansiwave-1_3_3".repo  = "ansiwave";
  inputs."ansiwave-1_3_3".type  = "github";
  inputs."ansiwave-1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3-linux".dir   = "1_3_3-linux";
  inputs."ansiwave-1_3_3-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_3-linux".ref   = "master";
  inputs."ansiwave-1_3_3-linux".repo  = "ansiwave";
  inputs."ansiwave-1_3_3-linux".type  = "github";
  inputs."ansiwave-1_3_3-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3-macos".dir   = "1_3_3-macos";
  inputs."ansiwave-1_3_3-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_3-macos".ref   = "master";
  inputs."ansiwave-1_3_3-macos".repo  = "ansiwave";
  inputs."ansiwave-1_3_3-macos".type  = "github";
  inputs."ansiwave-1_3_3-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3-windows".dir   = "1_3_3-windows";
  inputs."ansiwave-1_3_3-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_3-windows".ref   = "master";
  inputs."ansiwave-1_3_3-windows".repo  = "ansiwave";
  inputs."ansiwave-1_3_3-windows".type  = "github";
  inputs."ansiwave-1_3_3-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4".dir   = "1_3_4";
  inputs."ansiwave-1_3_4".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_4".ref   = "master";
  inputs."ansiwave-1_3_4".repo  = "ansiwave";
  inputs."ansiwave-1_3_4".type  = "github";
  inputs."ansiwave-1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4-linux".dir   = "1_3_4-linux";
  inputs."ansiwave-1_3_4-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_4-linux".ref   = "master";
  inputs."ansiwave-1_3_4-linux".repo  = "ansiwave";
  inputs."ansiwave-1_3_4-linux".type  = "github";
  inputs."ansiwave-1_3_4-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4-macos".dir   = "1_3_4-macos";
  inputs."ansiwave-1_3_4-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_4-macos".ref   = "master";
  inputs."ansiwave-1_3_4-macos".repo  = "ansiwave";
  inputs."ansiwave-1_3_4-macos".type  = "github";
  inputs."ansiwave-1_3_4-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4-windows".dir   = "1_3_4-windows";
  inputs."ansiwave-1_3_4-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_4-windows".ref   = "master";
  inputs."ansiwave-1_3_4-windows".repo  = "ansiwave";
  inputs."ansiwave-1_3_4-windows".type  = "github";
  inputs."ansiwave-1_3_4-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5".dir   = "1_3_5";
  inputs."ansiwave-1_3_5".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_5".ref   = "master";
  inputs."ansiwave-1_3_5".repo  = "ansiwave";
  inputs."ansiwave-1_3_5".type  = "github";
  inputs."ansiwave-1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5-linux".dir   = "1_3_5-linux";
  inputs."ansiwave-1_3_5-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_5-linux".ref   = "master";
  inputs."ansiwave-1_3_5-linux".repo  = "ansiwave";
  inputs."ansiwave-1_3_5-linux".type  = "github";
  inputs."ansiwave-1_3_5-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5-macos".dir   = "1_3_5-macos";
  inputs."ansiwave-1_3_5-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_5-macos".ref   = "master";
  inputs."ansiwave-1_3_5-macos".repo  = "ansiwave";
  inputs."ansiwave-1_3_5-macos".type  = "github";
  inputs."ansiwave-1_3_5-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5-windows".dir   = "1_3_5-windows";
  inputs."ansiwave-1_3_5-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_3_5-windows".ref   = "master";
  inputs."ansiwave-1_3_5-windows".repo  = "ansiwave";
  inputs."ansiwave-1_3_5-windows".type  = "github";
  inputs."ansiwave-1_3_5-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0".dir   = "1_4_0";
  inputs."ansiwave-1_4_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_0".ref   = "master";
  inputs."ansiwave-1_4_0".repo  = "ansiwave";
  inputs."ansiwave-1_4_0".type  = "github";
  inputs."ansiwave-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0-linux".dir   = "1_4_0-linux";
  inputs."ansiwave-1_4_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_0-linux".ref   = "master";
  inputs."ansiwave-1_4_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_4_0-linux".type  = "github";
  inputs."ansiwave-1_4_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0-macos".dir   = "1_4_0-macos";
  inputs."ansiwave-1_4_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_0-macos".ref   = "master";
  inputs."ansiwave-1_4_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_4_0-macos".type  = "github";
  inputs."ansiwave-1_4_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0-windows".dir   = "1_4_0-windows";
  inputs."ansiwave-1_4_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_0-windows".ref   = "master";
  inputs."ansiwave-1_4_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_4_0-windows".type  = "github";
  inputs."ansiwave-1_4_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_1".dir   = "1_4_1";
  inputs."ansiwave-1_4_1".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_1".ref   = "master";
  inputs."ansiwave-1_4_1".repo  = "ansiwave";
  inputs."ansiwave-1_4_1".type  = "github";
  inputs."ansiwave-1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_2".dir   = "1_4_2";
  inputs."ansiwave-1_4_2".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_2".ref   = "master";
  inputs."ansiwave-1_4_2".repo  = "ansiwave";
  inputs."ansiwave-1_4_2".type  = "github";
  inputs."ansiwave-1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_3".dir   = "1_4_3";
  inputs."ansiwave-1_4_3".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_4_3".ref   = "master";
  inputs."ansiwave-1_4_3".repo  = "ansiwave";
  inputs."ansiwave-1_4_3".type  = "github";
  inputs."ansiwave-1_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0".dir   = "1_5_0";
  inputs."ansiwave-1_5_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_5_0".ref   = "master";
  inputs."ansiwave-1_5_0".repo  = "ansiwave";
  inputs."ansiwave-1_5_0".type  = "github";
  inputs."ansiwave-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0-linux".dir   = "1_5_0-linux";
  inputs."ansiwave-1_5_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_5_0-linux".ref   = "master";
  inputs."ansiwave-1_5_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_5_0-linux".type  = "github";
  inputs."ansiwave-1_5_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0-macos".dir   = "1_5_0-macos";
  inputs."ansiwave-1_5_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_5_0-macos".ref   = "master";
  inputs."ansiwave-1_5_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_5_0-macos".type  = "github";
  inputs."ansiwave-1_5_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0-windows".dir   = "1_5_0-windows";
  inputs."ansiwave-1_5_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_5_0-windows".ref   = "master";
  inputs."ansiwave-1_5_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_5_0-windows".type  = "github";
  inputs."ansiwave-1_5_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_6_0".dir   = "1_6_0";
  inputs."ansiwave-1_6_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_6_0".ref   = "master";
  inputs."ansiwave-1_6_0".repo  = "ansiwave";
  inputs."ansiwave-1_6_0".type  = "github";
  inputs."ansiwave-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_6_0-linux".dir   = "1_6_0-linux";
  inputs."ansiwave-1_6_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_6_0-linux".ref   = "master";
  inputs."ansiwave-1_6_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_6_0-linux".type  = "github";
  inputs."ansiwave-1_6_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_6_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_6_0-macos".dir   = "1_6_0-macos";
  inputs."ansiwave-1_6_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_6_0-macos".ref   = "master";
  inputs."ansiwave-1_6_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_6_0-macos".type  = "github";
  inputs."ansiwave-1_6_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_6_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_6_0-windows".dir   = "1_6_0-windows";
  inputs."ansiwave-1_6_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_6_0-windows".ref   = "master";
  inputs."ansiwave-1_6_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_6_0-windows".type  = "github";
  inputs."ansiwave-1_6_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_6_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_0".dir   = "1_7_0";
  inputs."ansiwave-1_7_0".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_0".ref   = "master";
  inputs."ansiwave-1_7_0".repo  = "ansiwave";
  inputs."ansiwave-1_7_0".type  = "github";
  inputs."ansiwave-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_0-linux".dir   = "1_7_0-linux";
  inputs."ansiwave-1_7_0-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_0-linux".ref   = "master";
  inputs."ansiwave-1_7_0-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_0-linux".type  = "github";
  inputs."ansiwave-1_7_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_0-macos".dir   = "1_7_0-macos";
  inputs."ansiwave-1_7_0-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_0-macos".ref   = "master";
  inputs."ansiwave-1_7_0-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_0-macos".type  = "github";
  inputs."ansiwave-1_7_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_0-windows".dir   = "1_7_0-windows";
  inputs."ansiwave-1_7_0-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_0-windows".ref   = "master";
  inputs."ansiwave-1_7_0-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_0-windows".type  = "github";
  inputs."ansiwave-1_7_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_1".dir   = "1_7_1";
  inputs."ansiwave-1_7_1".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_1".ref   = "master";
  inputs."ansiwave-1_7_1".repo  = "ansiwave";
  inputs."ansiwave-1_7_1".type  = "github";
  inputs."ansiwave-1_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_1-linux".dir   = "1_7_1-linux";
  inputs."ansiwave-1_7_1-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_1-linux".ref   = "master";
  inputs."ansiwave-1_7_1-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_1-linux".type  = "github";
  inputs."ansiwave-1_7_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_1-macos".dir   = "1_7_1-macos";
  inputs."ansiwave-1_7_1-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_1-macos".ref   = "master";
  inputs."ansiwave-1_7_1-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_1-macos".type  = "github";
  inputs."ansiwave-1_7_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_1-windows".dir   = "1_7_1-windows";
  inputs."ansiwave-1_7_1-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_1-windows".ref   = "master";
  inputs."ansiwave-1_7_1-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_1-windows".type  = "github";
  inputs."ansiwave-1_7_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_10".dir   = "1_7_10";
  inputs."ansiwave-1_7_10".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_10".ref   = "master";
  inputs."ansiwave-1_7_10".repo  = "ansiwave";
  inputs."ansiwave-1_7_10".type  = "github";
  inputs."ansiwave-1_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_11".dir   = "1_7_11";
  inputs."ansiwave-1_7_11".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_11".ref   = "master";
  inputs."ansiwave-1_7_11".repo  = "ansiwave";
  inputs."ansiwave-1_7_11".type  = "github";
  inputs."ansiwave-1_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_11-linux".dir   = "1_7_11-linux";
  inputs."ansiwave-1_7_11-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_11-linux".ref   = "master";
  inputs."ansiwave-1_7_11-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_11-linux".type  = "github";
  inputs."ansiwave-1_7_11-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_11-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_11-macos".dir   = "1_7_11-macos";
  inputs."ansiwave-1_7_11-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_11-macos".ref   = "master";
  inputs."ansiwave-1_7_11-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_11-macos".type  = "github";
  inputs."ansiwave-1_7_11-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_11-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_11-windows".dir   = "1_7_11-windows";
  inputs."ansiwave-1_7_11-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_11-windows".ref   = "master";
  inputs."ansiwave-1_7_11-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_11-windows".type  = "github";
  inputs."ansiwave-1_7_11-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_11-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_2".dir   = "1_7_2";
  inputs."ansiwave-1_7_2".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_2".ref   = "master";
  inputs."ansiwave-1_7_2".repo  = "ansiwave";
  inputs."ansiwave-1_7_2".type  = "github";
  inputs."ansiwave-1_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_2-linux".dir   = "1_7_2-linux";
  inputs."ansiwave-1_7_2-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_2-linux".ref   = "master";
  inputs."ansiwave-1_7_2-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_2-linux".type  = "github";
  inputs."ansiwave-1_7_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_2-macos".dir   = "1_7_2-macos";
  inputs."ansiwave-1_7_2-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_2-macos".ref   = "master";
  inputs."ansiwave-1_7_2-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_2-macos".type  = "github";
  inputs."ansiwave-1_7_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_2-windows".dir   = "1_7_2-windows";
  inputs."ansiwave-1_7_2-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_2-windows".ref   = "master";
  inputs."ansiwave-1_7_2-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_2-windows".type  = "github";
  inputs."ansiwave-1_7_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_3".dir   = "1_7_3";
  inputs."ansiwave-1_7_3".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_3".ref   = "master";
  inputs."ansiwave-1_7_3".repo  = "ansiwave";
  inputs."ansiwave-1_7_3".type  = "github";
  inputs."ansiwave-1_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_3-linux".dir   = "1_7_3-linux";
  inputs."ansiwave-1_7_3-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_3-linux".ref   = "master";
  inputs."ansiwave-1_7_3-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_3-linux".type  = "github";
  inputs."ansiwave-1_7_3-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_3-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_3-macos".dir   = "1_7_3-macos";
  inputs."ansiwave-1_7_3-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_3-macos".ref   = "master";
  inputs."ansiwave-1_7_3-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_3-macos".type  = "github";
  inputs."ansiwave-1_7_3-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_3-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_3-windows".dir   = "1_7_3-windows";
  inputs."ansiwave-1_7_3-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_3-windows".ref   = "master";
  inputs."ansiwave-1_7_3-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_3-windows".type  = "github";
  inputs."ansiwave-1_7_3-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_3-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_4".dir   = "1_7_4";
  inputs."ansiwave-1_7_4".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_4".ref   = "master";
  inputs."ansiwave-1_7_4".repo  = "ansiwave";
  inputs."ansiwave-1_7_4".type  = "github";
  inputs."ansiwave-1_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_4-linux".dir   = "1_7_4-linux";
  inputs."ansiwave-1_7_4-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_4-linux".ref   = "master";
  inputs."ansiwave-1_7_4-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_4-linux".type  = "github";
  inputs."ansiwave-1_7_4-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_4-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_4-macos".dir   = "1_7_4-macos";
  inputs."ansiwave-1_7_4-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_4-macos".ref   = "master";
  inputs."ansiwave-1_7_4-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_4-macos".type  = "github";
  inputs."ansiwave-1_7_4-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_4-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_4-windows".dir   = "1_7_4-windows";
  inputs."ansiwave-1_7_4-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_4-windows".ref   = "master";
  inputs."ansiwave-1_7_4-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_4-windows".type  = "github";
  inputs."ansiwave-1_7_4-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_4-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_5".dir   = "1_7_5";
  inputs."ansiwave-1_7_5".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_5".ref   = "master";
  inputs."ansiwave-1_7_5".repo  = "ansiwave";
  inputs."ansiwave-1_7_5".type  = "github";
  inputs."ansiwave-1_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_5-linux".dir   = "1_7_5-linux";
  inputs."ansiwave-1_7_5-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_5-linux".ref   = "master";
  inputs."ansiwave-1_7_5-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_5-linux".type  = "github";
  inputs."ansiwave-1_7_5-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_5-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_5-macos".dir   = "1_7_5-macos";
  inputs."ansiwave-1_7_5-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_5-macos".ref   = "master";
  inputs."ansiwave-1_7_5-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_5-macos".type  = "github";
  inputs."ansiwave-1_7_5-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_5-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_5-windows".dir   = "1_7_5-windows";
  inputs."ansiwave-1_7_5-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_5-windows".ref   = "master";
  inputs."ansiwave-1_7_5-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_5-windows".type  = "github";
  inputs."ansiwave-1_7_5-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_5-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_6".dir   = "1_7_6";
  inputs."ansiwave-1_7_6".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_6".ref   = "master";
  inputs."ansiwave-1_7_6".repo  = "ansiwave";
  inputs."ansiwave-1_7_6".type  = "github";
  inputs."ansiwave-1_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_7".dir   = "1_7_7";
  inputs."ansiwave-1_7_7".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_7".ref   = "master";
  inputs."ansiwave-1_7_7".repo  = "ansiwave";
  inputs."ansiwave-1_7_7".type  = "github";
  inputs."ansiwave-1_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_7-linux".dir   = "1_7_7-linux";
  inputs."ansiwave-1_7_7-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_7-linux".ref   = "master";
  inputs."ansiwave-1_7_7-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_7-linux".type  = "github";
  inputs."ansiwave-1_7_7-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_7-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_7-macos".dir   = "1_7_7-macos";
  inputs."ansiwave-1_7_7-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_7-macos".ref   = "master";
  inputs."ansiwave-1_7_7-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_7-macos".type  = "github";
  inputs."ansiwave-1_7_7-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_7-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_7-windows".dir   = "1_7_7-windows";
  inputs."ansiwave-1_7_7-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_7-windows".ref   = "master";
  inputs."ansiwave-1_7_7-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_7-windows".type  = "github";
  inputs."ansiwave-1_7_7-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_7-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_8".dir   = "1_7_8";
  inputs."ansiwave-1_7_8".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_8".ref   = "master";
  inputs."ansiwave-1_7_8".repo  = "ansiwave";
  inputs."ansiwave-1_7_8".type  = "github";
  inputs."ansiwave-1_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_9".dir   = "1_7_9";
  inputs."ansiwave-1_7_9".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_9".ref   = "master";
  inputs."ansiwave-1_7_9".repo  = "ansiwave";
  inputs."ansiwave-1_7_9".type  = "github";
  inputs."ansiwave-1_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_9-linux".dir   = "1_7_9-linux";
  inputs."ansiwave-1_7_9-linux".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_9-linux".ref   = "master";
  inputs."ansiwave-1_7_9-linux".repo  = "ansiwave";
  inputs."ansiwave-1_7_9-linux".type  = "github";
  inputs."ansiwave-1_7_9-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_9-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_9-macos".dir   = "1_7_9-macos";
  inputs."ansiwave-1_7_9-macos".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_9-macos".ref   = "master";
  inputs."ansiwave-1_7_9-macos".repo  = "ansiwave";
  inputs."ansiwave-1_7_9-macos".type  = "github";
  inputs."ansiwave-1_7_9-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_9-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_7_9-windows".dir   = "1_7_9-windows";
  inputs."ansiwave-1_7_9-windows".owner = "nim-nix-pkgs";
  inputs."ansiwave-1_7_9-windows".ref   = "master";
  inputs."ansiwave-1_7_9-windows".repo  = "ansiwave";
  inputs."ansiwave-1_7_9-windows".type  = "github";
  inputs."ansiwave-1_7_9-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_7_9-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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