{
  description = ''Yet another SQLite wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-easy_sqlite3-v0_1_1.flake = false;
  inputs.src-easy_sqlite3-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-easy_sqlite3-v0_1_1.owner = "codehz";
  inputs.src-easy_sqlite3-v0_1_1.repo  = "easy_sqlite3";
  inputs.src-easy_sqlite3-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-easy_sqlite3-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-easy_sqlite3-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}