{
  description = ''A collection of geometry utilities for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geometryutils-master".dir   = "master";
  inputs."geometryutils-master".owner = "nim-nix-pkgs";
  inputs."geometryutils-master".ref   = "master";
  inputs."geometryutils-master".repo  = "geometryutils";
  inputs."geometryutils-master".type  = "github";
  inputs."geometryutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geometryutils-v1_1_0".dir   = "v1_1_0";
  inputs."geometryutils-v1_1_0".owner = "nim-nix-pkgs";
  inputs."geometryutils-v1_1_0".ref   = "master";
  inputs."geometryutils-v1_1_0".repo  = "geometryutils";
  inputs."geometryutils-v1_1_0".type  = "github";
  inputs."geometryutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geometryutils-v1_2_0".dir   = "v1_2_0";
  inputs."geometryutils-v1_2_0".owner = "nim-nix-pkgs";
  inputs."geometryutils-v1_2_0".ref   = "master";
  inputs."geometryutils-v1_2_0".repo  = "geometryutils";
  inputs."geometryutils-v1_2_0".type  = "github";
  inputs."geometryutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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