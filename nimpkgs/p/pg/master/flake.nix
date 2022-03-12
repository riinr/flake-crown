{
  description = ''Very simple PostgreSQL async api for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pg-master.flake = false;
  inputs.src-pg-master.owner = "treeform";
  inputs.src-pg-master.ref   = "refs/heads/master";
  inputs.src-pg-master.repo  = "pg";
  inputs.src-pg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}