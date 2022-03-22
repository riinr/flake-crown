{
  description = ''Cassandra driver bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cassandra-master.flake = false;
  inputs.src-cassandra-master.ref   = "refs/heads/master";
  inputs.src-cassandra-master.owner = "yglukhov";
  inputs.src-cassandra-master.repo  = "cassandra";
  inputs.src-cassandra-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cassandra-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cassandra-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}