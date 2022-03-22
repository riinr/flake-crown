{
  description = ''A dead simple, no-nonsense parser combinator library written in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-honeycomb-master.flake = false;
  inputs.src-honeycomb-master.owner = "KatrinaKitten";
  inputs.src-honeycomb-master.ref   = "master";
  inputs.src-honeycomb-master.repo  = "honeycomb";
  inputs.src-honeycomb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-honeycomb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-honeycomb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}