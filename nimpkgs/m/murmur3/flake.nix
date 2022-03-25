{
  description = ''A simple MurmurHash3 wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."murmur3-master".dir   = "master";
  inputs."murmur3-master".owner = "nim-nix-pkgs";
  inputs."murmur3-master".ref   = "master";
  inputs."murmur3-master".repo  = "murmur3";
  inputs."murmur3-master".type  = "github";
  inputs."murmur3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmur-v0_1_0".dir   = "v0_1_0";
  inputs."murmur-v0_1_0".owner = "nim-nix-pkgs";
  inputs."murmur-v0_1_0".ref   = "master";
  inputs."murmur-v0_1_0".repo  = "murmur";
  inputs."murmur-v0_1_0".type  = "github";
  inputs."murmur-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmur3-v0_1_1".dir   = "v0_1_1";
  inputs."murmur3-v0_1_1".owner = "nim-nix-pkgs";
  inputs."murmur3-v0_1_1".ref   = "master";
  inputs."murmur3-v0_1_1".repo  = "murmur3";
  inputs."murmur3-v0_1_1".type  = "github";
  inputs."murmur3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmur3-v0_1_2".dir   = "v0_1_2";
  inputs."murmur3-v0_1_2".owner = "nim-nix-pkgs";
  inputs."murmur3-v0_1_2".ref   = "master";
  inputs."murmur3-v0_1_2".repo  = "murmur3";
  inputs."murmur3-v0_1_2".type  = "github";
  inputs."murmur3-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur3-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmur3-v0_1_3".dir   = "v0_1_3";
  inputs."murmur3-v0_1_3".owner = "nim-nix-pkgs";
  inputs."murmur3-v0_1_3".ref   = "master";
  inputs."murmur3-v0_1_3".repo  = "murmur3";
  inputs."murmur3-v0_1_3".type  = "github";
  inputs."murmur3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmur3-v0_2_0".dir   = "v0_2_0";
  inputs."murmur3-v0_2_0".owner = "nim-nix-pkgs";
  inputs."murmur3-v0_2_0".ref   = "master";
  inputs."murmur3-v0_2_0".repo  = "murmur3";
  inputs."murmur3-v0_2_0".type  = "github";
  inputs."murmur3-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur3-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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