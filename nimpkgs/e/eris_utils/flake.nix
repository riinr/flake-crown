{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eris_utils-trunk".dir   = "trunk";
  inputs."eris_utils-trunk".owner = "nim-nix-pkgs";
  inputs."eris_utils-trunk".ref   = "master";
  inputs."eris_utils-trunk".repo  = "eris_utils";
  inputs."eris_utils-trunk".type  = "github";
  inputs."eris_utils-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_0".dir   = "0_1_0";
  inputs."eris_utils-0_1_0".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_0".ref   = "master";
  inputs."eris_utils-0_1_0".repo  = "eris_utils";
  inputs."eris_utils-0_1_0".type  = "github";
  inputs."eris_utils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_1".dir   = "0_1_1";
  inputs."eris_utils-0_1_1".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_1".ref   = "master";
  inputs."eris_utils-0_1_1".repo  = "eris_utils";
  inputs."eris_utils-0_1_1".type  = "github";
  inputs."eris_utils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_2".dir   = "0_1_2";
  inputs."eris_utils-0_1_2".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_2".ref   = "master";
  inputs."eris_utils-0_1_2".repo  = "eris_utils";
  inputs."eris_utils-0_1_2".type  = "github";
  inputs."eris_utils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_3".dir   = "0_1_3";
  inputs."eris_utils-0_1_3".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_1_3".ref   = "master";
  inputs."eris_utils-0_1_3".repo  = "eris_utils";
  inputs."eris_utils-0_1_3".type  = "github";
  inputs."eris_utils-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_2_0".dir   = "0_2_0";
  inputs."eris_utils-0_2_0".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_2_0".ref   = "master";
  inputs."eris_utils-0_2_0".repo  = "eris_utils";
  inputs."eris_utils-0_2_0".type  = "github";
  inputs."eris_utils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_3_0".dir   = "0_3_0";
  inputs."eris_utils-0_3_0".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_3_0".ref   = "master";
  inputs."eris_utils-0_3_0".repo  = "eris_utils";
  inputs."eris_utils-0_3_0".type  = "github";
  inputs."eris_utils-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_4_0".dir   = "0_4_0";
  inputs."eris_utils-0_4_0".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_4_0".ref   = "master";
  inputs."eris_utils-0_4_0".repo  = "eris_utils";
  inputs."eris_utils-0_4_0".type  = "github";
  inputs."eris_utils-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_4_1".dir   = "0_4_1";
  inputs."eris_utils-0_4_1".owner = "nim-nix-pkgs";
  inputs."eris_utils-0_4_1".ref   = "master";
  inputs."eris_utils-0_4_1".repo  = "eris_utils";
  inputs."eris_utils-0_4_1".type  = "github";
  inputs."eris_utils-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-nim-eris_utils-0_4_1".dir   = "nim-eris_utils-0_4_1";
  inputs."eris_utils-nim-eris_utils-0_4_1".owner = "nim-nix-pkgs";
  inputs."eris_utils-nim-eris_utils-0_4_1".ref   = "master";
  inputs."eris_utils-nim-eris_utils-0_4_1".repo  = "eris_utils";
  inputs."eris_utils-nim-eris_utils-0_4_1".type  = "github";
  inputs."eris_utils-nim-eris_utils-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-nim-eris_utils-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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