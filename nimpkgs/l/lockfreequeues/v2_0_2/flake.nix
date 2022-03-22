{
  description = ''Lock-free queue implementations for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lockfreequeues-v2_0_2.flake = false;
  inputs.src-lockfreequeues-v2_0_2.ref   = "refs/tags/v2.0.2";
  inputs.src-lockfreequeues-v2_0_2.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_2.repo  = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lockfreequeues-v2_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lockfreequeues-v2_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}