{
  description = ''GLFW bindings for Nim'';

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
  
  inputs."glfw-3_3_0".dir   = "3_3_0";
  inputs."glfw-3_3_0".owner = "nim-nix-pkgs";
  inputs."glfw-3_3_0".ref   = "master";
  inputs."glfw-3_3_0".repo  = "glfw";
  inputs."glfw-3_3_0".type  = "github";
  inputs."glfw-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-3_3_1".dir   = "3_3_1";
  inputs."glfw-3_3_1".owner = "nim-nix-pkgs";
  inputs."glfw-3_3_1".ref   = "master";
  inputs."glfw-3_3_1".repo  = "glfw";
  inputs."glfw-3_3_1".type  = "github";
  inputs."glfw-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-3_3_2".dir   = "3_3_2";
  inputs."glfw-3_3_2".owner = "nim-nix-pkgs";
  inputs."glfw-3_3_2".ref   = "master";
  inputs."glfw-3_3_2".repo  = "glfw";
  inputs."glfw-3_3_2".type  = "github";
  inputs."glfw-3_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-3_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-3_3_3".dir   = "3_3_3";
  inputs."glfw-3_3_3".owner = "nim-nix-pkgs";
  inputs."glfw-3_3_3".ref   = "master";
  inputs."glfw-3_3_3".repo  = "glfw";
  inputs."glfw-3_3_3".type  = "github";
  inputs."glfw-3_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-3_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw-3_3_4".dir   = "3_3_4";
  inputs."glfw-3_3_4".owner = "nim-nix-pkgs";
  inputs."glfw-3_3_4".ref   = "master";
  inputs."glfw-3_3_4".repo  = "glfw";
  inputs."glfw-3_3_4".type  = "github";
  inputs."glfw-3_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw-3_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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