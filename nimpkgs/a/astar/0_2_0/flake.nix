{
  description = ''A* Pathfinding'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-astar-0_2_0.flake = false;
  inputs.src-astar-0_2_0.owner = "Nycto";
  inputs.src-astar-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-astar-0_2_0.repo  = "AStarNim";
  inputs.src-astar-0_2_0.type  = "github";
  
  inputs."binaryheap".dir   = "nimpkgs/b/binaryheap";
  inputs."binaryheap".owner = "riinr";
  inputs."binaryheap".ref   = "flake-pinning";
  inputs."binaryheap".repo  = "flake-nimble";
  inputs."binaryheap".type  = "github";
  inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optional_t".dir   = "nimpkgs/o/optional_t";
  inputs."optional_t".owner = "riinr";
  inputs."optional_t".ref   = "flake-pinning";
  inputs."optional_t".repo  = "flake-nimble";
  inputs."optional_t".type  = "github";
  inputs."optional_t".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-astar-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-astar-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}