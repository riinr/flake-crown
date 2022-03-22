{
  description = ''A high performance timer based on timerwheel for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timerwheel-v0_1_2.flake = false;
  inputs.src-timerwheel-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-timerwheel-v0_1_2.owner = "xflywind";
  inputs.src-timerwheel-v0_1_2.repo  = "timerwheel";
  inputs.src-timerwheel-v0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timerwheel-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timerwheel-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}