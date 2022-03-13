{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgame-master".dir   = "master";
  inputs."nimgame-master".owner = "nim-nix-pkgs";
  inputs."nimgame-master".ref   = "master";
  inputs."nimgame-master".repo  = "nimgame";
  inputs."nimgame-master".type  = "github";
  inputs."nimgame-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame-v0_1".dir   = "v0_1";
  inputs."nimgame-v0_1".owner = "nim-nix-pkgs";
  inputs."nimgame-v0_1".ref   = "master";
  inputs."nimgame-v0_1".repo  = "nimgame";
  inputs."nimgame-v0_1".type  = "github";
  inputs."nimgame-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame-v0_2".dir   = "v0_2";
  inputs."nimgame-v0_2".owner = "nim-nix-pkgs";
  inputs."nimgame-v0_2".ref   = "master";
  inputs."nimgame-v0_2".repo  = "nimgame";
  inputs."nimgame-v0_2".type  = "github";
  inputs."nimgame-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame-v0_3".dir   = "v0_3";
  inputs."nimgame-v0_3".owner = "nim-nix-pkgs";
  inputs."nimgame-v0_3".ref   = "master";
  inputs."nimgame-v0_3".repo  = "nimgame";
  inputs."nimgame-v0_3".type  = "github";
  inputs."nimgame-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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