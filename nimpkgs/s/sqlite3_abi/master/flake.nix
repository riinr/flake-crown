{
  description = ''A wrapper for SQLite'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sqlite3_abi-master.flake = false;
  inputs.src-sqlite3_abi-master.ref   = "refs/heads/master";
  inputs.src-sqlite3_abi-master.owner = "arnetheduck";
  inputs.src-sqlite3_abi-master.repo  = "nim-sqlite3-abi";
  inputs.src-sqlite3_abi-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sqlite3_abi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sqlite3_abi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}