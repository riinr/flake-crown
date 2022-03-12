{
  description = ''A simple 2D game engine for Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgame2-master".url = "path:./master";
  inputs."nimgame2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_1".url = "path:./v0_1";
  inputs."nimgame2-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_2".url = "path:./v0_2";
  inputs."nimgame2-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_3".url = "path:./v0_3";
  inputs."nimgame2-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_4".url = "path:./v0_4";
  inputs."nimgame2-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_5".url = "path:./v0_5";
  inputs."nimgame2-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_6".url = "path:./v0_6";
  inputs."nimgame2-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_6_1".url = "path:./v0_6_1";
  inputs."nimgame2-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2-v0_6_2".url = "path:./v0_6_2";
  inputs."nimgame2-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}