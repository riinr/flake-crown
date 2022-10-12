{
  description = ''Basic A-Star path finding'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-astar-0_4_0.flake = false;
  inputs.src-astar-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-astar-0_4_0.owner = "Nycto";
  inputs.src-astar-0_4_0.repo  = "AStarNim";
  inputs.src-astar-0_4_0.type  = "github";
  
  inputs."binaryheap".owner = "nim-nix-pkgs";
  inputs."binaryheap".ref   = "master";
  inputs."binaryheap".repo  = "binaryheap";
  inputs."binaryheap".dir   = "master";
  inputs."binaryheap".type  = "github";
  inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-astar-0_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-astar-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}