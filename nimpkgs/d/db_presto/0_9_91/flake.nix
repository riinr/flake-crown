{
  description = ''prestodb simple connector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-db_presto-0_9_91.flake = false;
  inputs.src-db_presto-0_9_91.ref   = "refs/tags/0.9.91";
  inputs.src-db_presto-0_9_91.owner = "Bennyelg";
  inputs.src-db_presto-0_9_91.repo  = "nimPresto";
  inputs.src-db_presto-0_9_91.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-0_9_91"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-db_presto-0_9_91";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}