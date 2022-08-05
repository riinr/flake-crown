{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."noisy-master".dir   = "master";
  inputs."noisy-master".owner = "nim-nix-pkgs";
  inputs."noisy-master".ref   = "master";
  inputs."noisy-master".repo  = "noisy";
  inputs."noisy-master".type  = "github";
  inputs."noisy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_1_0".dir   = "0_1_0";
  inputs."noisy-0_1_0".owner = "nim-nix-pkgs";
  inputs."noisy-0_1_0".ref   = "master";
  inputs."noisy-0_1_0".repo  = "noisy";
  inputs."noisy-0_1_0".type  = "github";
  inputs."noisy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_2_0".dir   = "0_2_0";
  inputs."noisy-0_2_0".owner = "nim-nix-pkgs";
  inputs."noisy-0_2_0".ref   = "master";
  inputs."noisy-0_2_0".repo  = "noisy";
  inputs."noisy-0_2_0".type  = "github";
  inputs."noisy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_2_1".dir   = "0_2_1";
  inputs."noisy-0_2_1".owner = "nim-nix-pkgs";
  inputs."noisy-0_2_1".ref   = "master";
  inputs."noisy-0_2_1".repo  = "noisy";
  inputs."noisy-0_2_1".type  = "github";
  inputs."noisy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_3_0".dir   = "0_3_0";
  inputs."noisy-0_3_0".owner = "nim-nix-pkgs";
  inputs."noisy-0_3_0".ref   = "master";
  inputs."noisy-0_3_0".repo  = "noisy";
  inputs."noisy-0_3_0".type  = "github";
  inputs."noisy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_2".dir   = "0_4_2";
  inputs."noisy-0_4_2".owner = "nim-nix-pkgs";
  inputs."noisy-0_4_2".ref   = "master";
  inputs."noisy-0_4_2".repo  = "noisy";
  inputs."noisy-0_4_2".type  = "github";
  inputs."noisy-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_3".dir   = "0_4_3";
  inputs."noisy-0_4_3".owner = "nim-nix-pkgs";
  inputs."noisy-0_4_3".ref   = "master";
  inputs."noisy-0_4_3".repo  = "noisy";
  inputs."noisy-0_4_3".type  = "github";
  inputs."noisy-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_4".dir   = "0_4_4";
  inputs."noisy-0_4_4".owner = "nim-nix-pkgs";
  inputs."noisy-0_4_4".ref   = "master";
  inputs."noisy-0_4_4".repo  = "noisy";
  inputs."noisy-0_4_4".type  = "github";
  inputs."noisy-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_5".dir   = "0_4_5";
  inputs."noisy-0_4_5".owner = "nim-nix-pkgs";
  inputs."noisy-0_4_5".ref   = "master";
  inputs."noisy-0_4_5".repo  = "noisy";
  inputs."noisy-0_4_5".type  = "github";
  inputs."noisy-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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