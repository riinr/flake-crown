{
  description = ''Dependency-free and performant Nim Snappy implementation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-supersnappy-1_1_3.flake = false;
  inputs.src-supersnappy-1_1_3.owner = "guzba";
  inputs.src-supersnappy-1_1_3.ref   = "refs/tags/1.1.3";
  inputs.src-supersnappy-1_1_3.repo  = "supersnappy";
  inputs.src-supersnappy-1_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-supersnappy-1_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-supersnappy-1_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}