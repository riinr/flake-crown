{
  description = ''A high performance timer based on timerwheel for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timerwheel-master.flake = false;
  inputs.src-timerwheel-master.owner = "xflywind";
  inputs.src-timerwheel-master.ref   = "refs/heads/master";
  inputs.src-timerwheel-master.repo  = "timerwheel";
  inputs.src-timerwheel-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timerwheel-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timerwheel-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}