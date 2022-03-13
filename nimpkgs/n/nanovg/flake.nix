{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nanovg-master".dir   = "master";
  inputs."nanovg-master".owner = "nim-nix-pkgs";
  inputs."nanovg-master".ref   = "master";
  inputs."nanovg-master".repo  = "nanovg";
  inputs."nanovg-master".type  = "github";
  inputs."nanovg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_1_0".dir   = "v0_1_0";
  inputs."nanovg-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_1_0".ref   = "master";
  inputs."nanovg-v0_1_0".repo  = "nanovg";
  inputs."nanovg-v0_1_0".type  = "github";
  inputs."nanovg-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_2_0".dir   = "v0_2_0";
  inputs."nanovg-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_2_0".ref   = "master";
  inputs."nanovg-v0_2_0".repo  = "nanovg";
  inputs."nanovg-v0_2_0".type  = "github";
  inputs."nanovg-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_2_1".dir   = "v0_2_1";
  inputs."nanovg-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_2_1".ref   = "master";
  inputs."nanovg-v0_2_1".repo  = "nanovg";
  inputs."nanovg-v0_2_1".type  = "github";
  inputs."nanovg-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_2_2".dir   = "v0_2_2";
  inputs."nanovg-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_2_2".ref   = "master";
  inputs."nanovg-v0_2_2".repo  = "nanovg";
  inputs."nanovg-v0_2_2".type  = "github";
  inputs."nanovg-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_2_3".dir   = "v0_2_3";
  inputs."nanovg-v0_2_3".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_2_3".ref   = "master";
  inputs."nanovg-v0_2_3".repo  = "nanovg";
  inputs."nanovg-v0_2_3".type  = "github";
  inputs."nanovg-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_3_0".dir   = "v0_3_0";
  inputs."nanovg-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_3_0".ref   = "master";
  inputs."nanovg-v0_3_0".repo  = "nanovg";
  inputs."nanovg-v0_3_0".type  = "github";
  inputs."nanovg-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_3_1".dir   = "v0_3_1";
  inputs."nanovg-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_3_1".ref   = "master";
  inputs."nanovg-v0_3_1".repo  = "nanovg";
  inputs."nanovg-v0_3_1".type  = "github";
  inputs."nanovg-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_3_2".dir   = "v0_3_2";
  inputs."nanovg-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_3_2".ref   = "master";
  inputs."nanovg-v0_3_2".repo  = "nanovg";
  inputs."nanovg-v0_3_2".type  = "github";
  inputs."nanovg-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg-v0_3_3".dir   = "v0_3_3";
  inputs."nanovg-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nanovg-v0_3_3".ref   = "master";
  inputs."nanovg-v0_3_3".repo  = "nanovg";
  inputs."nanovg-v0_3_3".type  = "github";
  inputs."nanovg-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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