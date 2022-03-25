{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncpythonfile-master.flake = false;
  inputs.src-asyncpythonfile-master.ref   = "refs/heads/master";
  inputs.src-asyncpythonfile-master.owner = "fallingduck";
  inputs.src-asyncpythonfile-master.repo  = "asyncpythonfile-nim";
  inputs.src-asyncpythonfile-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncpythonfile-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-asyncpythonfile-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}