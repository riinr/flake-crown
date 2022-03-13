{
  description = ''A simple terminal tetris in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtetris-master".dir   = "master";
  inputs."nimtetris-master".owner = "nim-nix-pkgs";
  inputs."nimtetris-master".ref   = "master";
  inputs."nimtetris-master".repo  = "nimtetris";
  inputs."nimtetris-master".type  = "github";
  inputs."nimtetris-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_0".dir   = "v0_1_0";
  inputs."nimtetris-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_1_0".ref   = "master";
  inputs."nimtetris-v0_1_0".repo  = "nimtetris";
  inputs."nimtetris-v0_1_0".type  = "github";
  inputs."nimtetris-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_1".dir   = "v0_1_1";
  inputs."nimtetris-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_1_1".ref   = "master";
  inputs."nimtetris-v0_1_1".repo  = "nimtetris";
  inputs."nimtetris-v0_1_1".type  = "github";
  inputs."nimtetris-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_2".dir   = "v0_1_2";
  inputs."nimtetris-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_1_2".ref   = "master";
  inputs."nimtetris-v0_1_2".repo  = "nimtetris";
  inputs."nimtetris-v0_1_2".type  = "github";
  inputs."nimtetris-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_3".dir   = "v0_1_3";
  inputs."nimtetris-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_1_3".ref   = "master";
  inputs."nimtetris-v0_1_3".repo  = "nimtetris";
  inputs."nimtetris-v0_1_3".type  = "github";
  inputs."nimtetris-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_2_0".dir   = "v0_2_0";
  inputs."nimtetris-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_2_0".ref   = "master";
  inputs."nimtetris-v0_2_0".repo  = "nimtetris";
  inputs."nimtetris-v0_2_0".type  = "github";
  inputs."nimtetris-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_3_0".dir   = "v0_3_0";
  inputs."nimtetris-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_3_0".ref   = "master";
  inputs."nimtetris-v0_3_0".repo  = "nimtetris";
  inputs."nimtetris-v0_3_0".type  = "github";
  inputs."nimtetris-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_3_1".dir   = "v0_3_1";
  inputs."nimtetris-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimtetris-v0_3_1".ref   = "master";
  inputs."nimtetris-v0_3_1".repo  = "nimtetris";
  inputs."nimtetris-v0_3_1".type  = "github";
  inputs."nimtetris-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v1_0_0".dir   = "v1_0_0";
  inputs."nimtetris-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimtetris-v1_0_0".ref   = "master";
  inputs."nimtetris-v1_0_0".repo  = "nimtetris";
  inputs."nimtetris-v1_0_0".type  = "github";
  inputs."nimtetris-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v1_1_0".dir   = "v1_1_0";
  inputs."nimtetris-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nimtetris-v1_1_0".ref   = "master";
  inputs."nimtetris-v1_1_0".repo  = "nimtetris";
  inputs."nimtetris-v1_1_0".type  = "github";
  inputs."nimtetris-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v1_2_0".dir   = "v1_2_0";
  inputs."nimtetris-v1_2_0".owner = "nim-nix-pkgs";
  inputs."nimtetris-v1_2_0".ref   = "master";
  inputs."nimtetris-v1_2_0".repo  = "nimtetris";
  inputs."nimtetris-v1_2_0".type  = "github";
  inputs."nimtetris-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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