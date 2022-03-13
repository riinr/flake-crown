{
  description = ''Root finding functions for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."roots-master".dir   = "master";
  inputs."roots-master".owner = "nim-nix-pkgs";
  inputs."roots-master".ref   = "master";
  inputs."roots-master".repo  = "roots";
  inputs."roots-master".type  = "github";
  inputs."roots-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_1".dir   = "v0_1";
  inputs."roots-v0_1".owner = "nim-nix-pkgs";
  inputs."roots-v0_1".ref   = "master";
  inputs."roots-v0_1".repo  = "roots";
  inputs."roots-v0_1".type  = "github";
  inputs."roots-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_1_1".dir   = "v0_1_1";
  inputs."roots-v0_1_1".owner = "nim-nix-pkgs";
  inputs."roots-v0_1_1".ref   = "master";
  inputs."roots-v0_1_1".repo  = "roots";
  inputs."roots-v0_1_1".type  = "github";
  inputs."roots-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_1_2".dir   = "v0_1_2";
  inputs."roots-v0_1_2".owner = "nim-nix-pkgs";
  inputs."roots-v0_1_2".ref   = "master";
  inputs."roots-v0_1_2".repo  = "roots";
  inputs."roots-v0_1_2".type  = "github";
  inputs."roots-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_2_0".dir   = "v0_2_0";
  inputs."roots-v0_2_0".owner = "nim-nix-pkgs";
  inputs."roots-v0_2_0".ref   = "master";
  inputs."roots-v0_2_0".repo  = "roots";
  inputs."roots-v0_2_0".type  = "github";
  inputs."roots-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_2_0_1".dir   = "v0_2_0_1";
  inputs."roots-v0_2_0_1".owner = "nim-nix-pkgs";
  inputs."roots-v0_2_0_1".ref   = "master";
  inputs."roots-v0_2_0_1".repo  = "roots";
  inputs."roots-v0_2_0_1".type  = "github";
  inputs."roots-v0_2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_2_1".dir   = "v0_2_1";
  inputs."roots-v0_2_1".owner = "nim-nix-pkgs";
  inputs."roots-v0_2_1".ref   = "master";
  inputs."roots-v0_2_1".repo  = "roots";
  inputs."roots-v0_2_1".type  = "github";
  inputs."roots-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_3_0".dir   = "v0_3_0";
  inputs."roots-v0_3_0".owner = "nim-nix-pkgs";
  inputs."roots-v0_3_0".ref   = "master";
  inputs."roots-v0_3_0".repo  = "roots";
  inputs."roots-v0_3_0".type  = "github";
  inputs."roots-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_3_1".dir   = "v0_3_1";
  inputs."roots-v0_3_1".owner = "nim-nix-pkgs";
  inputs."roots-v0_3_1".ref   = "master";
  inputs."roots-v0_3_1".repo  = "roots";
  inputs."roots-v0_3_1".type  = "github";
  inputs."roots-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_3_2".dir   = "v0_3_2";
  inputs."roots-v0_3_2".owner = "nim-nix-pkgs";
  inputs."roots-v0_3_2".ref   = "master";
  inputs."roots-v0_3_2".repo  = "roots";
  inputs."roots-v0_3_2".type  = "github";
  inputs."roots-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_4_0".dir   = "v0_4_0";
  inputs."roots-v0_4_0".owner = "nim-nix-pkgs";
  inputs."roots-v0_4_0".ref   = "master";
  inputs."roots-v0_4_0".repo  = "roots";
  inputs."roots-v0_4_0".type  = "github";
  inputs."roots-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_4_1".dir   = "v0_4_1";
  inputs."roots-v0_4_1".owner = "nim-nix-pkgs";
  inputs."roots-v0_4_1".ref   = "master";
  inputs."roots-v0_4_1".repo  = "roots";
  inputs."roots-v0_4_1".type  = "github";
  inputs."roots-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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