{
  description = ''prestodb simple connector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-db_presto-master.flake = false;
  inputs.src-db_presto-master.owner = "Bennyelg";
  inputs.src-db_presto-master.ref   = "refs/heads/master";
  inputs.src-db_presto-master.repo  = "nimPresto";
  inputs.src-db_presto-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-db_presto-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}