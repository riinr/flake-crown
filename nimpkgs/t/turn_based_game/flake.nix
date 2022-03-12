{
  description = ''Game rules engine for simulating or playing turn-based games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."turn_based_game-master".url = "path:./master";
  inputs."turn_based_game-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v0_9_0".url = "path:./v0_9_0";
  inputs."turn_based_game-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_0_0".url = "path:./v1_0_0";
  inputs."turn_based_game-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_0_1".url = "path:./v1_0_1";
  inputs."turn_based_game-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_0".url = "path:./v1_1_0";
  inputs."turn_based_game-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_1".url = "path:./v1_1_1";
  inputs."turn_based_game-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_2".url = "path:./v1_1_2";
  inputs."turn_based_game-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_3".url = "path:./v1_1_3";
  inputs."turn_based_game-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_4".url = "path:./v1_1_4";
  inputs."turn_based_game-v1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_5".url = "path:./v1_1_5";
  inputs."turn_based_game-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."turn_based_game-v1_1_6".url = "path:./v1_1_6";
  inputs."turn_based_game-v1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game-v1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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