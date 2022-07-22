{
  description = ''Distributions is a Nim library for distributions and their functions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."distributions-master".dir   = "master";
  inputs."distributions-master".owner = "nim-nix-pkgs";
  inputs."distributions-master".ref   = "master";
  inputs."distributions-master".repo  = "distributions";
  inputs."distributions-master".type  = "github";
  inputs."distributions-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distributions-v0_1_0".dir   = "v0_1_0";
  inputs."distributions-v0_1_0".owner = "nim-nix-pkgs";
  inputs."distributions-v0_1_0".ref   = "master";
  inputs."distributions-v0_1_0".repo  = "distributions";
  inputs."distributions-v0_1_0".type  = "github";
  inputs."distributions-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distributions-v0_1_1".dir   = "v0_1_1";
  inputs."distributions-v0_1_1".owner = "nim-nix-pkgs";
  inputs."distributions-v0_1_1".ref   = "master";
  inputs."distributions-v0_1_1".repo  = "distributions";
  inputs."distributions-v0_1_1".type  = "github";
  inputs."distributions-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distributions-v0_2_0".dir   = "v0_2_0";
  inputs."distributions-v0_2_0".owner = "nim-nix-pkgs";
  inputs."distributions-v0_2_0".ref   = "master";
  inputs."distributions-v0_2_0".repo  = "distributions";
  inputs."distributions-v0_2_0".type  = "github";
  inputs."distributions-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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