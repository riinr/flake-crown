{
  description = ''High level, asynchronous file API mimicking Python's file interface.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncpythonfile-master".url = "path:./master";
  inputs."asyncpythonfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncpythonfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncpythonfile-v0_1_0".url = "path:./v0_1_0";
  inputs."asyncpythonfile-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncpythonfile-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}