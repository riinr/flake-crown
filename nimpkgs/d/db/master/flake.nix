{
  description = ''Unified database access to Sqlite, MySql, and Postgres'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-db-master.flake = false;
  inputs.src-db-master.ref   = "refs/heads/master";
  inputs.src-db-master.owner = "jlp765";
  inputs.src-db-master.repo  = "db";
  inputs.src-db-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-db-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-db-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}