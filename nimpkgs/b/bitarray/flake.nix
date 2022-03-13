{
  description = ''mmap-backed bitarray implementation in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitarray-master".dir   = "master";
  inputs."bitarray-master".owner = "nim-nix-pkgs";
  inputs."bitarray-master".ref   = "master";
  inputs."bitarray-master".repo  = "bitarray";
  inputs."bitarray-master".type  = "github";
  inputs."bitarray-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_1_1".dir   = "v0_1_1";
  inputs."bitarray-v0_1_1".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_1_1".ref   = "master";
  inputs."bitarray-v0_1_1".repo  = "bitarray";
  inputs."bitarray-v0_1_1".type  = "github";
  inputs."bitarray-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_1_2".dir   = "v0_1_2";
  inputs."bitarray-v0_1_2".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_1_2".ref   = "master";
  inputs."bitarray-v0_1_2".repo  = "bitarray";
  inputs."bitarray-v0_1_2".type  = "github";
  inputs."bitarray-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_1_3".dir   = "v0_1_3";
  inputs."bitarray-v0_1_3".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_1_3".ref   = "master";
  inputs."bitarray-v0_1_3".repo  = "bitarray";
  inputs."bitarray-v0_1_3".type  = "github";
  inputs."bitarray-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_1_4".dir   = "v0_1_4";
  inputs."bitarray-v0_1_4".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_1_4".ref   = "master";
  inputs."bitarray-v0_1_4".repo  = "bitarray";
  inputs."bitarray-v0_1_4".type  = "github";
  inputs."bitarray-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_0".dir   = "v0_2_0";
  inputs."bitarray-v0_2_0".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_0".ref   = "master";
  inputs."bitarray-v0_2_0".repo  = "bitarray";
  inputs."bitarray-v0_2_0".type  = "github";
  inputs."bitarray-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_1".dir   = "v0_2_1";
  inputs."bitarray-v0_2_1".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_1".ref   = "master";
  inputs."bitarray-v0_2_1".repo  = "bitarray";
  inputs."bitarray-v0_2_1".type  = "github";
  inputs."bitarray-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_2".dir   = "v0_2_2";
  inputs."bitarray-v0_2_2".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_2".ref   = "master";
  inputs."bitarray-v0_2_2".repo  = "bitarray";
  inputs."bitarray-v0_2_2".type  = "github";
  inputs."bitarray-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_3".dir   = "v0_2_3";
  inputs."bitarray-v0_2_3".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_3".ref   = "master";
  inputs."bitarray-v0_2_3".repo  = "bitarray";
  inputs."bitarray-v0_2_3".type  = "github";
  inputs."bitarray-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_4".dir   = "v0_2_4";
  inputs."bitarray-v0_2_4".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_4".ref   = "master";
  inputs."bitarray-v0_2_4".repo  = "bitarray";
  inputs."bitarray-v0_2_4".type  = "github";
  inputs."bitarray-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_5".dir   = "v0_2_5";
  inputs."bitarray-v0_2_5".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_5".ref   = "master";
  inputs."bitarray-v0_2_5".repo  = "bitarray";
  inputs."bitarray-v0_2_5".type  = "github";
  inputs."bitarray-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_2_6".dir   = "v0_2_6";
  inputs."bitarray-v0_2_6".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_2_6".ref   = "master";
  inputs."bitarray-v0_2_6".repo  = "bitarray";
  inputs."bitarray-v0_2_6".type  = "github";
  inputs."bitarray-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_3_0".dir   = "v0_3_0";
  inputs."bitarray-v0_3_0".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_3_0".ref   = "master";
  inputs."bitarray-v0_3_0".repo  = "bitarray";
  inputs."bitarray-v0_3_0".type  = "github";
  inputs."bitarray-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_4_0".dir   = "v0_4_0";
  inputs."bitarray-v0_4_0".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_4_0".ref   = "master";
  inputs."bitarray-v0_4_0".repo  = "bitarray";
  inputs."bitarray-v0_4_0".type  = "github";
  inputs."bitarray-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_5_0".dir   = "v0_5_0";
  inputs."bitarray-v0_5_0".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_5_0".ref   = "master";
  inputs."bitarray-v0_5_0".repo  = "bitarray";
  inputs."bitarray-v0_5_0".type  = "github";
  inputs."bitarray-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitarray-v0_6_0".dir   = "v0_6_0";
  inputs."bitarray-v0_6_0".owner = "nim-nix-pkgs";
  inputs."bitarray-v0_6_0".ref   = "master";
  inputs."bitarray-v0_6_0".repo  = "bitarray";
  inputs."bitarray-v0_6_0".type  = "github";
  inputs."bitarray-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitarray-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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