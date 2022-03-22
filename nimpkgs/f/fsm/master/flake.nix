{
  description = ''A simple finite-state machine for @nim-lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fsm-master.flake = false;
  inputs.src-fsm-master.ref   = "refs/heads/master";
  inputs.src-fsm-master.owner = "ba0f3";
  inputs.src-fsm-master.repo  = "fsm.nim";
  inputs.src-fsm-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fsm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fsm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}