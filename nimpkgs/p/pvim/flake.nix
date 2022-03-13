{
  description = ''A vim-based editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pvim-master".dir   = "master";
  inputs."pvim-master".owner = "nim-nix-pkgs";
  inputs."pvim-master".ref   = "master";
  inputs."pvim-master".repo  = "pvim";
  inputs."pvim-master".type  = "github";
  inputs."pvim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_1_0".dir   = "0_1_0";
  inputs."pvim-0_1_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_1_0".ref   = "master";
  inputs."pvim-0_1_0".repo  = "pvim";
  inputs."pvim-0_1_0".type  = "github";
  inputs."pvim-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_10_0".dir   = "0_10_0";
  inputs."pvim-0_10_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_10_0".ref   = "master";
  inputs."pvim-0_10_0".repo  = "pvim";
  inputs."pvim-0_10_0".type  = "github";
  inputs."pvim-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_11_0".dir   = "0_11_0";
  inputs."pvim-0_11_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_11_0".ref   = "master";
  inputs."pvim-0_11_0".repo  = "pvim";
  inputs."pvim-0_11_0".type  = "github";
  inputs."pvim-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_12_0".dir   = "0_12_0";
  inputs."pvim-0_12_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_12_0".ref   = "master";
  inputs."pvim-0_12_0".repo  = "pvim";
  inputs."pvim-0_12_0".type  = "github";
  inputs."pvim-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_13_0".dir   = "0_13_0";
  inputs."pvim-0_13_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_13_0".ref   = "master";
  inputs."pvim-0_13_0".repo  = "pvim";
  inputs."pvim-0_13_0".type  = "github";
  inputs."pvim-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_14_0".dir   = "0_14_0";
  inputs."pvim-0_14_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_14_0".ref   = "master";
  inputs."pvim-0_14_0".repo  = "pvim";
  inputs."pvim-0_14_0".type  = "github";
  inputs."pvim-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_15_1".dir   = "0_15_1";
  inputs."pvim-0_15_1".owner = "nim-nix-pkgs";
  inputs."pvim-0_15_1".ref   = "master";
  inputs."pvim-0_15_1".repo  = "pvim";
  inputs."pvim-0_15_1".type  = "github";
  inputs."pvim-0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_16_0".dir   = "0_16_0";
  inputs."pvim-0_16_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_16_0".ref   = "master";
  inputs."pvim-0_16_0".repo  = "pvim";
  inputs."pvim-0_16_0".type  = "github";
  inputs."pvim-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_16_1".dir   = "0_16_1";
  inputs."pvim-0_16_1".owner = "nim-nix-pkgs";
  inputs."pvim-0_16_1".ref   = "master";
  inputs."pvim-0_16_1".repo  = "pvim";
  inputs."pvim-0_16_1".type  = "github";
  inputs."pvim-0_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_17_0".dir   = "0_17_0";
  inputs."pvim-0_17_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_17_0".ref   = "master";
  inputs."pvim-0_17_0".repo  = "pvim";
  inputs."pvim-0_17_0".type  = "github";
  inputs."pvim-0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_17_1".dir   = "0_17_1";
  inputs."pvim-0_17_1".owner = "nim-nix-pkgs";
  inputs."pvim-0_17_1".ref   = "master";
  inputs."pvim-0_17_1".repo  = "pvim";
  inputs."pvim-0_17_1".type  = "github";
  inputs."pvim-0_17_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_17_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_18_0".dir   = "0_18_0";
  inputs."pvim-0_18_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_18_0".ref   = "master";
  inputs."pvim-0_18_0".repo  = "pvim";
  inputs."pvim-0_18_0".type  = "github";
  inputs."pvim-0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_18_1".dir   = "0_18_1";
  inputs."pvim-0_18_1".owner = "nim-nix-pkgs";
  inputs."pvim-0_18_1".ref   = "master";
  inputs."pvim-0_18_1".repo  = "pvim";
  inputs."pvim-0_18_1".type  = "github";
  inputs."pvim-0_18_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_18_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_18_2".dir   = "0_18_2";
  inputs."pvim-0_18_2".owner = "nim-nix-pkgs";
  inputs."pvim-0_18_2".ref   = "master";
  inputs."pvim-0_18_2".repo  = "pvim";
  inputs."pvim-0_18_2".type  = "github";
  inputs."pvim-0_18_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_18_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_2_0".dir   = "0_2_0";
  inputs."pvim-0_2_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_2_0".ref   = "master";
  inputs."pvim-0_2_0".repo  = "pvim";
  inputs."pvim-0_2_0".type  = "github";
  inputs."pvim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_3_0".dir   = "0_3_0";
  inputs."pvim-0_3_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_3_0".ref   = "master";
  inputs."pvim-0_3_0".repo  = "pvim";
  inputs."pvim-0_3_0".type  = "github";
  inputs."pvim-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_4_0".dir   = "0_4_0";
  inputs."pvim-0_4_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_4_0".ref   = "master";
  inputs."pvim-0_4_0".repo  = "pvim";
  inputs."pvim-0_4_0".type  = "github";
  inputs."pvim-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_5_0".dir   = "0_5_0";
  inputs."pvim-0_5_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_5_0".ref   = "master";
  inputs."pvim-0_5_0".repo  = "pvim";
  inputs."pvim-0_5_0".type  = "github";
  inputs."pvim-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_6_0".dir   = "0_6_0";
  inputs."pvim-0_6_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_6_0".ref   = "master";
  inputs."pvim-0_6_0".repo  = "pvim";
  inputs."pvim-0_6_0".type  = "github";
  inputs."pvim-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_7_0".dir   = "0_7_0";
  inputs."pvim-0_7_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_7_0".ref   = "master";
  inputs."pvim-0_7_0".repo  = "pvim";
  inputs."pvim-0_7_0".type  = "github";
  inputs."pvim-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_8_0".dir   = "0_8_0";
  inputs."pvim-0_8_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_8_0".ref   = "master";
  inputs."pvim-0_8_0".repo  = "pvim";
  inputs."pvim-0_8_0".type  = "github";
  inputs."pvim-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pvim-0_9_0".dir   = "0_9_0";
  inputs."pvim-0_9_0".owner = "nim-nix-pkgs";
  inputs."pvim-0_9_0".ref   = "master";
  inputs."pvim-0_9_0".repo  = "pvim";
  inputs."pvim-0_9_0".type  = "github";
  inputs."pvim-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pvim-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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