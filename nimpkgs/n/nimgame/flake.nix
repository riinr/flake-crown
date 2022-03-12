{
  description = ''A simple 2D game engine for Nim language. Deprecated, use nimgame2 instead.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgame-master".url = "path:./master";
  inputs."nimgame-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame-v0_1".url = "path:./v0_1";
  inputs."nimgame-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame-v0_2".url = "path:./v0_2";
  inputs."nimgame-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame-v0_3".url = "path:./v0_3";
  inputs."nimgame-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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