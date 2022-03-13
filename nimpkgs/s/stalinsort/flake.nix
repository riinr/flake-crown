{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stalinsort-master".dir   = "master";
  inputs."stalinsort-master".owner = "nim-nix-pkgs";
  inputs."stalinsort-master".ref   = "master";
  inputs."stalinsort-master".repo  = "stalinsort";
  inputs."stalinsort-master".type  = "github";
  inputs."stalinsort-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_2_1".dir   = "v0_2_1";
  inputs."stalinsort-v0_2_1".owner = "nim-nix-pkgs";
  inputs."stalinsort-v0_2_1".ref   = "master";
  inputs."stalinsort-v0_2_1".repo  = "stalinsort";
  inputs."stalinsort-v0_2_1".type  = "github";
  inputs."stalinsort-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_2_2".dir   = "v0_2_2";
  inputs."stalinsort-v0_2_2".owner = "nim-nix-pkgs";
  inputs."stalinsort-v0_2_2".ref   = "master";
  inputs."stalinsort-v0_2_2".repo  = "stalinsort";
  inputs."stalinsort-v0_2_2".type  = "github";
  inputs."stalinsort-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_3_0".dir   = "v0_3_0";
  inputs."stalinsort-v0_3_0".owner = "nim-nix-pkgs";
  inputs."stalinsort-v0_3_0".ref   = "master";
  inputs."stalinsort-v0_3_0".repo  = "stalinsort";
  inputs."stalinsort-v0_3_0".type  = "github";
  inputs."stalinsort-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_3_1".dir   = "v0_3_1";
  inputs."stalinsort-v0_3_1".owner = "nim-nix-pkgs";
  inputs."stalinsort-v0_3_1".ref   = "master";
  inputs."stalinsort-v0_3_1".repo  = "stalinsort";
  inputs."stalinsort-v0_3_1".type  = "github";
  inputs."stalinsort-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_3_2".dir   = "v0_3_2";
  inputs."stalinsort-v0_3_2".owner = "nim-nix-pkgs";
  inputs."stalinsort-v0_3_2".ref   = "master";
  inputs."stalinsort-v0_3_2".repo  = "stalinsort";
  inputs."stalinsort-v0_3_2".type  = "github";
  inputs."stalinsort-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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