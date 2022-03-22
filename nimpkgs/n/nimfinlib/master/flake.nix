{
  description = ''Financial Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimFinLib-master.flake = false;
  inputs.src-nimFinLib-master.ref   = "refs/heads/master";
  inputs.src-nimFinLib-master.owner = "qqtop";
  inputs.src-nimFinLib-master.repo  = "NimFinLib";
  inputs.src-nimFinLib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimFinLib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimFinLib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}