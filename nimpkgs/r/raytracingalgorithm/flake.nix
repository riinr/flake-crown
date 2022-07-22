{
  description = ''RayTracing Algorith in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."raytracingalgorithm-master".dir   = "master";
  inputs."raytracingalgorithm-master".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-master".ref   = "master";
  inputs."raytracingalgorithm-master".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-master".type  = "github";
  inputs."raytracingalgorithm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."raytracingalgorithm-v0_1_0".dir   = "v0_1_0";
  inputs."raytracingalgorithm-v0_1_0".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-v0_1_0".ref   = "master";
  inputs."raytracingalgorithm-v0_1_0".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-v0_1_0".type  = "github";
  inputs."raytracingalgorithm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."raytracingalgorithm-v0_1_1".dir   = "v0_1_1";
  inputs."raytracingalgorithm-v0_1_1".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-v0_1_1".ref   = "master";
  inputs."raytracingalgorithm-v0_1_1".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-v0_1_1".type  = "github";
  inputs."raytracingalgorithm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."raytracingalgorithm-v1_0_0".dir   = "v1_0_0";
  inputs."raytracingalgorithm-v1_0_0".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-v1_0_0".ref   = "master";
  inputs."raytracingalgorithm-v1_0_0".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-v1_0_0".type  = "github";
  inputs."raytracingalgorithm-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."raytracingalgorithm-v2_0_0".dir   = "v2_0_0";
  inputs."raytracingalgorithm-v2_0_0".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-v2_0_0".ref   = "master";
  inputs."raytracingalgorithm-v2_0_0".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-v2_0_0".type  = "github";
  inputs."raytracingalgorithm-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."raytracingalgorithm-v2_1_0".dir   = "v2_1_0";
  inputs."raytracingalgorithm-v2_1_0".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-v2_1_0".ref   = "master";
  inputs."raytracingalgorithm-v2_1_0".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-v2_1_0".type  = "github";
  inputs."raytracingalgorithm-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."raytracingalgorithm-v2_1_1".dir   = "v2_1_1";
  inputs."raytracingalgorithm-v2_1_1".owner = "nim-nix-pkgs";
  inputs."raytracingalgorithm-v2_1_1".ref   = "master";
  inputs."raytracingalgorithm-v2_1_1".repo  = "raytracingalgorithm";
  inputs."raytracingalgorithm-v2_1_1".type  = "github";
  inputs."raytracingalgorithm-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."raytracingalgorithm-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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