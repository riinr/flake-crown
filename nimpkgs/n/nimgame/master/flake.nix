{
  description = ''Simple 2D game engine for Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgame-master.flake = false;
  inputs.src-nimgame-master.owner = "Vladar4";
  inputs.src-nimgame-master.ref   = "master";
  inputs.src-nimgame-master.repo  = "nimgame";
  inputs.src-nimgame-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgame-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}