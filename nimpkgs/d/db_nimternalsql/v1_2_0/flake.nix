{
  description = ''An in-memory SQL database library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-db_nimternalsql-v1_2_0.flake = false;
  inputs.src-db_nimternalsql-v1_2_0.ref   = "refs/tags/v1.2.0";
  inputs.src-db_nimternalsql-v1_2_0.owner = "rehartmann";
  inputs.src-db_nimternalsql-v1_2_0.repo  = "nimternalsql";
  inputs.src-db_nimternalsql-v1_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-db_nimternalsql-v1_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-db_nimternalsql-v1_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}