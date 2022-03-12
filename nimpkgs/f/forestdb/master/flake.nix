{
  description = ''ForestDB is fast key-value storage engine that is based on a Hierarchical B+-Tree based Trie, or HB+-Trie.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-forestdb-master.flake = false;
  inputs.src-forestdb-master.owner = "nimscale";
  inputs.src-forestdb-master.ref   = "refs/heads/master";
  inputs.src-forestdb-master.repo  = "forestdb";
  inputs.src-forestdb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-forestdb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-forestdb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}