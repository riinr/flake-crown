{
  description = ''Yet another SQLite wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_sqlite3-develop.flake = false;
  inputs.src-easy_sqlite3-develop.owner = "codehz";
  inputs.src-easy_sqlite3-develop.ref   = "develop";
  inputs.src-easy_sqlite3-develop.repo  = "easy_sqlite3";
  inputs.src-easy_sqlite3-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_sqlite3-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easy_sqlite3-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}