{
  description = ''Nexus provides a high-level web framework for Nim, with batteries included.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nexus-main".dir   = "main";
  inputs."nexus-main".owner = "nim-nix-pkgs";
  inputs."nexus-main".ref   = "master";
  inputs."nexus-main".repo  = "nexus";
  inputs."nexus-main".type  = "github";
  inputs."nexus-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nexus-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nexus-v0_1_0".dir   = "v0_1_0";
  inputs."nexus-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nexus-v0_1_0".ref   = "master";
  inputs."nexus-v0_1_0".repo  = "nexus";
  inputs."nexus-v0_1_0".type  = "github";
  inputs."nexus-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nexus-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nexus-v0_1_1".dir   = "v0_1_1";
  inputs."nexus-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nexus-v0_1_1".ref   = "master";
  inputs."nexus-v0_1_1".repo  = "nexus";
  inputs."nexus-v0_1_1".type  = "github";
  inputs."nexus-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nexus-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nexus-v0_1_2".dir   = "v0_1_2";
  inputs."nexus-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nexus-v0_1_2".ref   = "master";
  inputs."nexus-v0_1_2".repo  = "nexus";
  inputs."nexus-v0_1_2".type  = "github";
  inputs."nexus-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nexus-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nexus-v0_1_3".dir   = "v0_1_3";
  inputs."nexus-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nexus-v0_1_3".ref   = "master";
  inputs."nexus-v0_1_3".repo  = "nexus";
  inputs."nexus-v0_1_3".type  = "github";
  inputs."nexus-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nexus-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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