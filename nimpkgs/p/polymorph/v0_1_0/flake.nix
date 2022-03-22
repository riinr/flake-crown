{
  description = ''Compile-time composable entity component system generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Polymorph-v0_1_0.flake = false;
  inputs.src-Polymorph-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-Polymorph-v0_1_0.owner = "rlipsc";
  inputs.src-Polymorph-v0_1_0.repo  = "polymorph";
  inputs.src-Polymorph-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Polymorph-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Polymorph-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}