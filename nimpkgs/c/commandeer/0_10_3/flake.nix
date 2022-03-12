{
  description = ''Provides a small command line parsing DSL (domain specific language)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-commandeer-0_10_3.flake = false;
  inputs.src-commandeer-0_10_3.owner = "fenekku";
  inputs.src-commandeer-0_10_3.ref   = "refs/tags/0.10.3";
  inputs.src-commandeer-0_10_3.repo  = "commandeer";
  inputs.src-commandeer-0_10_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-0_10_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-commandeer-0_10_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}