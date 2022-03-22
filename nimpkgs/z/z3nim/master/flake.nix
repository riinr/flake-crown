{
  description = ''Z3 binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-z3nim-master.flake = false;
  inputs.src-z3nim-master.ref   = "refs/heads/master";
  inputs.src-z3nim-master.owner = "Double-oxygeN";
  inputs.src-z3nim-master.repo  = "z3nim";
  inputs.src-z3nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-z3nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-z3nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}