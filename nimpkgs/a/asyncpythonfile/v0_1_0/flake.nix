{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncpythonfile-v0_1_0.flake = false;
  inputs.src-asyncpythonfile-v0_1_0.owner = "fallingduck";
  inputs.src-asyncpythonfile-v0_1_0.ref   = "v0_1_0";
  inputs.src-asyncpythonfile-v0_1_0.repo  = "asyncpythonfile-nim";
  inputs.src-asyncpythonfile-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncpythonfile-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asyncpythonfile-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}