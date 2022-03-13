{
  description = ''Lock-free queue implementations for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lockfreequeues-v0_1_0".dir   = "v0_1_0";
  inputs."lockfreequeues-v0_1_0".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v0_1_0".ref   = "master";
  inputs."lockfreequeues-v0_1_0".repo  = "lockfreequeues";
  inputs."lockfreequeues-v0_1_0".type  = "github";
  inputs."lockfreequeues-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v1_0_0".dir   = "v1_0_0";
  inputs."lockfreequeues-v1_0_0".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v1_0_0".ref   = "master";
  inputs."lockfreequeues-v1_0_0".repo  = "lockfreequeues";
  inputs."lockfreequeues-v1_0_0".type  = "github";
  inputs."lockfreequeues-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_0".dir   = "v2_0_0";
  inputs."lockfreequeues-v2_0_0".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_0".ref   = "master";
  inputs."lockfreequeues-v2_0_0".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_0".type  = "github";
  inputs."lockfreequeues-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_1".dir   = "v2_0_1";
  inputs."lockfreequeues-v2_0_1".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_1".ref   = "master";
  inputs."lockfreequeues-v2_0_1".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_1".type  = "github";
  inputs."lockfreequeues-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_2".dir   = "v2_0_2";
  inputs."lockfreequeues-v2_0_2".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_2".ref   = "master";
  inputs."lockfreequeues-v2_0_2".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_2".type  = "github";
  inputs."lockfreequeues-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_3".dir   = "v2_0_3";
  inputs."lockfreequeues-v2_0_3".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_3".ref   = "master";
  inputs."lockfreequeues-v2_0_3".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_3".type  = "github";
  inputs."lockfreequeues-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_4".dir   = "v2_0_4";
  inputs."lockfreequeues-v2_0_4".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_4".ref   = "master";
  inputs."lockfreequeues-v2_0_4".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_4".type  = "github";
  inputs."lockfreequeues-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_5".dir   = "v2_0_5";
  inputs."lockfreequeues-v2_0_5".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_5".ref   = "master";
  inputs."lockfreequeues-v2_0_5".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_5".type  = "github";
  inputs."lockfreequeues-v2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_6".dir   = "v2_0_6";
  inputs."lockfreequeues-v2_0_6".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_0_6".ref   = "master";
  inputs."lockfreequeues-v2_0_6".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_0_6".type  = "github";
  inputs."lockfreequeues-v2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_1_0".dir   = "v2_1_0";
  inputs."lockfreequeues-v2_1_0".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v2_1_0".ref   = "master";
  inputs."lockfreequeues-v2_1_0".repo  = "lockfreequeues";
  inputs."lockfreequeues-v2_1_0".type  = "github";
  inputs."lockfreequeues-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v3_0_0".dir   = "v3_0_0";
  inputs."lockfreequeues-v3_0_0".owner = "nim-nix-pkgs";
  inputs."lockfreequeues-v3_0_0".ref   = "master";
  inputs."lockfreequeues-v3_0_0".repo  = "lockfreequeues";
  inputs."lockfreequeues-v3_0_0".type  = "github";
  inputs."lockfreequeues-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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