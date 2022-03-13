{
  description = ''A simple 2D game engine for Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgame2-master".dir   = "master";
  inputs."nimgame2-master".owner = "nim-nix-pkgs";
  inputs."nimgame2-master".ref   = "master";
  inputs."nimgame2-master".repo  = "nimgame2";
  inputs."nimgame2-master".type  = "github";
  inputs."nimgame2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_1".dir   = "v0_1";
  inputs."nimgame2-v0_1".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_1".ref   = "master";
  inputs."nimgame2-v0_1".repo  = "nimgame2";
  inputs."nimgame2-v0_1".type  = "github";
  inputs."nimgame2-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_2".dir   = "v0_2";
  inputs."nimgame2-v0_2".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_2".ref   = "master";
  inputs."nimgame2-v0_2".repo  = "nimgame2";
  inputs."nimgame2-v0_2".type  = "github";
  inputs."nimgame2-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_3".dir   = "v0_3";
  inputs."nimgame2-v0_3".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_3".ref   = "master";
  inputs."nimgame2-v0_3".repo  = "nimgame2";
  inputs."nimgame2-v0_3".type  = "github";
  inputs."nimgame2-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_4".dir   = "v0_4";
  inputs."nimgame2-v0_4".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_4".ref   = "master";
  inputs."nimgame2-v0_4".repo  = "nimgame2";
  inputs."nimgame2-v0_4".type  = "github";
  inputs."nimgame2-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_5".dir   = "v0_5";
  inputs."nimgame2-v0_5".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_5".ref   = "master";
  inputs."nimgame2-v0_5".repo  = "nimgame2";
  inputs."nimgame2-v0_5".type  = "github";
  inputs."nimgame2-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_6".dir   = "v0_6";
  inputs."nimgame2-v0_6".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_6".ref   = "master";
  inputs."nimgame2-v0_6".repo  = "nimgame2";
  inputs."nimgame2-v0_6".type  = "github";
  inputs."nimgame2-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_6_1".dir   = "v0_6_1";
  inputs."nimgame2-v0_6_1".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_6_1".ref   = "master";
  inputs."nimgame2-v0_6_1".repo  = "nimgame2";
  inputs."nimgame2-v0_6_1".type  = "github";
  inputs."nimgame2-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_6_2".dir   = "v0_6_2";
  inputs."nimgame2-v0_6_2".owner = "nim-nix-pkgs";
  inputs."nimgame2-v0_6_2".ref   = "master";
  inputs."nimgame2-v0_6_2".repo  = "nimgame2";
  inputs."nimgame2-v0_6_2".type  = "github";
  inputs."nimgame2-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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