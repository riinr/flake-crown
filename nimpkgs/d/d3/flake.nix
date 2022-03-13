{
  description = ''A D3.js wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."d3-master".dir   = "master";
  inputs."d3-master".owner = "nim-nix-pkgs";
  inputs."d3-master".ref   = "master";
  inputs."d3-master".repo  = "d3";
  inputs."d3-master".type  = "github";
  inputs."d3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."d3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."d3-v0_1_0".dir   = "v0_1_0";
  inputs."d3-v0_1_0".owner = "nim-nix-pkgs";
  inputs."d3-v0_1_0".ref   = "master";
  inputs."d3-v0_1_0".repo  = "d3";
  inputs."d3-v0_1_0".type  = "github";
  inputs."d3-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."d3-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."d3-v0_1_1".dir   = "v0_1_1";
  inputs."d3-v0_1_1".owner = "nim-nix-pkgs";
  inputs."d3-v0_1_1".ref   = "master";
  inputs."d3-v0_1_1".repo  = "d3";
  inputs."d3-v0_1_1".type  = "github";
  inputs."d3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."d3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."d3-v0_1_2".dir   = "v0_1_2";
  inputs."d3-v0_1_2".owner = "nim-nix-pkgs";
  inputs."d3-v0_1_2".ref   = "master";
  inputs."d3-v0_1_2".repo  = "d3";
  inputs."d3-v0_1_2".type  = "github";
  inputs."d3-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."d3-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."d3-v0_1_3".dir   = "v0_1_3";
  inputs."d3-v0_1_3".owner = "nim-nix-pkgs";
  inputs."d3-v0_1_3".ref   = "master";
  inputs."d3-v0_1_3".repo  = "d3";
  inputs."d3-v0_1_3".type  = "github";
  inputs."d3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."d3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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