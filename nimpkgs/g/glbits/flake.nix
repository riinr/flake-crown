{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glbits-master".dir   = "master";
  inputs."glbits-master".owner = "nim-nix-pkgs";
  inputs."glbits-master".ref   = "master";
  inputs."glbits-master".repo  = "glbits";
  inputs."glbits-master".type  = "github";
  inputs."glbits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-0_1_0".dir   = "0_1_0";
  inputs."glbits-0_1_0".owner = "nim-nix-pkgs";
  inputs."glbits-0_1_0".ref   = "master";
  inputs."glbits-0_1_0".repo  = "glbits";
  inputs."glbits-0_1_0".type  = "github";
  inputs."glbits-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_1".dir   = "v0_1_1";
  inputs."glbits-v0_1_1".owner = "nim-nix-pkgs";
  inputs."glbits-v0_1_1".ref   = "master";
  inputs."glbits-v0_1_1".repo  = "glbits";
  inputs."glbits-v0_1_1".type  = "github";
  inputs."glbits-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_2".dir   = "v0_1_2";
  inputs."glbits-v0_1_2".owner = "nim-nix-pkgs";
  inputs."glbits-v0_1_2".ref   = "master";
  inputs."glbits-v0_1_2".repo  = "glbits";
  inputs."glbits-v0_1_2".type  = "github";
  inputs."glbits-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_3".dir   = "v0_1_3";
  inputs."glbits-v0_1_3".owner = "nim-nix-pkgs";
  inputs."glbits-v0_1_3".ref   = "master";
  inputs."glbits-v0_1_3".repo  = "glbits";
  inputs."glbits-v0_1_3".type  = "github";
  inputs."glbits-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_4".dir   = "v0_1_4";
  inputs."glbits-v0_1_4".owner = "nim-nix-pkgs";
  inputs."glbits-v0_1_4".ref   = "master";
  inputs."glbits-v0_1_4".repo  = "glbits";
  inputs."glbits-v0_1_4".type  = "github";
  inputs."glbits-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_5".dir   = "v0_1_5";
  inputs."glbits-v0_1_5".owner = "nim-nix-pkgs";
  inputs."glbits-v0_1_5".ref   = "master";
  inputs."glbits-v0_1_5".repo  = "glbits";
  inputs."glbits-v0_1_5".type  = "github";
  inputs."glbits-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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