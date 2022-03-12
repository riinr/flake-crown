{
  description = ''R-Tree'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rtree-master.flake = false;
  inputs.src-rtree-master.owner = "stefansalewski";
  inputs.src-rtree-master.ref   = "refs/heads/master";
  inputs.src-rtree-master.repo  = "RTree";
  inputs.src-rtree-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rtree-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rtree-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}