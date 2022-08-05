{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."svdpi-master".dir   = "master";
  inputs."svdpi-master".owner = "nim-nix-pkgs";
  inputs."svdpi-master".ref   = "master";
  inputs."svdpi-master".repo  = "svdpi";
  inputs."svdpi-master".type  = "github";
  inputs."svdpi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_1_1".dir   = "v0_1_1";
  inputs."svdpi-v0_1_1".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_1_1".ref   = "master";
  inputs."svdpi-v0_1_1".repo  = "svdpi";
  inputs."svdpi-v0_1_1".type  = "github";
  inputs."svdpi-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_2_0".dir   = "v0_2_0";
  inputs."svdpi-v0_2_0".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_2_0".ref   = "master";
  inputs."svdpi-v0_2_0".repo  = "svdpi";
  inputs."svdpi-v0_2_0".type  = "github";
  inputs."svdpi-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_2_1".dir   = "v0_2_1";
  inputs."svdpi-v0_2_1".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_2_1".ref   = "master";
  inputs."svdpi-v0_2_1".repo  = "svdpi";
  inputs."svdpi-v0_2_1".type  = "github";
  inputs."svdpi-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_3_0".dir   = "v0_3_0";
  inputs."svdpi-v0_3_0".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_3_0".ref   = "master";
  inputs."svdpi-v0_3_0".repo  = "svdpi";
  inputs."svdpi-v0_3_0".type  = "github";
  inputs."svdpi-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_4_0".dir   = "v0_4_0";
  inputs."svdpi-v0_4_0".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_4_0".ref   = "master";
  inputs."svdpi-v0_4_0".repo  = "svdpi";
  inputs."svdpi-v0_4_0".type  = "github";
  inputs."svdpi-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_5_0".dir   = "v0_5_0";
  inputs."svdpi-v0_5_0".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_5_0".ref   = "master";
  inputs."svdpi-v0_5_0".repo  = "svdpi";
  inputs."svdpi-v0_5_0".type  = "github";
  inputs."svdpi-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_5_1".dir   = "v0_5_1";
  inputs."svdpi-v0_5_1".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_5_1".ref   = "master";
  inputs."svdpi-v0_5_1".repo  = "svdpi";
  inputs."svdpi-v0_5_1".type  = "github";
  inputs."svdpi-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_5_2".dir   = "v0_5_2";
  inputs."svdpi-v0_5_2".owner = "nim-nix-pkgs";
  inputs."svdpi-v0_5_2".ref   = "master";
  inputs."svdpi-v0_5_2".repo  = "svdpi";
  inputs."svdpi-v0_5_2".type  = "github";
  inputs."svdpi-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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