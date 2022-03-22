{
  description = ''Nim Z3 theorem prover bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-z3-master.flake = false;
  inputs.src-z3-master.ref   = "refs/heads/master";
  inputs.src-z3-master.owner = "zevv";
  inputs.src-z3-master.repo  = "nimz3";
  inputs.src-z3-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-z3-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-z3-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}