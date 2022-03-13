{
  description = ''Static GLFW for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."staticglfw-master".dir   = "master";
  inputs."staticglfw-master".owner = "nim-nix-pkgs";
  inputs."staticglfw-master".ref   = "master";
  inputs."staticglfw-master".repo  = "staticglfw";
  inputs."staticglfw-master".type  = "github";
  inputs."staticglfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_0_1".dir   = "4_0_1";
  inputs."staticglfw-4_0_1".owner = "nim-nix-pkgs";
  inputs."staticglfw-4_0_1".ref   = "master";
  inputs."staticglfw-4_0_1".repo  = "staticglfw";
  inputs."staticglfw-4_0_1".type  = "github";
  inputs."staticglfw-4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_0".dir   = "4_1_0";
  inputs."staticglfw-4_1_0".owner = "nim-nix-pkgs";
  inputs."staticglfw-4_1_0".ref   = "master";
  inputs."staticglfw-4_1_0".repo  = "staticglfw";
  inputs."staticglfw-4_1_0".type  = "github";
  inputs."staticglfw-4_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_1".dir   = "4_1_1";
  inputs."staticglfw-4_1_1".owner = "nim-nix-pkgs";
  inputs."staticglfw-4_1_1".ref   = "master";
  inputs."staticglfw-4_1_1".repo  = "staticglfw";
  inputs."staticglfw-4_1_1".type  = "github";
  inputs."staticglfw-4_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_2".dir   = "4_1_2";
  inputs."staticglfw-4_1_2".owner = "nim-nix-pkgs";
  inputs."staticglfw-4_1_2".ref   = "master";
  inputs."staticglfw-4_1_2".repo  = "staticglfw";
  inputs."staticglfw-4_1_2".type  = "github";
  inputs."staticglfw-4_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_3".dir   = "4_1_3";
  inputs."staticglfw-4_1_3".owner = "nim-nix-pkgs";
  inputs."staticglfw-4_1_3".ref   = "master";
  inputs."staticglfw-4_1_3".repo  = "staticglfw";
  inputs."staticglfw-4_1_3".type  = "github";
  inputs."staticglfw-4_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_2_0".dir   = "v0_2_0";
  inputs."staticglfw-v0_2_0".owner = "nim-nix-pkgs";
  inputs."staticglfw-v0_2_0".ref   = "master";
  inputs."staticglfw-v0_2_0".repo  = "staticglfw";
  inputs."staticglfw-v0_2_0".type  = "github";
  inputs."staticglfw-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_2_1".dir   = "v0_2_1";
  inputs."staticglfw-v0_2_1".owner = "nim-nix-pkgs";
  inputs."staticglfw-v0_2_1".ref   = "master";
  inputs."staticglfw-v0_2_1".repo  = "staticglfw";
  inputs."staticglfw-v0_2_1".type  = "github";
  inputs."staticglfw-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_3_0".dir   = "v0_3_0";
  inputs."staticglfw-v0_3_0".owner = "nim-nix-pkgs";
  inputs."staticglfw-v0_3_0".ref   = "master";
  inputs."staticglfw-v0_3_0".repo  = "staticglfw";
  inputs."staticglfw-v0_3_0".type  = "github";
  inputs."staticglfw-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_3_1".dir   = "v0_3_1";
  inputs."staticglfw-v0_3_1".owner = "nim-nix-pkgs";
  inputs."staticglfw-v0_3_1".ref   = "master";
  inputs."staticglfw-v0_3_1".repo  = "staticglfw";
  inputs."staticglfw-v0_3_1".type  = "github";
  inputs."staticglfw-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v3_3_0_0".dir   = "v3_3_0_0";
  inputs."staticglfw-v3_3_0_0".owner = "nim-nix-pkgs";
  inputs."staticglfw-v3_3_0_0".ref   = "master";
  inputs."staticglfw-v3_3_0_0".repo  = "staticglfw";
  inputs."staticglfw-v3_3_0_0".type  = "github";
  inputs."staticglfw-v3_3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v3_3_0_1".dir   = "v3_3_0_1";
  inputs."staticglfw-v3_3_0_1".owner = "nim-nix-pkgs";
  inputs."staticglfw-v3_3_0_1".ref   = "master";
  inputs."staticglfw-v3_3_0_1".repo  = "staticglfw";
  inputs."staticglfw-v3_3_0_1".type  = "github";
  inputs."staticglfw-v3_3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v3_3_0_2".dir   = "v3_3_0_2";
  inputs."staticglfw-v3_3_0_2".owner = "nim-nix-pkgs";
  inputs."staticglfw-v3_3_0_2".ref   = "master";
  inputs."staticglfw-v3_3_0_2".repo  = "staticglfw";
  inputs."staticglfw-v3_3_0_2".type  = "github";
  inputs."staticglfw-v3_3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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