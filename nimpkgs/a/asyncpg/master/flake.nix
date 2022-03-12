{
  description = ''Asynchronous PostgreSQL driver for Nim Language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncpg-master.flake = false;
  inputs.src-asyncpg-master.owner = "cheatfate";
  inputs.src-asyncpg-master.ref   = "refs/heads/master";
  inputs.src-asyncpg-master.repo  = "asyncpg";
  inputs.src-asyncpg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncpg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asyncpg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}