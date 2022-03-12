{
  description = ''A high level SQLite API for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sqliteral-master.flake = false;
  inputs.src-sqliteral-master.owner = "olliNiinivaara";
  inputs.src-sqliteral-master.ref   = "refs/heads/master";
  inputs.src-sqliteral-master.repo  = "SQLiteral";
  inputs.src-sqliteral-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sqliteral-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sqliteral-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}