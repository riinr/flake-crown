{
  description = ''A thin SQLite wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tiny_sqlite-v0_1_2.flake = false;
  inputs.src-tiny_sqlite-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-tiny_sqlite-v0_1_2.owner = "GULPF";
  inputs.src-tiny_sqlite-v0_1_2.repo  = "tiny_sqlite";
  inputs.src-tiny_sqlite-v0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tiny_sqlite-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tiny_sqlite-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}