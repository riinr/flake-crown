{
  description = ''Game rules framework for turn-based games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-turn_based_game-v1_1_4.flake = false;
  inputs.src-turn_based_game-v1_1_4.ref   = "refs/tags/v1.1.4";
  inputs.src-turn_based_game-v1_1_4.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_4.repo  = "turn_based_game";
  inputs.src-turn_based_game-v1_1_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-turn_based_game-v1_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-turn_based_game-v1_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}