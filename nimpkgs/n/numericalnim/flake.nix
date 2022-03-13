{
  description = ''A collection of numerical methods written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."numericalnim-master".dir   = "master";
  inputs."numericalnim-master".owner = "nim-nix-pkgs";
  inputs."numericalnim-master".ref   = "master";
  inputs."numericalnim-master".repo  = "numericalnim";
  inputs."numericalnim-master".type  = "github";
  inputs."numericalnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_1".dir   = "v0_1";
  inputs."numericalnim-v0_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_1".ref   = "master";
  inputs."numericalnim-v0_1".repo  = "numericalnim";
  inputs."numericalnim-v0_1".type  = "github";
  inputs."numericalnim-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_2".dir   = "v0_2";
  inputs."numericalnim-v0_2".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_2".ref   = "master";
  inputs."numericalnim-v0_2".repo  = "numericalnim";
  inputs."numericalnim-v0_2".type  = "github";
  inputs."numericalnim-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_2_1".dir   = "v0_2_1";
  inputs."numericalnim-v0_2_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_2_1".ref   = "master";
  inputs."numericalnim-v0_2_1".repo  = "numericalnim";
  inputs."numericalnim-v0_2_1".type  = "github";
  inputs."numericalnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_3_0".dir   = "v0_3_0";
  inputs."numericalnim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_3_0".ref   = "master";
  inputs."numericalnim-v0_3_0".repo  = "numericalnim";
  inputs."numericalnim-v0_3_0".type  = "github";
  inputs."numericalnim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_4_0".dir   = "v0_4_0";
  inputs."numericalnim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_4_0".ref   = "master";
  inputs."numericalnim-v0_4_0".repo  = "numericalnim";
  inputs."numericalnim-v0_4_0".type  = "github";
  inputs."numericalnim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_5_0".dir   = "v0_5_0";
  inputs."numericalnim-v0_5_0".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_5_0".ref   = "master";
  inputs."numericalnim-v0_5_0".repo  = "numericalnim";
  inputs."numericalnim-v0_5_0".type  = "github";
  inputs."numericalnim-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_5_0_1".dir   = "v0_5_0_1";
  inputs."numericalnim-v0_5_0_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_5_0_1".ref   = "master";
  inputs."numericalnim-v0_5_0_1".repo  = "numericalnim";
  inputs."numericalnim-v0_5_0_1".type  = "github";
  inputs."numericalnim-v0_5_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_5_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_5_1".dir   = "v0_5_1";
  inputs."numericalnim-v0_5_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_5_1".ref   = "master";
  inputs."numericalnim-v0_5_1".repo  = "numericalnim";
  inputs."numericalnim-v0_5_1".type  = "github";
  inputs."numericalnim-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_5_2".dir   = "v0_5_2";
  inputs."numericalnim-v0_5_2".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_5_2".ref   = "master";
  inputs."numericalnim-v0_5_2".repo  = "numericalnim";
  inputs."numericalnim-v0_5_2".type  = "github";
  inputs."numericalnim-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_6_0".dir   = "v0_6_0";
  inputs."numericalnim-v0_6_0".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_6_0".ref   = "master";
  inputs."numericalnim-v0_6_0".repo  = "numericalnim";
  inputs."numericalnim-v0_6_0".type  = "github";
  inputs."numericalnim-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_6_0_1".dir   = "v0_6_0_1";
  inputs."numericalnim-v0_6_0_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_6_0_1".ref   = "master";
  inputs."numericalnim-v0_6_0_1".repo  = "numericalnim";
  inputs."numericalnim-v0_6_0_1".type  = "github";
  inputs."numericalnim-v0_6_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_6_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_6_1".dir   = "v0_6_1";
  inputs."numericalnim-v0_6_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_6_1".ref   = "master";
  inputs."numericalnim-v0_6_1".repo  = "numericalnim";
  inputs."numericalnim-v0_6_1".type  = "github";
  inputs."numericalnim-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_6_2".dir   = "v0_6_2";
  inputs."numericalnim-v0_6_2".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_6_2".ref   = "master";
  inputs."numericalnim-v0_6_2".repo  = "numericalnim";
  inputs."numericalnim-v0_6_2".type  = "github";
  inputs."numericalnim-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_6_3".dir   = "v0_6_3";
  inputs."numericalnim-v0_6_3".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_6_3".ref   = "master";
  inputs."numericalnim-v0_6_3".repo  = "numericalnim";
  inputs."numericalnim-v0_6_3".type  = "github";
  inputs."numericalnim-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_7_0".dir   = "v0_7_0";
  inputs."numericalnim-v0_7_0".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_7_0".ref   = "master";
  inputs."numericalnim-v0_7_0".repo  = "numericalnim";
  inputs."numericalnim-v0_7_0".type  = "github";
  inputs."numericalnim-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim-v0_7_1".dir   = "v0_7_1";
  inputs."numericalnim-v0_7_1".owner = "nim-nix-pkgs";
  inputs."numericalnim-v0_7_1".ref   = "master";
  inputs."numericalnim-v0_7_1".repo  = "numericalnim";
  inputs."numericalnim-v0_7_1".type  = "github";
  inputs."numericalnim-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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