{
  description = ''A thin SQLite wrapper with proper type safety'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tiny_sqlite-master.flake = false;
  inputs.src-tiny_sqlite-master.owner = "GULPF";
  inputs.src-tiny_sqlite-master.ref   = "refs/heads/master";
  inputs.src-tiny_sqlite-master.repo  = "tiny_sqlite";
  inputs.src-tiny_sqlite-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tiny_sqlite-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tiny_sqlite-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}