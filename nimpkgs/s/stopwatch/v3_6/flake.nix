{
  description = ''A simple timing library for benchmarking code and other things.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stopwatch-v3_6.flake = false;
  inputs.src-stopwatch-v3_6.ref   = "refs/tags/v3.6";
  inputs.src-stopwatch-v3_6.owner = "define-private-public";
  inputs.src-stopwatch-v3_6.repo  = "stopwatch";
  inputs.src-stopwatch-v3_6.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stopwatch-v3_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-stopwatch-v3_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}