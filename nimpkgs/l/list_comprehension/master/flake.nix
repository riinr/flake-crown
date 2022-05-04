{
  description = ''List comprehension, for creating sequences.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-list_comprehension-master.flake = false;
  inputs.src-list_comprehension-master.ref   = "refs/heads/master";
  inputs.src-list_comprehension-master.owner = "nim-lang";
  inputs.src-list_comprehension-master.repo  = "graveyard";
    inputs.src-list_comprehension-master.dir   = "lc";
inputs.src-list_comprehension-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-list_comprehension-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-list_comprehension-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}