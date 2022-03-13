{
  description = ''A command-line YouTube player and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcoon-master".dir   = "master";
  inputs."nimcoon-master".owner = "nim-nix-pkgs";
  inputs."nimcoon-master".ref   = "master";
  inputs."nimcoon-master".repo  = "nimcoon";
  inputs."nimcoon-master".type  = "github";
  inputs."nimcoon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_1_0".dir   = "0_1_0";
  inputs."nimcoon-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_1_0".ref   = "master";
  inputs."nimcoon-0_1_0".repo  = "nimcoon";
  inputs."nimcoon-0_1_0".type  = "github";
  inputs."nimcoon-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_2_0".dir   = "0_2_0";
  inputs."nimcoon-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_2_0".ref   = "master";
  inputs."nimcoon-0_2_0".repo  = "nimcoon";
  inputs."nimcoon-0_2_0".type  = "github";
  inputs."nimcoon-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_2_1".dir   = "0_2_1";
  inputs."nimcoon-0_2_1".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_2_1".ref   = "master";
  inputs."nimcoon-0_2_1".repo  = "nimcoon";
  inputs."nimcoon-0_2_1".type  = "github";
  inputs."nimcoon-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_2_2".dir   = "0_2_2";
  inputs."nimcoon-0_2_2".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_2_2".ref   = "master";
  inputs."nimcoon-0_2_2".repo  = "nimcoon";
  inputs."nimcoon-0_2_2".type  = "github";
  inputs."nimcoon-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_3_0".dir   = "0_3_0";
  inputs."nimcoon-0_3_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_3_0".ref   = "master";
  inputs."nimcoon-0_3_0".repo  = "nimcoon";
  inputs."nimcoon-0_3_0".type  = "github";
  inputs."nimcoon-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_3_1".dir   = "0_3_1";
  inputs."nimcoon-0_3_1".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_3_1".ref   = "master";
  inputs."nimcoon-0_3_1".repo  = "nimcoon";
  inputs."nimcoon-0_3_1".type  = "github";
  inputs."nimcoon-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_3_2".dir   = "0_3_2";
  inputs."nimcoon-0_3_2".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_3_2".ref   = "master";
  inputs."nimcoon-0_3_2".repo  = "nimcoon";
  inputs."nimcoon-0_3_2".type  = "github";
  inputs."nimcoon-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_4_0".dir   = "0_4_0";
  inputs."nimcoon-0_4_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_4_0".ref   = "master";
  inputs."nimcoon-0_4_0".repo  = "nimcoon";
  inputs."nimcoon-0_4_0".type  = "github";
  inputs."nimcoon-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_5_0".dir   = "0_5_0";
  inputs."nimcoon-0_5_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_5_0".ref   = "master";
  inputs."nimcoon-0_5_0".repo  = "nimcoon";
  inputs."nimcoon-0_5_0".type  = "github";
  inputs."nimcoon-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_5_1".dir   = "0_5_1";
  inputs."nimcoon-0_5_1".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_5_1".ref   = "master";
  inputs."nimcoon-0_5_1".repo  = "nimcoon";
  inputs."nimcoon-0_5_1".type  = "github";
  inputs."nimcoon-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_6_0".dir   = "0_6_0";
  inputs."nimcoon-0_6_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_6_0".ref   = "master";
  inputs."nimcoon-0_6_0".repo  = "nimcoon";
  inputs."nimcoon-0_6_0".type  = "github";
  inputs."nimcoon-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_6_1".dir   = "0_6_1";
  inputs."nimcoon-0_6_1".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_6_1".ref   = "master";
  inputs."nimcoon-0_6_1".repo  = "nimcoon";
  inputs."nimcoon-0_6_1".type  = "github";
  inputs."nimcoon-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_7_0".dir   = "0_7_0";
  inputs."nimcoon-0_7_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_7_0".ref   = "master";
  inputs."nimcoon-0_7_0".repo  = "nimcoon";
  inputs."nimcoon-0_7_0".type  = "github";
  inputs."nimcoon-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_0".dir   = "0_8_0";
  inputs."nimcoon-0_8_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_8_0".ref   = "master";
  inputs."nimcoon-0_8_0".repo  = "nimcoon";
  inputs."nimcoon-0_8_0".type  = "github";
  inputs."nimcoon-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_1".dir   = "0_8_1";
  inputs."nimcoon-0_8_1".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_8_1".ref   = "master";
  inputs."nimcoon-0_8_1".repo  = "nimcoon";
  inputs."nimcoon-0_8_1".type  = "github";
  inputs."nimcoon-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_2".dir   = "0_8_2";
  inputs."nimcoon-0_8_2".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_8_2".ref   = "master";
  inputs."nimcoon-0_8_2".repo  = "nimcoon";
  inputs."nimcoon-0_8_2".type  = "github";
  inputs."nimcoon-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_3".dir   = "0_8_3";
  inputs."nimcoon-0_8_3".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_8_3".ref   = "master";
  inputs."nimcoon-0_8_3".repo  = "nimcoon";
  inputs."nimcoon-0_8_3".type  = "github";
  inputs."nimcoon-0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_9_0".dir   = "0_9_0";
  inputs."nimcoon-0_9_0".owner = "nim-nix-pkgs";
  inputs."nimcoon-0_9_0".ref   = "master";
  inputs."nimcoon-0_9_0".repo  = "nimcoon";
  inputs."nimcoon-0_9_0".type  = "github";
  inputs."nimcoon-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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