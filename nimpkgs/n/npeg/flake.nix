{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."npeg-master".dir   = "master";
  inputs."npeg-master".owner = "nim-nix-pkgs";
  inputs."npeg-master".ref   = "master";
  inputs."npeg-master".repo  = "npeg";
  inputs."npeg-master".type  = "github";
  inputs."npeg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_1_0".dir   = "0_1_0";
  inputs."npeg-0_1_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_1_0".ref   = "master";
  inputs."npeg-0_1_0".repo  = "npeg";
  inputs."npeg-0_1_0".type  = "github";
  inputs."npeg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_10_0".dir   = "0_10_0";
  inputs."npeg-0_10_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_10_0".ref   = "master";
  inputs."npeg-0_10_0".repo  = "npeg";
  inputs."npeg-0_10_0".type  = "github";
  inputs."npeg-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_11_0".dir   = "0_11_0";
  inputs."npeg-0_11_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_11_0".ref   = "master";
  inputs."npeg-0_11_0".repo  = "npeg";
  inputs."npeg-0_11_0".type  = "github";
  inputs."npeg-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_12_0".dir   = "0_12_0";
  inputs."npeg-0_12_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_12_0".ref   = "master";
  inputs."npeg-0_12_0".repo  = "npeg";
  inputs."npeg-0_12_0".type  = "github";
  inputs."npeg-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_13_0".dir   = "0_13_0";
  inputs."npeg-0_13_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_13_0".ref   = "master";
  inputs."npeg-0_13_0".repo  = "npeg";
  inputs."npeg-0_13_0".type  = "github";
  inputs."npeg-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_14_0".dir   = "0_14_0";
  inputs."npeg-0_14_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_14_0".ref   = "master";
  inputs."npeg-0_14_0".repo  = "npeg";
  inputs."npeg-0_14_0".type  = "github";
  inputs."npeg-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_14_1".dir   = "0_14_1";
  inputs."npeg-0_14_1".owner = "nim-nix-pkgs";
  inputs."npeg-0_14_1".ref   = "master";
  inputs."npeg-0_14_1".repo  = "npeg";
  inputs."npeg-0_14_1".type  = "github";
  inputs."npeg-0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_15_0".dir   = "0_15_0";
  inputs."npeg-0_15_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_15_0".ref   = "master";
  inputs."npeg-0_15_0".repo  = "npeg";
  inputs."npeg-0_15_0".type  = "github";
  inputs."npeg-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_16_0".dir   = "0_16_0";
  inputs."npeg-0_16_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_16_0".ref   = "master";
  inputs."npeg-0_16_0".repo  = "npeg";
  inputs."npeg-0_16_0".type  = "github";
  inputs."npeg-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_17_0".dir   = "0_17_0";
  inputs."npeg-0_17_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_17_0".ref   = "master";
  inputs."npeg-0_17_0".repo  = "npeg";
  inputs."npeg-0_17_0".type  = "github";
  inputs."npeg-0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_17_1".dir   = "0_17_1";
  inputs."npeg-0_17_1".owner = "nim-nix-pkgs";
  inputs."npeg-0_17_1".ref   = "master";
  inputs."npeg-0_17_1".repo  = "npeg";
  inputs."npeg-0_17_1".type  = "github";
  inputs."npeg-0_17_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_17_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_18_0".dir   = "0_18_0";
  inputs."npeg-0_18_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_18_0".ref   = "master";
  inputs."npeg-0_18_0".repo  = "npeg";
  inputs."npeg-0_18_0".type  = "github";
  inputs."npeg-0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_19_0".dir   = "0_19_0";
  inputs."npeg-0_19_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_19_0".ref   = "master";
  inputs."npeg-0_19_0".repo  = "npeg";
  inputs."npeg-0_19_0".type  = "github";
  inputs."npeg-0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_2_0".dir   = "0_2_0";
  inputs."npeg-0_2_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_2_0".ref   = "master";
  inputs."npeg-0_2_0".repo  = "npeg";
  inputs."npeg-0_2_0".type  = "github";
  inputs."npeg-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_20_0".dir   = "0_20_0";
  inputs."npeg-0_20_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_20_0".ref   = "master";
  inputs."npeg-0_20_0".repo  = "npeg";
  inputs."npeg-0_20_0".type  = "github";
  inputs."npeg-0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_21_0".dir   = "0_21_0";
  inputs."npeg-0_21_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_21_0".ref   = "master";
  inputs."npeg-0_21_0".repo  = "npeg";
  inputs."npeg-0_21_0".type  = "github";
  inputs."npeg-0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_21_1".dir   = "0_21_1";
  inputs."npeg-0_21_1".owner = "nim-nix-pkgs";
  inputs."npeg-0_21_1".ref   = "master";
  inputs."npeg-0_21_1".repo  = "npeg";
  inputs."npeg-0_21_1".type  = "github";
  inputs."npeg-0_21_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_21_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_21_2".dir   = "0_21_2";
  inputs."npeg-0_21_2".owner = "nim-nix-pkgs";
  inputs."npeg-0_21_2".ref   = "master";
  inputs."npeg-0_21_2".repo  = "npeg";
  inputs."npeg-0_21_2".type  = "github";
  inputs."npeg-0_21_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_21_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_21_3".dir   = "0_21_3";
  inputs."npeg-0_21_3".owner = "nim-nix-pkgs";
  inputs."npeg-0_21_3".ref   = "master";
  inputs."npeg-0_21_3".repo  = "npeg";
  inputs."npeg-0_21_3".type  = "github";
  inputs."npeg-0_21_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_21_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_22_0".dir   = "0_22_0";
  inputs."npeg-0_22_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_22_0".ref   = "master";
  inputs."npeg-0_22_0".repo  = "npeg";
  inputs."npeg-0_22_0".type  = "github";
  inputs."npeg-0_22_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_22_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_22_1".dir   = "0_22_1";
  inputs."npeg-0_22_1".owner = "nim-nix-pkgs";
  inputs."npeg-0_22_1".ref   = "master";
  inputs."npeg-0_22_1".repo  = "npeg";
  inputs."npeg-0_22_1".type  = "github";
  inputs."npeg-0_22_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_22_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_22_2".dir   = "0_22_2";
  inputs."npeg-0_22_2".owner = "nim-nix-pkgs";
  inputs."npeg-0_22_2".ref   = "master";
  inputs."npeg-0_22_2".repo  = "npeg";
  inputs."npeg-0_22_2".type  = "github";
  inputs."npeg-0_22_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_22_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_23_0".dir   = "0_23_0";
  inputs."npeg-0_23_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_23_0".ref   = "master";
  inputs."npeg-0_23_0".repo  = "npeg";
  inputs."npeg-0_23_0".type  = "github";
  inputs."npeg-0_23_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_23_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_23_1".dir   = "0_23_1";
  inputs."npeg-0_23_1".owner = "nim-nix-pkgs";
  inputs."npeg-0_23_1".ref   = "master";
  inputs."npeg-0_23_1".repo  = "npeg";
  inputs."npeg-0_23_1".type  = "github";
  inputs."npeg-0_23_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_23_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_23_2".dir   = "0_23_2";
  inputs."npeg-0_23_2".owner = "nim-nix-pkgs";
  inputs."npeg-0_23_2".ref   = "master";
  inputs."npeg-0_23_2".repo  = "npeg";
  inputs."npeg-0_23_2".type  = "github";
  inputs."npeg-0_23_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_23_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_24_0".dir   = "0_24_0";
  inputs."npeg-0_24_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_24_0".ref   = "master";
  inputs."npeg-0_24_0".repo  = "npeg";
  inputs."npeg-0_24_0".type  = "github";
  inputs."npeg-0_24_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_24_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_24_1".dir   = "0_24_1";
  inputs."npeg-0_24_1".owner = "nim-nix-pkgs";
  inputs."npeg-0_24_1".ref   = "master";
  inputs."npeg-0_24_1".repo  = "npeg";
  inputs."npeg-0_24_1".type  = "github";
  inputs."npeg-0_24_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_24_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_25_0".dir   = "0_25_0";
  inputs."npeg-0_25_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_25_0".ref   = "master";
  inputs."npeg-0_25_0".repo  = "npeg";
  inputs."npeg-0_25_0".type  = "github";
  inputs."npeg-0_25_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_25_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_26_0".dir   = "0_26_0";
  inputs."npeg-0_26_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_26_0".ref   = "master";
  inputs."npeg-0_26_0".repo  = "npeg";
  inputs."npeg-0_26_0".type  = "github";
  inputs."npeg-0_26_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_26_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_3_0".dir   = "0_3_0";
  inputs."npeg-0_3_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_3_0".ref   = "master";
  inputs."npeg-0_3_0".repo  = "npeg";
  inputs."npeg-0_3_0".type  = "github";
  inputs."npeg-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_4_0".dir   = "0_4_0";
  inputs."npeg-0_4_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_4_0".ref   = "master";
  inputs."npeg-0_4_0".repo  = "npeg";
  inputs."npeg-0_4_0".type  = "github";
  inputs."npeg-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_5_0".dir   = "0_5_0";
  inputs."npeg-0_5_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_5_0".ref   = "master";
  inputs."npeg-0_5_0".repo  = "npeg";
  inputs."npeg-0_5_0".type  = "github";
  inputs."npeg-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_6_0".dir   = "0_6_0";
  inputs."npeg-0_6_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_6_0".ref   = "master";
  inputs."npeg-0_6_0".repo  = "npeg";
  inputs."npeg-0_6_0".type  = "github";
  inputs."npeg-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_7_0".dir   = "0_7_0";
  inputs."npeg-0_7_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_7_0".ref   = "master";
  inputs."npeg-0_7_0".repo  = "npeg";
  inputs."npeg-0_7_0".type  = "github";
  inputs."npeg-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_8_0".dir   = "0_8_0";
  inputs."npeg-0_8_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_8_0".ref   = "master";
  inputs."npeg-0_8_0".repo  = "npeg";
  inputs."npeg-0_8_0".type  = "github";
  inputs."npeg-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg-0_9_0".dir   = "0_9_0";
  inputs."npeg-0_9_0".owner = "nim-nix-pkgs";
  inputs."npeg-0_9_0".ref   = "master";
  inputs."npeg-0_9_0".repo  = "npeg";
  inputs."npeg-0_9_0".type  = "github";
  inputs."npeg-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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