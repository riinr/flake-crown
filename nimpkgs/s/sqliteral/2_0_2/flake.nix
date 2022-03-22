{
  description = ''A high level SQLite API for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sqliteral-2_0_2.flake = false;
  inputs.src-sqliteral-2_0_2.ref   = "refs/tags/2.0.2";
  inputs.src-sqliteral-2_0_2.owner = "olliNiinivaara";
  inputs.src-sqliteral-2_0_2.repo  = "SQLiteral";
  inputs.src-sqliteral-2_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sqliteral-2_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sqliteral-2_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}