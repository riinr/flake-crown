{
  description = ''Linear time regex matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."regex-master".dir   = "master";
  inputs."regex-master".owner = "nim-nix-pkgs";
  inputs."regex-master".ref   = "master";
  inputs."regex-master".repo  = "regex";
  inputs."regex-master".type  = "github";
  inputs."regex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_1_0".dir   = "v0_1_0";
  inputs."regex-v0_1_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_1_0".ref   = "master";
  inputs."regex-v0_1_0".repo  = "regex";
  inputs."regex-v0_1_0".type  = "github";
  inputs."regex-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_10_0".dir   = "v0_10_0";
  inputs."regex-v0_10_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_10_0".ref   = "master";
  inputs."regex-v0_10_0".repo  = "regex";
  inputs."regex-v0_10_0".type  = "github";
  inputs."regex-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_10_1".dir   = "v0_10_1";
  inputs."regex-v0_10_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_10_1".ref   = "master";
  inputs."regex-v0_10_1".repo  = "regex";
  inputs."regex-v0_10_1".type  = "github";
  inputs."regex-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_11_0".dir   = "v0_11_0";
  inputs."regex-v0_11_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_11_0".ref   = "master";
  inputs."regex-v0_11_0".repo  = "regex";
  inputs."regex-v0_11_0".type  = "github";
  inputs."regex-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_11_1".dir   = "v0_11_1";
  inputs."regex-v0_11_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_11_1".ref   = "master";
  inputs."regex-v0_11_1".repo  = "regex";
  inputs."regex-v0_11_1".type  = "github";
  inputs."regex-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_11_2".dir   = "v0_11_2";
  inputs."regex-v0_11_2".owner = "nim-nix-pkgs";
  inputs."regex-v0_11_2".ref   = "master";
  inputs."regex-v0_11_2".repo  = "regex";
  inputs."regex-v0_11_2".type  = "github";
  inputs."regex-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_12_0".dir   = "v0_12_0";
  inputs."regex-v0_12_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_12_0".ref   = "master";
  inputs."regex-v0_12_0".repo  = "regex";
  inputs."regex-v0_12_0".type  = "github";
  inputs."regex-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_13_0".dir   = "v0_13_0";
  inputs."regex-v0_13_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_13_0".ref   = "master";
  inputs."regex-v0_13_0".repo  = "regex";
  inputs."regex-v0_13_0".type  = "github";
  inputs."regex-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_13_1".dir   = "v0_13_1";
  inputs."regex-v0_13_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_13_1".ref   = "master";
  inputs."regex-v0_13_1".repo  = "regex";
  inputs."regex-v0_13_1".type  = "github";
  inputs."regex-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_14_0".dir   = "v0_14_0";
  inputs."regex-v0_14_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_14_0".ref   = "master";
  inputs."regex-v0_14_0".repo  = "regex";
  inputs."regex-v0_14_0".type  = "github";
  inputs."regex-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_14_1".dir   = "v0_14_1";
  inputs."regex-v0_14_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_14_1".ref   = "master";
  inputs."regex-v0_14_1".repo  = "regex";
  inputs."regex-v0_14_1".type  = "github";
  inputs."regex-v0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_15_0".dir   = "v0_15_0";
  inputs."regex-v0_15_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_15_0".ref   = "master";
  inputs."regex-v0_15_0".repo  = "regex";
  inputs."regex-v0_15_0".type  = "github";
  inputs."regex-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_16_0".dir   = "v0_16_0";
  inputs."regex-v0_16_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_16_0".ref   = "master";
  inputs."regex-v0_16_0".repo  = "regex";
  inputs."regex-v0_16_0".type  = "github";
  inputs."regex-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_16_1".dir   = "v0_16_1";
  inputs."regex-v0_16_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_16_1".ref   = "master";
  inputs."regex-v0_16_1".repo  = "regex";
  inputs."regex-v0_16_1".type  = "github";
  inputs."regex-v0_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_16_2".dir   = "v0_16_2";
  inputs."regex-v0_16_2".owner = "nim-nix-pkgs";
  inputs."regex-v0_16_2".ref   = "master";
  inputs."regex-v0_16_2".repo  = "regex";
  inputs."regex-v0_16_2".type  = "github";
  inputs."regex-v0_16_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_16_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_17_0".dir   = "v0_17_0";
  inputs."regex-v0_17_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_17_0".ref   = "master";
  inputs."regex-v0_17_0".repo  = "regex";
  inputs."regex-v0_17_0".type  = "github";
  inputs."regex-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_17_1".dir   = "v0_17_1";
  inputs."regex-v0_17_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_17_1".ref   = "master";
  inputs."regex-v0_17_1".repo  = "regex";
  inputs."regex-v0_17_1".type  = "github";
  inputs."regex-v0_17_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_17_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_18_0".dir   = "v0_18_0";
  inputs."regex-v0_18_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_18_0".ref   = "master";
  inputs."regex-v0_18_0".repo  = "regex";
  inputs."regex-v0_18_0".type  = "github";
  inputs."regex-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_19_0".dir   = "v0_19_0";
  inputs."regex-v0_19_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_19_0".ref   = "master";
  inputs."regex-v0_19_0".repo  = "regex";
  inputs."regex-v0_19_0".type  = "github";
  inputs."regex-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_2_0".dir   = "v0_2_0";
  inputs."regex-v0_2_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_2_0".ref   = "master";
  inputs."regex-v0_2_0".repo  = "regex";
  inputs."regex-v0_2_0".type  = "github";
  inputs."regex-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_3_0".dir   = "v0_3_0";
  inputs."regex-v0_3_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_3_0".ref   = "master";
  inputs."regex-v0_3_0".repo  = "regex";
  inputs."regex-v0_3_0".type  = "github";
  inputs."regex-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_4_0".dir   = "v0_4_0";
  inputs."regex-v0_4_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_4_0".ref   = "master";
  inputs."regex-v0_4_0".repo  = "regex";
  inputs."regex-v0_4_0".type  = "github";
  inputs."regex-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_4_1".dir   = "v0_4_1";
  inputs."regex-v0_4_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_4_1".ref   = "master";
  inputs."regex-v0_4_1".repo  = "regex";
  inputs."regex-v0_4_1".type  = "github";
  inputs."regex-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_5_0".dir   = "v0_5_0";
  inputs."regex-v0_5_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_5_0".ref   = "master";
  inputs."regex-v0_5_0".repo  = "regex";
  inputs."regex-v0_5_0".type  = "github";
  inputs."regex-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_6_0".dir   = "v0_6_0";
  inputs."regex-v0_6_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_6_0".ref   = "master";
  inputs."regex-v0_6_0".repo  = "regex";
  inputs."regex-v0_6_0".type  = "github";
  inputs."regex-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_6_1".dir   = "v0_6_1";
  inputs."regex-v0_6_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_6_1".ref   = "master";
  inputs."regex-v0_6_1".repo  = "regex";
  inputs."regex-v0_6_1".type  = "github";
  inputs."regex-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_6_2".dir   = "v0_6_2";
  inputs."regex-v0_6_2".owner = "nim-nix-pkgs";
  inputs."regex-v0_6_2".ref   = "master";
  inputs."regex-v0_6_2".repo  = "regex";
  inputs."regex-v0_6_2".type  = "github";
  inputs."regex-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_6_3".dir   = "v0_6_3";
  inputs."regex-v0_6_3".owner = "nim-nix-pkgs";
  inputs."regex-v0_6_3".ref   = "master";
  inputs."regex-v0_6_3".repo  = "regex";
  inputs."regex-v0_6_3".type  = "github";
  inputs."regex-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_7_0".dir   = "v0_7_0";
  inputs."regex-v0_7_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_7_0".ref   = "master";
  inputs."regex-v0_7_0".repo  = "regex";
  inputs."regex-v0_7_0".type  = "github";
  inputs."regex-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_7_1".dir   = "v0_7_1";
  inputs."regex-v0_7_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_7_1".ref   = "master";
  inputs."regex-v0_7_1".repo  = "regex";
  inputs."regex-v0_7_1".type  = "github";
  inputs."regex-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_7_2".dir   = "v0_7_2";
  inputs."regex-v0_7_2".owner = "nim-nix-pkgs";
  inputs."regex-v0_7_2".ref   = "master";
  inputs."regex-v0_7_2".repo  = "regex";
  inputs."regex-v0_7_2".type  = "github";
  inputs."regex-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_7_3".dir   = "v0_7_3";
  inputs."regex-v0_7_3".owner = "nim-nix-pkgs";
  inputs."regex-v0_7_3".ref   = "master";
  inputs."regex-v0_7_3".repo  = "regex";
  inputs."regex-v0_7_3".type  = "github";
  inputs."regex-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_7_4".dir   = "v0_7_4";
  inputs."regex-v0_7_4".owner = "nim-nix-pkgs";
  inputs."regex-v0_7_4".ref   = "master";
  inputs."regex-v0_7_4".repo  = "regex";
  inputs."regex-v0_7_4".type  = "github";
  inputs."regex-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_8_0".dir   = "v0_8_0";
  inputs."regex-v0_8_0".owner = "nim-nix-pkgs";
  inputs."regex-v0_8_0".ref   = "master";
  inputs."regex-v0_8_0".repo  = "regex";
  inputs."regex-v0_8_0".type  = "github";
  inputs."regex-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex-v0_8_1".dir   = "v0_8_1";
  inputs."regex-v0_8_1".owner = "nim-nix-pkgs";
  inputs."regex-v0_8_1".ref   = "master";
  inputs."regex-v0_8_1".repo  = "regex";
  inputs."regex-v0_8_1".type  = "github";
  inputs."regex-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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