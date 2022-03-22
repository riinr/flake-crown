{
  description = ''A TicTacToe game written in nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NimTacToe-master.flake = false;
  inputs.src-NimTacToe-master.ref   = "refs/heads/master";
  inputs.src-NimTacToe-master.owner = "JesterOrNot";
  inputs.src-NimTacToe-master.repo  = "Nim-Tac-Toe";
  inputs.src-NimTacToe-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimTacToe-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NimTacToe-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}