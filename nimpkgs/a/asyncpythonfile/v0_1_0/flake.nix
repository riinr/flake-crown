{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncpythonfile-v0_1_0.flake = false;
  inputs.src-asyncpythonfile-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-asyncpythonfile-v0_1_0.owner = "fallingduck";
  inputs.src-asyncpythonfile-v0_1_0.repo  = "asyncpythonfile-nim";
  inputs.src-asyncpythonfile-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncpythonfile-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-asyncpythonfile-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}