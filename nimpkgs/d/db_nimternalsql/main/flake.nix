{
  description = ''An in-memory SQL database library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-db_nimternalsql-main.flake = false;
  inputs.src-db_nimternalsql-main.owner = "rehartmann";
  inputs.src-db_nimternalsql-main.ref   = "refs/heads/main";
  inputs.src-db_nimternalsql-main.repo  = "nimternalsql";
  inputs.src-db_nimternalsql-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-db_nimternalsql-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-db_nimternalsql-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}