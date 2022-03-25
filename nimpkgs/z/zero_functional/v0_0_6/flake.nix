{
  description = ''a library providing zero-cost for chaining functional abstractions in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zero_functional-v0_0_6.flake = false;
  inputs.src-zero_functional-v0_0_6.ref   = "refs/tags/v0.0.6";
  inputs.src-zero_functional-v0_0_6.owner = "zero-functional";
  inputs.src-zero_functional-v0_0_6.repo  = "zero-functional";
  inputs.src-zero_functional-v0_0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zero_functional-v0_0_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zero_functional-v0_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}