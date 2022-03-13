{
  description = ''Negamax AI search-tree algorithm for two player games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-negamax-v0_0_2.flake = false;
  inputs.src-negamax-v0_0_2.owner = "JohnAD";
  inputs.src-negamax-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-negamax-v0_0_2.repo  = "negamax";
  inputs.src-negamax-v0_0_2.type  = "github";
  
  inputs."turn_based_game".owner = "nim-nix-pkgs";
  inputs."turn_based_game".ref   = "master";
  inputs."turn_based_game".repo  = "turn_based_game";
  inputs."turn_based_game".type  = "github";
  inputs."turn_based_game".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-negamax-v0_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-negamax-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}