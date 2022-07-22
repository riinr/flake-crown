{
  description = ''A crafty implementation of structured logging for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chronicles-master".dir   = "master";
  inputs."chronicles-master".owner = "nim-nix-pkgs";
  inputs."chronicles-master".ref   = "master";
  inputs."chronicles-master".repo  = "chronicles";
  inputs."chronicles-master".type  = "github";
  inputs."chronicles-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_0".dir   = "v0_10_0";
  inputs."chronicles-v0_10_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_10_0".ref   = "master";
  inputs."chronicles-v0_10_0".repo  = "chronicles";
  inputs."chronicles-v0_10_0".type  = "github";
  inputs."chronicles-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_1".dir   = "v0_10_1";
  inputs."chronicles-v0_10_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_10_1".ref   = "master";
  inputs."chronicles-v0_10_1".repo  = "chronicles";
  inputs."chronicles-v0_10_1".type  = "github";
  inputs."chronicles-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_2".dir   = "v0_10_2";
  inputs."chronicles-v0_10_2".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_10_2".ref   = "master";
  inputs."chronicles-v0_10_2".repo  = "chronicles";
  inputs."chronicles-v0_10_2".type  = "github";
  inputs."chronicles-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_3".dir   = "v0_10_3";
  inputs."chronicles-v0_10_3".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_10_3".ref   = "master";
  inputs."chronicles-v0_10_3".repo  = "chronicles";
  inputs."chronicles-v0_10_3".type  = "github";
  inputs."chronicles-v0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_2_0".dir   = "v0_2_0";
  inputs."chronicles-v0_2_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_2_0".ref   = "master";
  inputs."chronicles-v0_2_0".repo  = "chronicles";
  inputs."chronicles-v0_2_0".type  = "github";
  inputs."chronicles-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_2_1".dir   = "v0_2_1";
  inputs."chronicles-v0_2_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_2_1".ref   = "master";
  inputs."chronicles-v0_2_1".repo  = "chronicles";
  inputs."chronicles-v0_2_1".type  = "github";
  inputs."chronicles-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_3_0".dir   = "v0_3_0";
  inputs."chronicles-v0_3_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_3_0".ref   = "master";
  inputs."chronicles-v0_3_0".repo  = "chronicles";
  inputs."chronicles-v0_3_0".type  = "github";
  inputs."chronicles-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_3_1".dir   = "v0_3_1";
  inputs."chronicles-v0_3_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_3_1".ref   = "master";
  inputs."chronicles-v0_3_1".repo  = "chronicles";
  inputs."chronicles-v0_3_1".type  = "github";
  inputs."chronicles-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_4_0".dir   = "v0_4_0";
  inputs."chronicles-v0_4_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_4_0".ref   = "master";
  inputs."chronicles-v0_4_0".repo  = "chronicles";
  inputs."chronicles-v0_4_0".type  = "github";
  inputs."chronicles-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_4_1".dir   = "v0_4_1";
  inputs."chronicles-v0_4_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_4_1".ref   = "master";
  inputs."chronicles-v0_4_1".repo  = "chronicles";
  inputs."chronicles-v0_4_1".type  = "github";
  inputs."chronicles-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_4_2".dir   = "v0_4_2";
  inputs."chronicles-v0_4_2".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_4_2".ref   = "master";
  inputs."chronicles-v0_4_2".repo  = "chronicles";
  inputs."chronicles-v0_4_2".type  = "github";
  inputs."chronicles-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_0".dir   = "v0_5_0";
  inputs."chronicles-v0_5_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_5_0".ref   = "master";
  inputs."chronicles-v0_5_0".repo  = "chronicles";
  inputs."chronicles-v0_5_0".type  = "github";
  inputs."chronicles-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_1".dir   = "v0_5_1";
  inputs."chronicles-v0_5_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_5_1".ref   = "master";
  inputs."chronicles-v0_5_1".repo  = "chronicles";
  inputs."chronicles-v0_5_1".type  = "github";
  inputs."chronicles-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_2".dir   = "v0_5_2";
  inputs."chronicles-v0_5_2".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_5_2".ref   = "master";
  inputs."chronicles-v0_5_2".repo  = "chronicles";
  inputs."chronicles-v0_5_2".type  = "github";
  inputs."chronicles-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_3".dir   = "v0_5_3";
  inputs."chronicles-v0_5_3".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_5_3".ref   = "master";
  inputs."chronicles-v0_5_3".repo  = "chronicles";
  inputs."chronicles-v0_5_3".type  = "github";
  inputs."chronicles-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_6_0".dir   = "v0_6_0";
  inputs."chronicles-v0_6_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_6_0".ref   = "master";
  inputs."chronicles-v0_6_0".repo  = "chronicles";
  inputs."chronicles-v0_6_0".type  = "github";
  inputs."chronicles-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_7_0".dir   = "v0_7_0";
  inputs."chronicles-v0_7_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_7_0".ref   = "master";
  inputs."chronicles-v0_7_0".repo  = "chronicles";
  inputs."chronicles-v0_7_0".type  = "github";
  inputs."chronicles-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_7_1".dir   = "v0_7_1";
  inputs."chronicles-v0_7_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_7_1".ref   = "master";
  inputs."chronicles-v0_7_1".repo  = "chronicles";
  inputs."chronicles-v0_7_1".type  = "github";
  inputs."chronicles-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_7_2".dir   = "v0_7_2";
  inputs."chronicles-v0_7_2".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_7_2".ref   = "master";
  inputs."chronicles-v0_7_2".repo  = "chronicles";
  inputs."chronicles-v0_7_2".type  = "github";
  inputs."chronicles-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_8_0".dir   = "v0_8_0";
  inputs."chronicles-v0_8_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_8_0".ref   = "master";
  inputs."chronicles-v0_8_0".repo  = "chronicles";
  inputs."chronicles-v0_8_0".type  = "github";
  inputs."chronicles-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_8_1".dir   = "v0_8_1";
  inputs."chronicles-v0_8_1".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_8_1".ref   = "master";
  inputs."chronicles-v0_8_1".repo  = "chronicles";
  inputs."chronicles-v0_8_1".type  = "github";
  inputs."chronicles-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_9_0".dir   = "v0_9_0";
  inputs."chronicles-v0_9_0".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_9_0".ref   = "master";
  inputs."chronicles-v0_9_0".repo  = "chronicles";
  inputs."chronicles-v0_9_0".type  = "github";
  inputs."chronicles-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_9_2".dir   = "v0_9_2";
  inputs."chronicles-v0_9_2".owner = "nim-nix-pkgs";
  inputs."chronicles-v0_9_2".ref   = "master";
  inputs."chronicles-v0_9_2".repo  = "chronicles";
  inputs."chronicles-v0_9_2".type  = "github";
  inputs."chronicles-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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