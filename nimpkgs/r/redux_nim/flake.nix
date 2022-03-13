{
  description = ''Redux Implementation in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redux_nim-master".dir   = "master";
  inputs."redux_nim-master".owner = "nim-nix-pkgs";
  inputs."redux_nim-master".ref   = "master";
  inputs."redux_nim-master".repo  = "redux_nim";
  inputs."redux_nim-master".type  = "github";
  inputs."redux_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v0_1_0".dir   = "v0_1_0";
  inputs."redux_nim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."redux_nim-v0_1_0".ref   = "master";
  inputs."redux_nim-v0_1_0".repo  = "redux_nim";
  inputs."redux_nim-v0_1_0".type  = "github";
  inputs."redux_nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v0_1_1".dir   = "v0_1_1";
  inputs."redux_nim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."redux_nim-v0_1_1".ref   = "master";
  inputs."redux_nim-v0_1_1".repo  = "redux_nim";
  inputs."redux_nim-v0_1_1".type  = "github";
  inputs."redux_nim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v0_2_0".dir   = "v0_2_0";
  inputs."redux_nim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."redux_nim-v0_2_0".ref   = "master";
  inputs."redux_nim-v0_2_0".repo  = "redux_nim";
  inputs."redux_nim-v0_2_0".type  = "github";
  inputs."redux_nim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_0".dir   = "v1_0_0";
  inputs."redux_nim-v1_0_0".owner = "nim-nix-pkgs";
  inputs."redux_nim-v1_0_0".ref   = "master";
  inputs."redux_nim-v1_0_0".repo  = "redux_nim";
  inputs."redux_nim-v1_0_0".type  = "github";
  inputs."redux_nim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_1".dir   = "v1_0_1";
  inputs."redux_nim-v1_0_1".owner = "nim-nix-pkgs";
  inputs."redux_nim-v1_0_1".ref   = "master";
  inputs."redux_nim-v1_0_1".repo  = "redux_nim";
  inputs."redux_nim-v1_0_1".type  = "github";
  inputs."redux_nim-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_2".dir   = "v1_0_2";
  inputs."redux_nim-v1_0_2".owner = "nim-nix-pkgs";
  inputs."redux_nim-v1_0_2".ref   = "master";
  inputs."redux_nim-v1_0_2".repo  = "redux_nim";
  inputs."redux_nim-v1_0_2".type  = "github";
  inputs."redux_nim-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redux_nim-v1_0_3".dir   = "v1_0_3";
  inputs."redux_nim-v1_0_3".owner = "nim-nix-pkgs";
  inputs."redux_nim-v1_0_3".ref   = "master";
  inputs."redux_nim-v1_0_3".repo  = "redux_nim";
  inputs."redux_nim-v1_0_3".type  = "github";
  inputs."redux_nim-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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