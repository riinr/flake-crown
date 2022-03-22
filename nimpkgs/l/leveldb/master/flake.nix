{
  description = ''LevelDB wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-leveldb-master.flake = false;
  inputs.src-leveldb-master.ref   = "refs/heads/master";
  inputs.src-leveldb-master.owner = "zielmicha";
  inputs.src-leveldb-master.repo  = "leveldb.nim";
  inputs.src-leveldb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-leveldb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-leveldb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}