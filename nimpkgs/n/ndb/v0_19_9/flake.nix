{
  description = ''A db_sqlite fork with a proper typing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ndb-v0_19_9.flake = false;
  inputs.src-ndb-v0_19_9.ref   = "refs/tags/v0.19.9";
  inputs.src-ndb-v0_19_9.owner = "xzfc";
  inputs.src-ndb-v0_19_9.repo  = "ndb.nim";
  inputs.src-ndb-v0_19_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ndb-v0_19_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ndb-v0_19_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}