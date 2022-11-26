{
  description = ''WIP strongly-typed argument parser with sub command support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argparse-master".dir   = "master";
  inputs."argparse-master".owner = "nim-nix-pkgs";
  inputs."argparse-master".ref   = "master";
  inputs."argparse-master".repo  = "argparse";
  inputs."argparse-master".type  = "github";
  inputs."argparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_10_0".dir   = "v0_10_0";
  inputs."argparse-v0_10_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_10_0".ref   = "master";
  inputs."argparse-v0_10_0".repo  = "argparse";
  inputs."argparse-v0_10_0".type  = "github";
  inputs."argparse-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_10_1".dir   = "v0_10_1";
  inputs."argparse-v0_10_1".owner = "nim-nix-pkgs";
  inputs."argparse-v0_10_1".ref   = "master";
  inputs."argparse-v0_10_1".repo  = "argparse";
  inputs."argparse-v0_10_1".type  = "github";
  inputs."argparse-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_2_0".dir   = "v0_2_0";
  inputs."argparse-v0_2_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_2_0".ref   = "master";
  inputs."argparse-v0_2_0".repo  = "argparse";
  inputs."argparse-v0_2_0".type  = "github";
  inputs."argparse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_3_0".dir   = "v0_3_0";
  inputs."argparse-v0_3_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_3_0".ref   = "master";
  inputs."argparse-v0_3_0".repo  = "argparse";
  inputs."argparse-v0_3_0".type  = "github";
  inputs."argparse-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_3_1".dir   = "v0_3_1";
  inputs."argparse-v0_3_1".owner = "nim-nix-pkgs";
  inputs."argparse-v0_3_1".ref   = "master";
  inputs."argparse-v0_3_1".repo  = "argparse";
  inputs."argparse-v0_3_1".type  = "github";
  inputs."argparse-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_4_0".dir   = "v0_4_0";
  inputs."argparse-v0_4_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_4_0".ref   = "master";
  inputs."argparse-v0_4_0".repo  = "argparse";
  inputs."argparse-v0_4_0".type  = "github";
  inputs."argparse-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_5_0".dir   = "v0_5_0";
  inputs."argparse-v0_5_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_5_0".ref   = "master";
  inputs."argparse-v0_5_0".repo  = "argparse";
  inputs."argparse-v0_5_0".type  = "github";
  inputs."argparse-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_6_0".dir   = "v0_6_0";
  inputs."argparse-v0_6_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_6_0".ref   = "master";
  inputs."argparse-v0_6_0".repo  = "argparse";
  inputs."argparse-v0_6_0".type  = "github";
  inputs."argparse-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_7_0".dir   = "v0_7_0";
  inputs."argparse-v0_7_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_7_0".ref   = "master";
  inputs."argparse-v0_7_0".repo  = "argparse";
  inputs."argparse-v0_7_0".type  = "github";
  inputs."argparse-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_7_1".dir   = "v0_7_1";
  inputs."argparse-v0_7_1".owner = "nim-nix-pkgs";
  inputs."argparse-v0_7_1".ref   = "master";
  inputs."argparse-v0_7_1".repo  = "argparse";
  inputs."argparse-v0_7_1".type  = "github";
  inputs."argparse-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_7_2".dir   = "v0_7_2";
  inputs."argparse-v0_7_2".owner = "nim-nix-pkgs";
  inputs."argparse-v0_7_2".ref   = "master";
  inputs."argparse-v0_7_2".repo  = "argparse";
  inputs."argparse-v0_7_2".type  = "github";
  inputs."argparse-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_0".dir   = "v0_8_0";
  inputs."argparse-v0_8_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_8_0".ref   = "master";
  inputs."argparse-v0_8_0".repo  = "argparse";
  inputs."argparse-v0_8_0".type  = "github";
  inputs."argparse-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_1".dir   = "v0_8_1";
  inputs."argparse-v0_8_1".owner = "nim-nix-pkgs";
  inputs."argparse-v0_8_1".ref   = "master";
  inputs."argparse-v0_8_1".repo  = "argparse";
  inputs."argparse-v0_8_1".type  = "github";
  inputs."argparse-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_2".dir   = "v0_8_2";
  inputs."argparse-v0_8_2".owner = "nim-nix-pkgs";
  inputs."argparse-v0_8_2".ref   = "master";
  inputs."argparse-v0_8_2".repo  = "argparse";
  inputs."argparse-v0_8_2".type  = "github";
  inputs."argparse-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_3".dir   = "v0_8_3";
  inputs."argparse-v0_8_3".owner = "nim-nix-pkgs";
  inputs."argparse-v0_8_3".ref   = "master";
  inputs."argparse-v0_8_3".repo  = "argparse";
  inputs."argparse-v0_8_3".type  = "github";
  inputs."argparse-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_9_0".dir   = "v0_9_0";
  inputs."argparse-v0_9_0".owner = "nim-nix-pkgs";
  inputs."argparse-v0_9_0".ref   = "master";
  inputs."argparse-v0_9_0".repo  = "argparse";
  inputs."argparse-v0_9_0".type  = "github";
  inputs."argparse-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v1_0_0".dir   = "v1_0_0";
  inputs."argparse-v1_0_0".owner = "nim-nix-pkgs";
  inputs."argparse-v1_0_0".ref   = "master";
  inputs."argparse-v1_0_0".repo  = "argparse";
  inputs."argparse-v1_0_0".type  = "github";
  inputs."argparse-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v1_1_0".dir   = "v1_1_0";
  inputs."argparse-v1_1_0".owner = "nim-nix-pkgs";
  inputs."argparse-v1_1_0".ref   = "master";
  inputs."argparse-v1_1_0".repo  = "argparse";
  inputs."argparse-v1_1_0".type  = "github";
  inputs."argparse-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v2_0_0".dir   = "v2_0_0";
  inputs."argparse-v2_0_0".owner = "nim-nix-pkgs";
  inputs."argparse-v2_0_0".ref   = "master";
  inputs."argparse-v2_0_0".repo  = "argparse";
  inputs."argparse-v2_0_0".type  = "github";
  inputs."argparse-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v2_0_1".dir   = "v2_0_1";
  inputs."argparse-v2_0_1".owner = "nim-nix-pkgs";
  inputs."argparse-v2_0_1".ref   = "master";
  inputs."argparse-v2_0_1".repo  = "argparse";
  inputs."argparse-v2_0_1".type  = "github";
  inputs."argparse-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v2_1_0".dir   = "v2_1_0";
  inputs."argparse-v2_1_0".owner = "nim-nix-pkgs";
  inputs."argparse-v2_1_0".ref   = "master";
  inputs."argparse-v2_1_0".repo  = "argparse";
  inputs."argparse-v2_1_0".type  = "github";
  inputs."argparse-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v3_0_0".dir   = "v3_0_0";
  inputs."argparse-v3_0_0".owner = "nim-nix-pkgs";
  inputs."argparse-v3_0_0".ref   = "master";
  inputs."argparse-v3_0_0".repo  = "argparse";
  inputs."argparse-v3_0_0".type  = "github";
  inputs."argparse-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v3_0_1".dir   = "v3_0_1";
  inputs."argparse-v3_0_1".owner = "nim-nix-pkgs";
  inputs."argparse-v3_0_1".ref   = "master";
  inputs."argparse-v3_0_1".repo  = "argparse";
  inputs."argparse-v3_0_1".type  = "github";
  inputs."argparse-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v4_0_0".dir   = "v4_0_0";
  inputs."argparse-v4_0_0".owner = "nim-nix-pkgs";
  inputs."argparse-v4_0_0".ref   = "master";
  inputs."argparse-v4_0_0".repo  = "argparse";
  inputs."argparse-v4_0_0".type  = "github";
  inputs."argparse-v4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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