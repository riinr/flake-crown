{
  description = ''Unroll for-loops at compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unrolled-master.flake = false;
  inputs.src-unrolled-master.owner = "schneiderfelipe";
  inputs.src-unrolled-master.ref   = "refs/heads/master";
  inputs.src-unrolled-master.repo  = "unrolled";
  inputs.src-unrolled-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unrolled-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unrolled-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}