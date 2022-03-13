{
  description = ''Various collections and utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."collections-master".dir   = "master";
  inputs."collections-master".owner = "nim-nix-pkgs";
  inputs."collections-master".ref   = "master";
  inputs."collections-master".repo  = "collections";
  inputs."collections-master".type  = "github";
  inputs."collections-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_0_2".dir   = "v0_0_2";
  inputs."collections-v0_0_2".owner = "nim-nix-pkgs";
  inputs."collections-v0_0_2".ref   = "master";
  inputs."collections-v0_0_2".repo  = "collections";
  inputs."collections-v0_0_2".type  = "github";
  inputs."collections-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_1_2".dir   = "v0_1_2";
  inputs."collections-v0_1_2".owner = "nim-nix-pkgs";
  inputs."collections-v0_1_2".ref   = "master";
  inputs."collections-v0_1_2".repo  = "collections";
  inputs."collections-v0_1_2".type  = "github";
  inputs."collections-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_0".dir   = "v0_3_0";
  inputs."collections-v0_3_0".owner = "nim-nix-pkgs";
  inputs."collections-v0_3_0".ref   = "master";
  inputs."collections-v0_3_0".repo  = "collections";
  inputs."collections-v0_3_0".type  = "github";
  inputs."collections-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_1".dir   = "v0_3_1";
  inputs."collections-v0_3_1".owner = "nim-nix-pkgs";
  inputs."collections-v0_3_1".ref   = "master";
  inputs."collections-v0_3_1".repo  = "collections";
  inputs."collections-v0_3_1".type  = "github";
  inputs."collections-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_2".dir   = "v0_3_2";
  inputs."collections-v0_3_2".owner = "nim-nix-pkgs";
  inputs."collections-v0_3_2".ref   = "master";
  inputs."collections-v0_3_2".repo  = "collections";
  inputs."collections-v0_3_2".type  = "github";
  inputs."collections-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_3".dir   = "v0_3_3";
  inputs."collections-v0_3_3".owner = "nim-nix-pkgs";
  inputs."collections-v0_3_3".ref   = "master";
  inputs."collections-v0_3_3".repo  = "collections";
  inputs."collections-v0_3_3".type  = "github";
  inputs."collections-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_3_4".dir   = "v0_3_4";
  inputs."collections-v0_3_4".owner = "nim-nix-pkgs";
  inputs."collections-v0_3_4".ref   = "master";
  inputs."collections-v0_3_4".repo  = "collections";
  inputs."collections-v0_3_4".type  = "github";
  inputs."collections-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_5_0".dir   = "v0_5_0";
  inputs."collections-v0_5_0".owner = "nim-nix-pkgs";
  inputs."collections-v0_5_0".ref   = "master";
  inputs."collections-v0_5_0".repo  = "collections";
  inputs."collections-v0_5_0".type  = "github";
  inputs."collections-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_5_1".dir   = "v0_5_1";
  inputs."collections-v0_5_1".owner = "nim-nix-pkgs";
  inputs."collections-v0_5_1".ref   = "master";
  inputs."collections-v0_5_1".repo  = "collections";
  inputs."collections-v0_5_1".type  = "github";
  inputs."collections-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."collections-v0_5_2".dir   = "v0_5_2";
  inputs."collections-v0_5_2".owner = "nim-nix-pkgs";
  inputs."collections-v0_5_2".ref   = "master";
  inputs."collections-v0_5_2".repo  = "collections";
  inputs."collections-v0_5_2".type  = "github";
  inputs."collections-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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