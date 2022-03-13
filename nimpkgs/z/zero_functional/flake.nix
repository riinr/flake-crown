{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zero_functional-master".dir   = "master";
  inputs."zero_functional-master".owner = "nim-nix-pkgs";
  inputs."zero_functional-master".ref   = "master";
  inputs."zero_functional-master".repo  = "zero_functional";
  inputs."zero_functional-master".type  = "github";
  inputs."zero_functional-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_1".dir   = "v0_0_1";
  inputs."zero_functional-v0_0_1".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_0_1".ref   = "master";
  inputs."zero_functional-v0_0_1".repo  = "zero_functional";
  inputs."zero_functional-v0_0_1".type  = "github";
  inputs."zero_functional-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_2".dir   = "v0_0_2";
  inputs."zero_functional-v0_0_2".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_0_2".ref   = "master";
  inputs."zero_functional-v0_0_2".repo  = "zero_functional";
  inputs."zero_functional-v0_0_2".type  = "github";
  inputs."zero_functional-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_3".dir   = "v0_0_3";
  inputs."zero_functional-v0_0_3".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_0_3".ref   = "master";
  inputs."zero_functional-v0_0_3".repo  = "zero_functional";
  inputs."zero_functional-v0_0_3".type  = "github";
  inputs."zero_functional-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_6".dir   = "v0_0_6";
  inputs."zero_functional-v0_0_6".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_0_6".ref   = "master";
  inputs."zero_functional-v0_0_6".repo  = "zero_functional";
  inputs."zero_functional-v0_0_6".type  = "github";
  inputs."zero_functional-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_0_7".dir   = "v0_0_7";
  inputs."zero_functional-v0_0_7".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_0_7".ref   = "master";
  inputs."zero_functional-v0_0_7".repo  = "zero_functional";
  inputs."zero_functional-v0_0_7".type  = "github";
  inputs."zero_functional-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_1_0".dir   = "v0_1_0";
  inputs."zero_functional-v0_1_0".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_1_0".ref   = "master";
  inputs."zero_functional-v0_1_0".repo  = "zero_functional";
  inputs."zero_functional-v0_1_0".type  = "github";
  inputs."zero_functional-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_1_1".dir   = "v0_1_1";
  inputs."zero_functional-v0_1_1".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_1_1".ref   = "master";
  inputs."zero_functional-v0_1_1".repo  = "zero_functional";
  inputs."zero_functional-v0_1_1".type  = "github";
  inputs."zero_functional-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_2_0".dir   = "v0_2_0";
  inputs."zero_functional-v0_2_0".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_2_0".ref   = "master";
  inputs."zero_functional-v0_2_0".repo  = "zero_functional";
  inputs."zero_functional-v0_2_0".type  = "github";
  inputs."zero_functional-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v0_3_0".dir   = "v0_3_0";
  inputs."zero_functional-v0_3_0".owner = "nim-nix-pkgs";
  inputs."zero_functional-v0_3_0".ref   = "master";
  inputs."zero_functional-v0_3_0".repo  = "zero_functional";
  inputs."zero_functional-v0_3_0".type  = "github";
  inputs."zero_functional-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_0_0".dir   = "v1_0_0";
  inputs."zero_functional-v1_0_0".owner = "nim-nix-pkgs";
  inputs."zero_functional-v1_0_0".ref   = "master";
  inputs."zero_functional-v1_0_0".repo  = "zero_functional";
  inputs."zero_functional-v1_0_0".type  = "github";
  inputs."zero_functional-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_0_1".dir   = "v1_0_1";
  inputs."zero_functional-v1_0_1".owner = "nim-nix-pkgs";
  inputs."zero_functional-v1_0_1".ref   = "master";
  inputs."zero_functional-v1_0_1".repo  = "zero_functional";
  inputs."zero_functional-v1_0_1".type  = "github";
  inputs."zero_functional-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_1_0".dir   = "v1_1_0";
  inputs."zero_functional-v1_1_0".owner = "nim-nix-pkgs";
  inputs."zero_functional-v1_1_0".ref   = "master";
  inputs."zero_functional-v1_1_0".repo  = "zero_functional";
  inputs."zero_functional-v1_1_0".type  = "github";
  inputs."zero_functional-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_1_1".dir   = "v1_1_1";
  inputs."zero_functional-v1_1_1".owner = "nim-nix-pkgs";
  inputs."zero_functional-v1_1_1".ref   = "master";
  inputs."zero_functional-v1_1_1".repo  = "zero_functional";
  inputs."zero_functional-v1_1_1".type  = "github";
  inputs."zero_functional-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_2_0".dir   = "v1_2_0";
  inputs."zero_functional-v1_2_0".owner = "nim-nix-pkgs";
  inputs."zero_functional-v1_2_0".ref   = "master";
  inputs."zero_functional-v1_2_0".repo  = "zero_functional";
  inputs."zero_functional-v1_2_0".type  = "github";
  inputs."zero_functional-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional-v1_2_1".dir   = "v1_2_1";
  inputs."zero_functional-v1_2_1".owner = "nim-nix-pkgs";
  inputs."zero_functional-v1_2_1".ref   = "master";
  inputs."zero_functional-v1_2_1".repo  = "zero_functional";
  inputs."zero_functional-v1_2_1".type  = "github";
  inputs."zero_functional-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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