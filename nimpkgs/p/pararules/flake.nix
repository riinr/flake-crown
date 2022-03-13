{
  description = ''A rules engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pararules-master".dir   = "master";
  inputs."pararules-master".owner = "nim-nix-pkgs";
  inputs."pararules-master".ref   = "master";
  inputs."pararules-master".repo  = "pararules";
  inputs."pararules-master".type  = "github";
  inputs."pararules-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_1_0".dir   = "0_1_0";
  inputs."pararules-0_1_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_1_0".ref   = "master";
  inputs."pararules-0_1_0".repo  = "pararules";
  inputs."pararules-0_1_0".type  = "github";
  inputs."pararules-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_10_0".dir   = "0_10_0";
  inputs."pararules-0_10_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_10_0".ref   = "master";
  inputs."pararules-0_10_0".repo  = "pararules";
  inputs."pararules-0_10_0".type  = "github";
  inputs."pararules-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_11_0".dir   = "0_11_0";
  inputs."pararules-0_11_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_11_0".ref   = "master";
  inputs."pararules-0_11_0".repo  = "pararules";
  inputs."pararules-0_11_0".type  = "github";
  inputs."pararules-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_12_0".dir   = "0_12_0";
  inputs."pararules-0_12_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_12_0".ref   = "master";
  inputs."pararules-0_12_0".repo  = "pararules";
  inputs."pararules-0_12_0".type  = "github";
  inputs."pararules-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_13_0".dir   = "0_13_0";
  inputs."pararules-0_13_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_13_0".ref   = "master";
  inputs."pararules-0_13_0".repo  = "pararules";
  inputs."pararules-0_13_0".type  = "github";
  inputs."pararules-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_14_0".dir   = "0_14_0";
  inputs."pararules-0_14_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_14_0".ref   = "master";
  inputs."pararules-0_14_0".repo  = "pararules";
  inputs."pararules-0_14_0".type  = "github";
  inputs."pararules-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_15_0".dir   = "0_15_0";
  inputs."pararules-0_15_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_15_0".ref   = "master";
  inputs."pararules-0_15_0".repo  = "pararules";
  inputs."pararules-0_15_0".type  = "github";
  inputs."pararules-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_16_0".dir   = "0_16_0";
  inputs."pararules-0_16_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_16_0".ref   = "master";
  inputs."pararules-0_16_0".repo  = "pararules";
  inputs."pararules-0_16_0".type  = "github";
  inputs."pararules-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_17_0".dir   = "0_17_0";
  inputs."pararules-0_17_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_17_0".ref   = "master";
  inputs."pararules-0_17_0".repo  = "pararules";
  inputs."pararules-0_17_0".type  = "github";
  inputs."pararules-0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_18_0".dir   = "0_18_0";
  inputs."pararules-0_18_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_18_0".ref   = "master";
  inputs."pararules-0_18_0".repo  = "pararules";
  inputs."pararules-0_18_0".type  = "github";
  inputs."pararules-0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_19_0".dir   = "0_19_0";
  inputs."pararules-0_19_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_19_0".ref   = "master";
  inputs."pararules-0_19_0".repo  = "pararules";
  inputs."pararules-0_19_0".type  = "github";
  inputs."pararules-0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_2_0".dir   = "0_2_0";
  inputs."pararules-0_2_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_2_0".ref   = "master";
  inputs."pararules-0_2_0".repo  = "pararules";
  inputs."pararules-0_2_0".type  = "github";
  inputs."pararules-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_20_0".dir   = "0_20_0";
  inputs."pararules-0_20_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_20_0".ref   = "master";
  inputs."pararules-0_20_0".repo  = "pararules";
  inputs."pararules-0_20_0".type  = "github";
  inputs."pararules-0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_21_0".dir   = "0_21_0";
  inputs."pararules-0_21_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_21_0".ref   = "master";
  inputs."pararules-0_21_0".repo  = "pararules";
  inputs."pararules-0_21_0".type  = "github";
  inputs."pararules-0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_23_0".dir   = "0_23_0";
  inputs."pararules-0_23_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_23_0".ref   = "master";
  inputs."pararules-0_23_0".repo  = "pararules";
  inputs."pararules-0_23_0".type  = "github";
  inputs."pararules-0_23_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_23_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_3_0".dir   = "0_3_0";
  inputs."pararules-0_3_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_3_0".ref   = "master";
  inputs."pararules-0_3_0".repo  = "pararules";
  inputs."pararules-0_3_0".type  = "github";
  inputs."pararules-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_4_0".dir   = "0_4_0";
  inputs."pararules-0_4_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_4_0".ref   = "master";
  inputs."pararules-0_4_0".repo  = "pararules";
  inputs."pararules-0_4_0".type  = "github";
  inputs."pararules-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_5_0".dir   = "0_5_0";
  inputs."pararules-0_5_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_5_0".ref   = "master";
  inputs."pararules-0_5_0".repo  = "pararules";
  inputs."pararules-0_5_0".type  = "github";
  inputs."pararules-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_6_0".dir   = "0_6_0";
  inputs."pararules-0_6_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_6_0".ref   = "master";
  inputs."pararules-0_6_0".repo  = "pararules";
  inputs."pararules-0_6_0".type  = "github";
  inputs."pararules-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_7_0".dir   = "0_7_0";
  inputs."pararules-0_7_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_7_0".ref   = "master";
  inputs."pararules-0_7_0".repo  = "pararules";
  inputs."pararules-0_7_0".type  = "github";
  inputs."pararules-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_8_0".dir   = "0_8_0";
  inputs."pararules-0_8_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_8_0".ref   = "master";
  inputs."pararules-0_8_0".repo  = "pararules";
  inputs."pararules-0_8_0".type  = "github";
  inputs."pararules-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_9_0".dir   = "0_9_0";
  inputs."pararules-0_9_0".owner = "nim-nix-pkgs";
  inputs."pararules-0_9_0".ref   = "master";
  inputs."pararules-0_9_0".repo  = "pararules";
  inputs."pararules-0_9_0".type  = "github";
  inputs."pararules-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-1_0_0".dir   = "1_0_0";
  inputs."pararules-1_0_0".owner = "nim-nix-pkgs";
  inputs."pararules-1_0_0".ref   = "master";
  inputs."pararules-1_0_0".repo  = "pararules";
  inputs."pararules-1_0_0".type  = "github";
  inputs."pararules-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-1_0_1".dir   = "1_0_1";
  inputs."pararules-1_0_1".owner = "nim-nix-pkgs";
  inputs."pararules-1_0_1".ref   = "master";
  inputs."pararules-1_0_1".repo  = "pararules";
  inputs."pararules-1_0_1".type  = "github";
  inputs."pararules-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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