{
  description = ''Yet another SQLite wrapper for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_sqlite3-v0_1_4.flake = false;
  inputs.src-easy_sqlite3-v0_1_4.owner = "codehz";
  inputs.src-easy_sqlite3-v0_1_4.ref   = "refs/tags/v0.1.4";
  inputs.src-easy_sqlite3-v0_1_4.repo  = "easy_sqlite3";
  inputs.src-easy_sqlite3-v0_1_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_sqlite3-v0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easy_sqlite3-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}