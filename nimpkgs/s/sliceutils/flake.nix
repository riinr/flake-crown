{
  description = ''Utilities for and extensions to Slice/HSlice'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sliceutils-master".dir   = "master";
  inputs."sliceutils-master".owner = "nim-nix-pkgs";
  inputs."sliceutils-master".ref   = "master";
  inputs."sliceutils-master".repo  = "sliceutils";
  inputs."sliceutils-master".type  = "github";
  inputs."sliceutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-0_1_0".dir   = "0_1_0";
  inputs."sliceutils-0_1_0".owner = "nim-nix-pkgs";
  inputs."sliceutils-0_1_0".ref   = "master";
  inputs."sliceutils-0_1_0".repo  = "sliceutils";
  inputs."sliceutils-0_1_0".type  = "github";
  inputs."sliceutils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_0".dir   = "v0_1_0";
  inputs."sliceutils-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sliceutils-v0_1_0".ref   = "master";
  inputs."sliceutils-v0_1_0".repo  = "sliceutils";
  inputs."sliceutils-v0_1_0".type  = "github";
  inputs."sliceutils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_1".dir   = "v0_1_1";
  inputs."sliceutils-v0_1_1".owner = "nim-nix-pkgs";
  inputs."sliceutils-v0_1_1".ref   = "master";
  inputs."sliceutils-v0_1_1".repo  = "sliceutils";
  inputs."sliceutils-v0_1_1".type  = "github";
  inputs."sliceutils-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_12".dir   = "v0_1_12";
  inputs."sliceutils-v0_1_12".owner = "nim-nix-pkgs";
  inputs."sliceutils-v0_1_12".ref   = "master";
  inputs."sliceutils-v0_1_12".repo  = "sliceutils";
  inputs."sliceutils-v0_1_12".type  = "github";
  inputs."sliceutils-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_1_2".dir   = "v0_1_2";
  inputs."sliceutils-v0_1_2".owner = "nim-nix-pkgs";
  inputs."sliceutils-v0_1_2".ref   = "master";
  inputs."sliceutils-v0_1_2".repo  = "sliceutils";
  inputs."sliceutils-v0_1_2".type  = "github";
  inputs."sliceutils-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_2_0".dir   = "v0_2_0";
  inputs."sliceutils-v0_2_0".owner = "nim-nix-pkgs";
  inputs."sliceutils-v0_2_0".ref   = "master";
  inputs."sliceutils-v0_2_0".repo  = "sliceutils";
  inputs."sliceutils-v0_2_0".type  = "github";
  inputs."sliceutils-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sliceutils-v0_2_1".dir   = "v0_2_1";
  inputs."sliceutils-v0_2_1".owner = "nim-nix-pkgs";
  inputs."sliceutils-v0_2_1".ref   = "master";
  inputs."sliceutils-v0_2_1".repo  = "sliceutils";
  inputs."sliceutils-v0_2_1".type  = "github";
  inputs."sliceutils-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sliceutils-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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