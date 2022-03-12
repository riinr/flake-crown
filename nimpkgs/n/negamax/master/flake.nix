{
  description = ''Negamax AI search-tree algorithm for two player games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-negamax-master.flake = false;
  inputs.src-negamax-master.owner = "JohnAD";
  inputs.src-negamax-master.ref   = "refs/heads/master";
  inputs.src-negamax-master.repo  = "negamax";
  inputs.src-negamax-master.type  = "github";
  
  inputs."turn_based_game".dir   = "nimpkgs/t/turn_based_game";
  inputs."turn_based_game".owner = "riinr";
  inputs."turn_based_game".ref   = "flake-pinning";
  inputs."turn_based_game".repo  = "flake-nimble";
  inputs."turn_based_game".type  = "github";
  inputs."turn_based_game".inputs.nixpkgs.follows = "nixpkgs";
  inputs."turn_based_game".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-negamax-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-negamax-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}