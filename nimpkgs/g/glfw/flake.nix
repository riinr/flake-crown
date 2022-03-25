{
  description = ''A high-level GLFW 3 wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glfw-master".dir   = "master";
  inputs."glfw-master".owner = "nim-nix-pkgs";
  inputs."glfw-master".ref   = "master";
  inputs."glfw-master".repo  = "glfw";
  inputs."glfw-master".type  = "github";
  inputs."glfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v0_2_0".dir   = "v0_2_0";
  inputs."glfw-v0_2_0".owner = "nim-nix-pkgs";
  inputs."glfw-v0_2_0".ref   = "master";
  inputs."glfw-v0_2_0".repo  = "glfw";
  inputs."glfw-v0_2_0".type  = "github";
  inputs."glfw-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v0_2_1".dir   = "v0_2_1";
  inputs."glfw-v0_2_1".owner = "nim-nix-pkgs";
  inputs."glfw-v0_2_1".ref   = "master";
  inputs."glfw-v0_2_1".repo  = "glfw";
  inputs."glfw-v0_2_1".type  = "github";
  inputs."glfw-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim_glfw-v0_3_0".dir   = "v0_3_0";
  inputs."nim_glfw-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nim_glfw-v0_3_0".ref   = "master";
  inputs."nim_glfw-v0_3_0".repo  = "nim_glfw";
  inputs."nim_glfw-v0_3_0".type  = "github";
  inputs."nim_glfw-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_glfw-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v0_3_1".dir   = "v0_3_1";
  inputs."glfw-v0_3_1".owner = "nim-nix-pkgs";
  inputs."glfw-v0_3_1".ref   = "master";
  inputs."glfw-v0_3_1".repo  = "glfw";
  inputs."glfw-v0_3_1".type  = "github";
  inputs."glfw-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v3_3_0_0".dir   = "v3_3_0_0";
  inputs."glfw-v3_3_0_0".owner = "nim-nix-pkgs";
  inputs."glfw-v3_3_0_0".ref   = "master";
  inputs."glfw-v3_3_0_0".repo  = "glfw";
  inputs."glfw-v3_3_0_0".type  = "github";
  inputs."glfw-v3_3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v3_3_0_1".dir   = "v3_3_0_1";
  inputs."glfw-v3_3_0_1".owner = "nim-nix-pkgs";
  inputs."glfw-v3_3_0_1".ref   = "master";
  inputs."glfw-v3_3_0_1".repo  = "glfw";
  inputs."glfw-v3_3_0_1".type  = "github";
  inputs."glfw-v3_3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v3_3_0_2".dir   = "v3_3_0_2";
  inputs."glfw-v3_3_0_2".owner = "nim-nix-pkgs";
  inputs."glfw-v3_3_0_2".ref   = "master";
  inputs."glfw-v3_3_0_2".repo  = "glfw";
  inputs."glfw-v3_3_0_2".type  = "github";
  inputs."glfw-v3_3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v3_3_0_3".dir   = "v3_3_0_3";
  inputs."glfw-v3_3_0_3".owner = "nim-nix-pkgs";
  inputs."glfw-v3_3_0_3".ref   = "master";
  inputs."glfw-v3_3_0_3".repo  = "glfw";
  inputs."glfw-v3_3_0_3".type  = "github";
  inputs."glfw-v3_3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v3_3_2_1".dir   = "v3_3_2_1";
  inputs."glfw-v3_3_2_1".owner = "nim-nix-pkgs";
  inputs."glfw-v3_3_2_1".ref   = "master";
  inputs."glfw-v3_3_2_1".repo  = "glfw";
  inputs."glfw-v3_3_2_1".type  = "github";
  inputs."glfw-v3_3_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-v3_3_4_0".dir   = "v3_3_4_0";
  inputs."glfw-v3_3_4_0".owner = "nim-nix-pkgs";
  inputs."glfw-v3_3_4_0".ref   = "master";
  inputs."glfw-v3_3_4_0".repo  = "glfw";
  inputs."glfw-v3_3_4_0".type  = "github";
  inputs."glfw-v3_3_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-v3_3_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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