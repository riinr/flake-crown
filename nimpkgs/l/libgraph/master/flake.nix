{
  description = ''Converts 2D linear graph coordinates to pixels on screen'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libgraph-master.flake = false;
  inputs.src-libgraph-master.ref   = "refs/heads/master";
  inputs.src-libgraph-master.owner = "Mnenmenth";
  inputs.src-libgraph-master.repo  = "libgraphnim";
  inputs.src-libgraph-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libgraph-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libgraph-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}