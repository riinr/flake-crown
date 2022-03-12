{
  description = ''Method & assignment cascades for Nim, inspired by Smalltalk & Dart.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cascade-master.flake = false;
  inputs.src-cascade-master.owner = "haltcase";
  inputs.src-cascade-master.ref   = "refs/heads/master";
  inputs.src-cascade-master.repo  = "cascade";
  inputs.src-cascade-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cascade-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cascade-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}