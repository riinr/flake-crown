{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgraphviz-master.flake = false;
  inputs.src-nimgraphviz-master.owner = "Aveheuzed";
  inputs.src-nimgraphviz-master.ref   = "master";
  inputs.src-nimgraphviz-master.repo  = "nimgraphviz";
  inputs.src-nimgraphviz-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgraphviz-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgraphviz-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}