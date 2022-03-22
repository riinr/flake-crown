{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgraphviz-v3_0.flake = false;
  inputs.src-nimgraphviz-v3_0.ref   = "refs/tags/v3.0";
  inputs.src-nimgraphviz-v3_0.owner = "Aveheuzed";
  inputs.src-nimgraphviz-v3_0.repo  = "nimgraphviz";
  inputs.src-nimgraphviz-v3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgraphviz-v3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgraphviz-v3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}