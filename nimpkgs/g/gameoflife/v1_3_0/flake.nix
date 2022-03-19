{
  description = ''gameoflife is library for Game of Life.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gameoflife-v1_3_0.flake = false;
  inputs.src-gameoflife-v1_3_0.owner = "jiro4989";
  inputs.src-gameoflife-v1_3_0.ref   = "refs/tags/v1.3.0";
  inputs.src-gameoflife-v1_3_0.repo  = "gameoflife";
  inputs.src-gameoflife-v1_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gameoflife-v1_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gameoflife-v1_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}