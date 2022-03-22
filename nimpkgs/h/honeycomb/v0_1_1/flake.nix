{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-honeycomb-v0_1_1.flake = false;
  inputs.src-honeycomb-v0_1_1.owner = "KatrinaKitten";
  inputs.src-honeycomb-v0_1_1.ref   = "v0_1_1";
  inputs.src-honeycomb-v0_1_1.repo  = "honeycomb";
  inputs.src-honeycomb-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-honeycomb-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-honeycomb-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}