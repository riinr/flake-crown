{
  description = ''2D Delaunay triangulations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-delaunay-master.flake = false;
  inputs.src-delaunay-master.owner = "Nycto";
  inputs.src-delaunay-master.ref   = "refs/heads/master";
  inputs.src-delaunay-master.repo  = "DelaunayNim";
  inputs.src-delaunay-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-delaunay-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-delaunay-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}