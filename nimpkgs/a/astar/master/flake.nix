{
  description = ''A* Pathfinding'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-astar-master.flake = false;
  inputs.src-astar-master.owner = "Nycto";
  inputs.src-astar-master.ref   = "refs/heads/master";
  inputs.src-astar-master.repo  = "AStarNim";
  inputs.src-astar-master.type  = "github";
  
  inputs."binaryheap".dir   = "nimpkgs/b/binaryheap";
  inputs."binaryheap".owner = "riinr";
  inputs."binaryheap".ref   = "flake-pinning";
  inputs."binaryheap".repo  = "flake-nimble";
  inputs."binaryheap".type  = "github";
  inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-astar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-astar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}