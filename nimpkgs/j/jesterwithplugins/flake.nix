{
  description = ''A sinatra-like web framework for Nim with plugins.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jesterwithplugins-master".dir   = "master";
  inputs."jesterwithplugins-master".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-master".ref   = "master";
  inputs."jesterwithplugins-master".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-master".type  = "github";
  inputs."jesterwithplugins-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_1_0".dir   = "v0_1_0";
  inputs."jesterwithplugins-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_1_0".ref   = "master";
  inputs."jesterwithplugins-v0_1_0".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_1_0".type  = "github";
  inputs."jesterwithplugins-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_1_1".dir   = "v0_1_1";
  inputs."jesterwithplugins-v0_1_1".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_1_1".ref   = "master";
  inputs."jesterwithplugins-v0_1_1".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_1_1".type  = "github";
  inputs."jesterwithplugins-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_2_0".dir   = "v0_2_0";
  inputs."jesterwithplugins-v0_2_0".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_2_0".ref   = "master";
  inputs."jesterwithplugins-v0_2_0".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_2_0".type  = "github";
  inputs."jesterwithplugins-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_2_1".dir   = "v0_2_1";
  inputs."jesterwithplugins-v0_2_1".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_2_1".ref   = "master";
  inputs."jesterwithplugins-v0_2_1".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_2_1".type  = "github";
  inputs."jesterwithplugins-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_3_0".dir   = "v0_3_0";
  inputs."jesterwithplugins-v0_3_0".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_3_0".ref   = "master";
  inputs."jesterwithplugins-v0_3_0".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_3_0".type  = "github";
  inputs."jesterwithplugins-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_4_0".dir   = "v0_4_0";
  inputs."jesterwithplugins-v0_4_0".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_4_0".ref   = "master";
  inputs."jesterwithplugins-v0_4_0".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_4_0".type  = "github";
  inputs."jesterwithplugins-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_4_1".dir   = "v0_4_1";
  inputs."jesterwithplugins-v0_4_1".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_4_1".ref   = "master";
  inputs."jesterwithplugins-v0_4_1".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_4_1".type  = "github";
  inputs."jesterwithplugins-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_4_2".dir   = "v0_4_2";
  inputs."jesterwithplugins-v0_4_2".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_4_2".ref   = "master";
  inputs."jesterwithplugins-v0_4_2".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_4_2".type  = "github";
  inputs."jesterwithplugins-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_4_3".dir   = "v0_4_3";
  inputs."jesterwithplugins-v0_4_3".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_4_3".ref   = "master";
  inputs."jesterwithplugins-v0_4_3".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_4_3".type  = "github";
  inputs."jesterwithplugins-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_5_0".dir   = "v0_5_0";
  inputs."jesterwithplugins-v0_5_0".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_5_0".ref   = "master";
  inputs."jesterwithplugins-v0_5_0".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_5_0".type  = "github";
  inputs."jesterwithplugins-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_5_1".dir   = "v0_5_1";
  inputs."jesterwithplugins-v0_5_1".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_5_1".ref   = "master";
  inputs."jesterwithplugins-v0_5_1".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_5_1".type  = "github";
  inputs."jesterwithplugins-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jesterwithplugins-v0_5_2".dir   = "v0_5_2";
  inputs."jesterwithplugins-v0_5_2".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins-v0_5_2".ref   = "master";
  inputs."jesterwithplugins-v0_5_2".repo  = "jesterwithplugins";
  inputs."jesterwithplugins-v0_5_2".type  = "github";
  inputs."jesterwithplugins-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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