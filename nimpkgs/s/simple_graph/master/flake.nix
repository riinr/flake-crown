{
  description = ''Simple Graph Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simple_graph-master.flake = false;
  inputs.src-simple_graph-master.owner = "erhlee-bird";
  inputs.src-simple_graph-master.ref   = "refs/heads/master";
  inputs.src-simple_graph-master.repo  = "simple_graph";
  inputs.src-simple_graph-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simple_graph-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simple_graph-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}