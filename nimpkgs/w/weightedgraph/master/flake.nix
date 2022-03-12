{
  description = ''Graph With Weight Libary'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-weightedgraph-master.flake = false;
  inputs.src-weightedgraph-master.owner = "AzamShafiul";
  inputs.src-weightedgraph-master.ref   = "refs/heads/master";
  inputs.src-weightedgraph-master.repo  = "weighted_graph";
  inputs.src-weightedgraph-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-weightedgraph-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-weightedgraph-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}