{
  description = ''Dependency-free and performant Nim Snappy implementation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-supersnappy-2_0_0.flake = false;
  inputs.src-supersnappy-2_0_0.owner = "guzba";
  inputs.src-supersnappy-2_0_0.ref   = "refs/tags/2.0.0";
  inputs.src-supersnappy-2_0_0.repo  = "supersnappy";
  inputs.src-supersnappy-2_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-2_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-supersnappy-2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}