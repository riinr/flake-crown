{
  description = ''Provides a small command line parsing DSL (domain specific language)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-commandeer-0_6_0.flake = false;
  inputs.src-commandeer-0_6_0.owner = "fenekku";
  inputs.src-commandeer-0_6_0.ref   = "refs/tags/0.6.0";
  inputs.src-commandeer-0_6_0.repo  = "commandeer";
  inputs.src-commandeer-0_6_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-0_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-commandeer-0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}