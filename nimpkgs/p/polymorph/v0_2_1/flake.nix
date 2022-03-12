{
  description = ''An entity-component-system with a focus on compile time optimisation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Polymorph-v0_2_1.flake = false;
  inputs.src-Polymorph-v0_2_1.owner = "rlipsc";
  inputs.src-Polymorph-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-Polymorph-v0_2_1.repo  = "polymorph";
  inputs.src-Polymorph-v0_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polymorph-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-polymorph-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}