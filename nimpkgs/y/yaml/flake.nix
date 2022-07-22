{
  description = ''YAML 1.2 implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."yaml-master".dir   = "master";
  inputs."yaml-master".owner = "nim-nix-pkgs";
  inputs."yaml-master".ref   = "master";
  inputs."yaml-master".repo  = "yaml";
  inputs."yaml-master".type  = "github";
  inputs."yaml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimyaml-v0_1_0".dir   = "v0_1_0";
  inputs."nimyaml-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimyaml-v0_1_0".ref   = "master";
  inputs."nimyaml-v0_1_0".repo  = "nimyaml";
  inputs."nimyaml-v0_1_0".type  = "github";
  inputs."nimyaml-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimyaml-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_10_0".dir   = "v0_10_0";
  inputs."yaml-v0_10_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_10_0".ref   = "master";
  inputs."yaml-v0_10_0".repo  = "yaml";
  inputs."yaml-v0_10_0".type  = "github";
  inputs."yaml-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_10_1".dir   = "v0_10_1";
  inputs."yaml-v0_10_1".owner = "nim-nix-pkgs";
  inputs."yaml-v0_10_1".ref   = "master";
  inputs."yaml-v0_10_1".repo  = "yaml";
  inputs."yaml-v0_10_1".type  = "github";
  inputs."yaml-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_10_2".dir   = "v0_10_2";
  inputs."yaml-v0_10_2".owner = "nim-nix-pkgs";
  inputs."yaml-v0_10_2".ref   = "master";
  inputs."yaml-v0_10_2".repo  = "yaml";
  inputs."yaml-v0_10_2".type  = "github";
  inputs."yaml-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_10_3".dir   = "v0_10_3";
  inputs."yaml-v0_10_3".owner = "nim-nix-pkgs";
  inputs."yaml-v0_10_3".ref   = "master";
  inputs."yaml-v0_10_3".repo  = "yaml";
  inputs."yaml-v0_10_3".type  = "github";
  inputs."yaml-v0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_10_4".dir   = "v0_10_4";
  inputs."yaml-v0_10_4".owner = "nim-nix-pkgs";
  inputs."yaml-v0_10_4".ref   = "master";
  inputs."yaml-v0_10_4".repo  = "yaml";
  inputs."yaml-v0_10_4".type  = "github";
  inputs."yaml-v0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_11_0".dir   = "v0_11_0";
  inputs."yaml-v0_11_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_11_0".ref   = "master";
  inputs."yaml-v0_11_0".repo  = "yaml";
  inputs."yaml-v0_11_0".type  = "github";
  inputs."yaml-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_12_0".dir   = "v0_12_0";
  inputs."yaml-v0_12_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_12_0".ref   = "master";
  inputs."yaml-v0_12_0".repo  = "yaml";
  inputs."yaml-v0_12_0".type  = "github";
  inputs."yaml-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_13_0".dir   = "v0_13_0";
  inputs."yaml-v0_13_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_13_0".ref   = "master";
  inputs."yaml-v0_13_0".repo  = "yaml";
  inputs."yaml-v0_13_0".type  = "github";
  inputs."yaml-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_13_1".dir   = "v0_13_1";
  inputs."yaml-v0_13_1".owner = "nim-nix-pkgs";
  inputs."yaml-v0_13_1".ref   = "master";
  inputs."yaml-v0_13_1".repo  = "yaml";
  inputs."yaml-v0_13_1".type  = "github";
  inputs."yaml-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_14_0".dir   = "v0_14_0";
  inputs."yaml-v0_14_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_14_0".ref   = "master";
  inputs."yaml-v0_14_0".repo  = "yaml";
  inputs."yaml-v0_14_0".type  = "github";
  inputs."yaml-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_15_0".dir   = "v0_15_0";
  inputs."yaml-v0_15_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_15_0".ref   = "master";
  inputs."yaml-v0_15_0".repo  = "yaml";
  inputs."yaml-v0_15_0".type  = "github";
  inputs."yaml-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_16_0".dir   = "v0_16_0";
  inputs."yaml-v0_16_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_16_0".ref   = "master";
  inputs."yaml-v0_16_0".repo  = "yaml";
  inputs."yaml-v0_16_0".type  = "github";
  inputs."yaml-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimyaml-v0_2_0".dir   = "v0_2_0";
  inputs."nimyaml-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimyaml-v0_2_0".ref   = "master";
  inputs."nimyaml-v0_2_0".repo  = "nimyaml";
  inputs."nimyaml-v0_2_0".type  = "github";
  inputs."nimyaml-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimyaml-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimyaml-v0_3_0".dir   = "v0_3_0";
  inputs."nimyaml-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimyaml-v0_3_0".ref   = "master";
  inputs."nimyaml-v0_3_0".repo  = "nimyaml";
  inputs."nimyaml-v0_3_0".type  = "github";
  inputs."nimyaml-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimyaml-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimyaml-v0_4_0".dir   = "v0_4_0";
  inputs."nimyaml-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimyaml-v0_4_0".ref   = "master";
  inputs."nimyaml-v0_4_0".repo  = "nimyaml";
  inputs."nimyaml-v0_4_0".type  = "github";
  inputs."nimyaml-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimyaml-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_5_0".dir   = "v0_5_0";
  inputs."yaml-v0_5_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_5_0".ref   = "master";
  inputs."yaml-v0_5_0".repo  = "yaml";
  inputs."yaml-v0_5_0".type  = "github";
  inputs."yaml-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_5_1".dir   = "v0_5_1";
  inputs."yaml-v0_5_1".owner = "nim-nix-pkgs";
  inputs."yaml-v0_5_1".ref   = "master";
  inputs."yaml-v0_5_1".repo  = "yaml";
  inputs."yaml-v0_5_1".type  = "github";
  inputs."yaml-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_6_0".dir   = "v0_6_0";
  inputs."yaml-v0_6_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_6_0".ref   = "master";
  inputs."yaml-v0_6_0".repo  = "yaml";
  inputs."yaml-v0_6_0".type  = "github";
  inputs."yaml-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_6_1".dir   = "v0_6_1";
  inputs."yaml-v0_6_1".owner = "nim-nix-pkgs";
  inputs."yaml-v0_6_1".ref   = "master";
  inputs."yaml-v0_6_1".repo  = "yaml";
  inputs."yaml-v0_6_1".type  = "github";
  inputs."yaml-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_6_2".dir   = "v0_6_2";
  inputs."yaml-v0_6_2".owner = "nim-nix-pkgs";
  inputs."yaml-v0_6_2".ref   = "master";
  inputs."yaml-v0_6_2".repo  = "yaml";
  inputs."yaml-v0_6_2".type  = "github";
  inputs."yaml-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_6_3".dir   = "v0_6_3";
  inputs."yaml-v0_6_3".owner = "nim-nix-pkgs";
  inputs."yaml-v0_6_3".ref   = "master";
  inputs."yaml-v0_6_3".repo  = "yaml";
  inputs."yaml-v0_6_3".type  = "github";
  inputs."yaml-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_7_0".dir   = "v0_7_0";
  inputs."yaml-v0_7_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_7_0".ref   = "master";
  inputs."yaml-v0_7_0".repo  = "yaml";
  inputs."yaml-v0_7_0".type  = "github";
  inputs."yaml-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_8_0".dir   = "v0_8_0";
  inputs."yaml-v0_8_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_8_0".ref   = "master";
  inputs."yaml-v0_8_0".repo  = "yaml";
  inputs."yaml-v0_8_0".type  = "github";
  inputs."yaml-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_9_0".dir   = "v0_9_0";
  inputs."yaml-v0_9_0".owner = "nim-nix-pkgs";
  inputs."yaml-v0_9_0".ref   = "master";
  inputs."yaml-v0_9_0".repo  = "yaml";
  inputs."yaml-v0_9_0".type  = "github";
  inputs."yaml-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v0_9_1".dir   = "v0_9_1";
  inputs."yaml-v0_9_1".owner = "nim-nix-pkgs";
  inputs."yaml-v0_9_1".ref   = "master";
  inputs."yaml-v0_9_1".repo  = "yaml";
  inputs."yaml-v0_9_1".type  = "github";
  inputs."yaml-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml-v1_0_0".dir   = "v1_0_0";
  inputs."yaml-v1_0_0".owner = "nim-nix-pkgs";
  inputs."yaml-v1_0_0".ref   = "master";
  inputs."yaml-v1_0_0".repo  = "yaml";
  inputs."yaml-v1_0_0".type  = "github";
  inputs."yaml-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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