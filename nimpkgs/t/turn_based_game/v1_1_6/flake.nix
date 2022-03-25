{
  description = ''Game rules framework for turn-based games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-turn_based_game-v1_1_6.flake = false;
  inputs.src-turn_based_game-v1_1_6.ref   = "refs/tags/v1.1.6";
  inputs.src-turn_based_game-v1_1_6.owner = "JohnAD";
  inputs.src-turn_based_game-v1_1_6.repo  = "turn_based_game";
  inputs.src-turn_based_game-v1_1_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-turn_based_game-v1_1_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-turn_based_game-v1_1_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}