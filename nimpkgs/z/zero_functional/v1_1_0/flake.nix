{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zero_functional-v1_1_0.flake = false;
  inputs.src-zero_functional-v1_1_0.owner = "zero-functional";
  inputs.src-zero_functional-v1_1_0.ref   = "refs/tags/v1.1.0";
  inputs.src-zero_functional-v1_1_0.repo  = "zero-functional";
  inputs.src-zero_functional-v1_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zero_functional-v1_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zero_functional-v1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}