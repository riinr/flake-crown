{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cascade-master".dir   = "master";
  inputs."cascade-master".owner = "nim-nix-pkgs";
  inputs."cascade-master".ref   = "master";
  inputs."cascade-master".repo  = "cascade";
  inputs."cascade-master".type  = "github";
  inputs."cascade-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cascade-v0_2_0".dir   = "v0_2_0";
  inputs."cascade-v0_2_0".owner = "nim-nix-pkgs";
  inputs."cascade-v0_2_0".ref   = "master";
  inputs."cascade-v0_2_0".repo  = "cascade";
  inputs."cascade-v0_2_0".type  = "github";
  inputs."cascade-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cascade-v1_0_0".dir   = "v1_0_0";
  inputs."cascade-v1_0_0".owner = "nim-nix-pkgs";
  inputs."cascade-v1_0_0".ref   = "master";
  inputs."cascade-v1_0_0".repo  = "cascade";
  inputs."cascade-v1_0_0".type  = "github";
  inputs."cascade-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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