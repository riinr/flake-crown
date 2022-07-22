{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."allographer-main".dir   = "main";
  inputs."allographer-main".owner = "nim-nix-pkgs";
  inputs."allographer-main".ref   = "master";
  inputs."allographer-main".repo  = "allographer";
  inputs."allographer-main".type  = "github";
  inputs."allographer-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_11_0".dir   = "v0_11_0";
  inputs."allographer-v0_11_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_11_0".ref   = "master";
  inputs."allographer-v0_11_0".repo  = "allographer";
  inputs."allographer-v0_11_0".type  = "github";
  inputs."allographer-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_1".dir   = "v0_12_1";
  inputs."allographer-v0_12_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_12_1".ref   = "master";
  inputs."allographer-v0_12_1".repo  = "allographer";
  inputs."allographer-v0_12_1".type  = "github";
  inputs."allographer-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_2".dir   = "v0_12_2";
  inputs."allographer-v0_12_2".owner = "nim-nix-pkgs";
  inputs."allographer-v0_12_2".ref   = "master";
  inputs."allographer-v0_12_2".repo  = "allographer";
  inputs."allographer-v0_12_2".type  = "github";
  inputs."allographer-v0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_3".dir   = "v0_12_3";
  inputs."allographer-v0_12_3".owner = "nim-nix-pkgs";
  inputs."allographer-v0_12_3".ref   = "master";
  inputs."allographer-v0_12_3".repo  = "allographer";
  inputs."allographer-v0_12_3".type  = "github";
  inputs."allographer-v0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_12_4".dir   = "v0_12_4";
  inputs."allographer-v0_12_4".owner = "nim-nix-pkgs";
  inputs."allographer-v0_12_4".ref   = "master";
  inputs."allographer-v0_12_4".repo  = "allographer";
  inputs."allographer-v0_12_4".type  = "github";
  inputs."allographer-v0_12_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_12_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_0".dir   = "v0_13_0";
  inputs."allographer-v0_13_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_0".ref   = "master";
  inputs."allographer-v0_13_0".repo  = "allographer";
  inputs."allographer-v0_13_0".type  = "github";
  inputs."allographer-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_1".dir   = "v0_13_1";
  inputs."allographer-v0_13_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_1".ref   = "master";
  inputs."allographer-v0_13_1".repo  = "allographer";
  inputs."allographer-v0_13_1".type  = "github";
  inputs."allographer-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_2".dir   = "v0_13_2";
  inputs."allographer-v0_13_2".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_2".ref   = "master";
  inputs."allographer-v0_13_2".repo  = "allographer";
  inputs."allographer-v0_13_2".type  = "github";
  inputs."allographer-v0_13_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_3".dir   = "v0_13_3";
  inputs."allographer-v0_13_3".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_3".ref   = "master";
  inputs."allographer-v0_13_3".repo  = "allographer";
  inputs."allographer-v0_13_3".type  = "github";
  inputs."allographer-v0_13_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_4".dir   = "v0_13_4";
  inputs."allographer-v0_13_4".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_4".ref   = "master";
  inputs."allographer-v0_13_4".repo  = "allographer";
  inputs."allographer-v0_13_4".type  = "github";
  inputs."allographer-v0_13_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_5".dir   = "v0_13_5";
  inputs."allographer-v0_13_5".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_5".ref   = "master";
  inputs."allographer-v0_13_5".repo  = "allographer";
  inputs."allographer-v0_13_5".type  = "github";
  inputs."allographer-v0_13_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_13_6".dir   = "v0_13_6";
  inputs."allographer-v0_13_6".owner = "nim-nix-pkgs";
  inputs."allographer-v0_13_6".ref   = "master";
  inputs."allographer-v0_13_6".repo  = "allographer";
  inputs."allographer-v0_13_6".type  = "github";
  inputs."allographer-v0_13_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_13_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_14_0".dir   = "v0_14_0";
  inputs."allographer-v0_14_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_14_0".ref   = "master";
  inputs."allographer-v0_14_0".repo  = "allographer";
  inputs."allographer-v0_14_0".type  = "github";
  inputs."allographer-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_15_0".dir   = "v0_15_0";
  inputs."allographer-v0_15_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_15_0".ref   = "master";
  inputs."allographer-v0_15_0".repo  = "allographer";
  inputs."allographer-v0_15_0".type  = "github";
  inputs."allographer-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_15_1".dir   = "v0_15_1";
  inputs."allographer-v0_15_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_15_1".ref   = "master";
  inputs."allographer-v0_15_1".repo  = "allographer";
  inputs."allographer-v0_15_1".type  = "github";
  inputs."allographer-v0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_16_0".dir   = "v0_16_0";
  inputs."allographer-v0_16_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_16_0".ref   = "master";
  inputs."allographer-v0_16_0".repo  = "allographer";
  inputs."allographer-v0_16_0".type  = "github";
  inputs."allographer-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_0".dir   = "v0_17_0";
  inputs."allographer-v0_17_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_17_0".ref   = "master";
  inputs."allographer-v0_17_0".repo  = "allographer";
  inputs."allographer-v0_17_0".type  = "github";
  inputs."allographer-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_1".dir   = "v0_17_1";
  inputs."allographer-v0_17_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_17_1".ref   = "master";
  inputs."allographer-v0_17_1".repo  = "allographer";
  inputs."allographer-v0_17_1".type  = "github";
  inputs."allographer-v0_17_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_2".dir   = "v0_17_2";
  inputs."allographer-v0_17_2".owner = "nim-nix-pkgs";
  inputs."allographer-v0_17_2".ref   = "master";
  inputs."allographer-v0_17_2".repo  = "allographer";
  inputs."allographer-v0_17_2".type  = "github";
  inputs."allographer-v0_17_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_3".dir   = "v0_17_3";
  inputs."allographer-v0_17_3".owner = "nim-nix-pkgs";
  inputs."allographer-v0_17_3".ref   = "master";
  inputs."allographer-v0_17_3".repo  = "allographer";
  inputs."allographer-v0_17_3".type  = "github";
  inputs."allographer-v0_17_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_4".dir   = "v0_17_4";
  inputs."allographer-v0_17_4".owner = "nim-nix-pkgs";
  inputs."allographer-v0_17_4".ref   = "master";
  inputs."allographer-v0_17_4".repo  = "allographer";
  inputs."allographer-v0_17_4".type  = "github";
  inputs."allographer-v0_17_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_17_5".dir   = "v0_17_5";
  inputs."allographer-v0_17_5".owner = "nim-nix-pkgs";
  inputs."allographer-v0_17_5".ref   = "master";
  inputs."allographer-v0_17_5".repo  = "allographer";
  inputs."allographer-v0_17_5".type  = "github";
  inputs."allographer-v0_17_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_17_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_18_0".dir   = "v0_18_0";
  inputs."allographer-v0_18_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_18_0".ref   = "master";
  inputs."allographer-v0_18_0".repo  = "allographer";
  inputs."allographer-v0_18_0".type  = "github";
  inputs."allographer-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_18_1".dir   = "v0_18_1";
  inputs."allographer-v0_18_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_18_1".ref   = "master";
  inputs."allographer-v0_18_1".repo  = "allographer";
  inputs."allographer-v0_18_1".type  = "github";
  inputs."allographer-v0_18_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_18_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_19_0".dir   = "v0_19_0";
  inputs."allographer-v0_19_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_19_0".ref   = "master";
  inputs."allographer-v0_19_0".repo  = "allographer";
  inputs."allographer-v0_19_0".type  = "github";
  inputs."allographer-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_19_1".dir   = "v0_19_1";
  inputs."allographer-v0_19_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_19_1".ref   = "master";
  inputs."allographer-v0_19_1".repo  = "allographer";
  inputs."allographer-v0_19_1".type  = "github";
  inputs."allographer-v0_19_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_19_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_19_2".dir   = "v0_19_2";
  inputs."allographer-v0_19_2".owner = "nim-nix-pkgs";
  inputs."allographer-v0_19_2".ref   = "master";
  inputs."allographer-v0_19_2".repo  = "allographer";
  inputs."allographer-v0_19_2".type  = "github";
  inputs."allographer-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_20_0".dir   = "v0_20_0";
  inputs."allographer-v0_20_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_20_0".ref   = "master";
  inputs."allographer-v0_20_0".repo  = "allographer";
  inputs."allographer-v0_20_0".type  = "github";
  inputs."allographer-v0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_21_0".dir   = "v0_21_0";
  inputs."allographer-v0_21_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_21_0".ref   = "master";
  inputs."allographer-v0_21_0".repo  = "allographer";
  inputs."allographer-v0_21_0".type  = "github";
  inputs."allographer-v0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_22_0".dir   = "v0_22_0";
  inputs."allographer-v0_22_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_22_0".ref   = "master";
  inputs."allographer-v0_22_0".repo  = "allographer";
  inputs."allographer-v0_22_0".type  = "github";
  inputs."allographer-v0_22_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_22_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_23_0".dir   = "v0_23_0";
  inputs."allographer-v0_23_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_23_0".ref   = "master";
  inputs."allographer-v0_23_0".repo  = "allographer";
  inputs."allographer-v0_23_0".type  = "github";
  inputs."allographer-v0_23_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_23_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_23_1".dir   = "v0_23_1";
  inputs."allographer-v0_23_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_23_1".ref   = "master";
  inputs."allographer-v0_23_1".repo  = "allographer";
  inputs."allographer-v0_23_1".type  = "github";
  inputs."allographer-v0_23_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_23_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_23_2".dir   = "v0_23_2";
  inputs."allographer-v0_23_2".owner = "nim-nix-pkgs";
  inputs."allographer-v0_23_2".ref   = "master";
  inputs."allographer-v0_23_2".repo  = "allographer";
  inputs."allographer-v0_23_2".type  = "github";
  inputs."allographer-v0_23_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_23_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_23_3".dir   = "v0_23_3";
  inputs."allographer-v0_23_3".owner = "nim-nix-pkgs";
  inputs."allographer-v0_23_3".ref   = "master";
  inputs."allographer-v0_23_3".repo  = "allographer";
  inputs."allographer-v0_23_3".type  = "github";
  inputs."allographer-v0_23_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_23_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_7_0".dir   = "v0_7_0";
  inputs."allographer-v0_7_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_7_0".ref   = "master";
  inputs."allographer-v0_7_0".repo  = "allographer";
  inputs."allographer-v0_7_0".type  = "github";
  inputs."allographer-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_7_1".dir   = "v0_7_1";
  inputs."allographer-v0_7_1".owner = "nim-nix-pkgs";
  inputs."allographer-v0_7_1".ref   = "master";
  inputs."allographer-v0_7_1".repo  = "allographer";
  inputs."allographer-v0_7_1".type  = "github";
  inputs."allographer-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_7_2".dir   = "v0_7_2";
  inputs."allographer-v0_7_2".owner = "nim-nix-pkgs";
  inputs."allographer-v0_7_2".ref   = "master";
  inputs."allographer-v0_7_2".repo  = "allographer";
  inputs."allographer-v0_7_2".type  = "github";
  inputs."allographer-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_8_0".dir   = "v0_8_0";
  inputs."allographer-v0_8_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_8_0".ref   = "master";
  inputs."allographer-v0_8_0".repo  = "allographer";
  inputs."allographer-v0_8_0".type  = "github";
  inputs."allographer-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."allographer-v0_9_0".dir   = "v0_9_0";
  inputs."allographer-v0_9_0".owner = "nim-nix-pkgs";
  inputs."allographer-v0_9_0".ref   = "master";
  inputs."allographer-v0_9_0".repo  = "allographer";
  inputs."allographer-v0_9_0".type  = "github";
  inputs."allographer-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."allographer-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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