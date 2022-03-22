{
  description = ''Yet another SQLite wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_sqlite3-v0_1_0.flake = false;
  inputs.src-easy_sqlite3-v0_1_0.owner = "codehz";
  inputs.src-easy_sqlite3-v0_1_0.ref   = "v0_1_0";
  inputs.src-easy_sqlite3-v0_1_0.repo  = "easy_sqlite3";
  inputs.src-easy_sqlite3-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_sqlite3-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-easy_sqlite3-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}