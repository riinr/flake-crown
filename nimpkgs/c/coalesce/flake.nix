{
  description = ''A nil coalescing operator ?? for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."coalesce-master".dir   = "master";
  inputs."coalesce-master".owner = "nim-nix-pkgs";
  inputs."coalesce-master".ref   = "master";
  inputs."coalesce-master".repo  = "coalesce";
  inputs."coalesce-master".type  = "github";
  inputs."coalesce-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_1_0".dir   = "v0_1_0";
  inputs."coalesce-v0_1_0".owner = "nim-nix-pkgs";
  inputs."coalesce-v0_1_0".ref   = "master";
  inputs."coalesce-v0_1_0".repo  = "coalesce";
  inputs."coalesce-v0_1_0".type  = "github";
  inputs."coalesce-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_2_0".dir   = "v0_2_0";
  inputs."coalesce-v0_2_0".owner = "nim-nix-pkgs";
  inputs."coalesce-v0_2_0".ref   = "master";
  inputs."coalesce-v0_2_0".repo  = "coalesce";
  inputs."coalesce-v0_2_0".type  = "github";
  inputs."coalesce-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_3_0".dir   = "v0_3_0";
  inputs."coalesce-v0_3_0".owner = "nim-nix-pkgs";
  inputs."coalesce-v0_3_0".ref   = "master";
  inputs."coalesce-v0_3_0".repo  = "coalesce";
  inputs."coalesce-v0_3_0".type  = "github";
  inputs."coalesce-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_3_1".dir   = "v0_3_1";
  inputs."coalesce-v0_3_1".owner = "nim-nix-pkgs";
  inputs."coalesce-v0_3_1".ref   = "master";
  inputs."coalesce-v0_3_1".repo  = "coalesce";
  inputs."coalesce-v0_3_1".type  = "github";
  inputs."coalesce-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_3_2".dir   = "v0_3_2";
  inputs."coalesce-v0_3_2".owner = "nim-nix-pkgs";
  inputs."coalesce-v0_3_2".ref   = "master";
  inputs."coalesce-v0_3_2".repo  = "coalesce";
  inputs."coalesce-v0_3_2".type  = "github";
  inputs."coalesce-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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