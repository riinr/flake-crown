{
  description = ''A simple timing library for benchmarking code and other things.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stopwatch-v3_5.flake = false;
  inputs.src-stopwatch-v3_5.ref   = "refs/tags/v3.5";
  inputs.src-stopwatch-v3_5.owner = "define-private-public";
  inputs.src-stopwatch-v3_5.repo  = "stopwatch";
  inputs.src-stopwatch-v3_5.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stopwatch-v3_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stopwatch-v3_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}