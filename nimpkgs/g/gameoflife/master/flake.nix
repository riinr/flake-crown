{
  description = ''gameoflife is library for Game of Life.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gameoflife-master.flake = false;
  inputs.src-gameoflife-master.owner = "jiro4989";
  inputs.src-gameoflife-master.ref   = "refs/heads/master";
  inputs.src-gameoflife-master.repo  = "gameoflife";
  inputs.src-gameoflife-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gameoflife-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gameoflife-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}