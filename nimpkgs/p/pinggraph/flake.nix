{
  description = ''Simple terminal ping graph'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pinggraph-master".dir   = "master";
  inputs."pinggraph-master".owner = "nim-nix-pkgs";
  inputs."pinggraph-master".ref   = "master";
  inputs."pinggraph-master".repo  = "pinggraph";
  inputs."pinggraph-master".type  = "github";
  inputs."pinggraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pinggraph-v0_1_0".dir   = "v0_1_0";
  inputs."pinggraph-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pinggraph-v0_1_0".ref   = "master";
  inputs."pinggraph-v0_1_0".repo  = "pinggraph";
  inputs."pinggraph-v0_1_0".type  = "github";
  inputs."pinggraph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pinggraph-v0_1_1".dir   = "v0_1_1";
  inputs."pinggraph-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pinggraph-v0_1_1".ref   = "master";
  inputs."pinggraph-v0_1_1".repo  = "pinggraph";
  inputs."pinggraph-v0_1_1".type  = "github";
  inputs."pinggraph-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pinggraph-v0_1_2".dir   = "v0_1_2";
  inputs."pinggraph-v0_1_2".owner = "nim-nix-pkgs";
  inputs."pinggraph-v0_1_2".ref   = "master";
  inputs."pinggraph-v0_1_2".repo  = "pinggraph";
  inputs."pinggraph-v0_1_2".type  = "github";
  inputs."pinggraph-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pinggraph-v0_1_3".dir   = "v0_1_3";
  inputs."pinggraph-v0_1_3".owner = "nim-nix-pkgs";
  inputs."pinggraph-v0_1_3".ref   = "master";
  inputs."pinggraph-v0_1_3".repo  = "pinggraph";
  inputs."pinggraph-v0_1_3".type  = "github";
  inputs."pinggraph-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pinggraph-v0_1_4".dir   = "v0_1_4";
  inputs."pinggraph-v0_1_4".owner = "nim-nix-pkgs";
  inputs."pinggraph-v0_1_4".ref   = "master";
  inputs."pinggraph-v0_1_4".repo  = "pinggraph";
  inputs."pinggraph-v0_1_4".type  = "github";
  inputs."pinggraph-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pinggraph-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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