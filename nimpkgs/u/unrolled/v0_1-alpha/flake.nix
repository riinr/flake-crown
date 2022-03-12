{
  description = ''Unroll for-loops at compile-time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unrolled-v0_1-alpha.flake = false;
  inputs.src-unrolled-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-unrolled-v0_1-alpha.ref   = "refs/tags/v0.1-alpha";
  inputs.src-unrolled-v0_1-alpha.repo  = "unrolled";
  inputs.src-unrolled-v0_1-alpha.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unrolled-v0_1-alpha"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unrolled-v0_1-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}