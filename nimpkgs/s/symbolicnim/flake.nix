{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."symbolicnim-master".dir   = "master";
  inputs."symbolicnim-master".owner = "nim-nix-pkgs";
  inputs."symbolicnim-master".ref   = "master";
  inputs."symbolicnim-master".repo  = "symbolicnim";
  inputs."symbolicnim-master".type  = "github";
  inputs."symbolicnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_1".dir   = "v0_1";
  inputs."symbolicnim-v0_1".owner = "nim-nix-pkgs";
  inputs."symbolicnim-v0_1".ref   = "master";
  inputs."symbolicnim-v0_1".repo  = "symbolicnim";
  inputs."symbolicnim-v0_1".type  = "github";
  inputs."symbolicnim-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_1_1".dir   = "v0_1_1";
  inputs."symbolicnim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."symbolicnim-v0_1_1".ref   = "master";
  inputs."symbolicnim-v0_1_1".repo  = "symbolicnim";
  inputs."symbolicnim-v0_1_1".type  = "github";
  inputs."symbolicnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_0".dir   = "v0_2_0";
  inputs."symbolicnim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."symbolicnim-v0_2_0".ref   = "master";
  inputs."symbolicnim-v0_2_0".repo  = "symbolicnim";
  inputs."symbolicnim-v0_2_0".type  = "github";
  inputs."symbolicnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_1".dir   = "v0_2_1";
  inputs."symbolicnim-v0_2_1".owner = "nim-nix-pkgs";
  inputs."symbolicnim-v0_2_1".ref   = "master";
  inputs."symbolicnim-v0_2_1".repo  = "symbolicnim";
  inputs."symbolicnim-v0_2_1".type  = "github";
  inputs."symbolicnim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_2".dir   = "v0_2_2";
  inputs."symbolicnim-v0_2_2".owner = "nim-nix-pkgs";
  inputs."symbolicnim-v0_2_2".ref   = "master";
  inputs."symbolicnim-v0_2_2".repo  = "symbolicnim";
  inputs."symbolicnim-v0_2_2".type  = "github";
  inputs."symbolicnim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."symbolicnim-v0_2_3".dir   = "v0_2_3";
  inputs."symbolicnim-v0_2_3".owner = "nim-nix-pkgs";
  inputs."symbolicnim-v0_2_3".ref   = "master";
  inputs."symbolicnim-v0_2_3".repo  = "symbolicnim";
  inputs."symbolicnim-v0_2_3".type  = "github";
  inputs."symbolicnim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."symbolicnim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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