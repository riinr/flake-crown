{
  description = ''Provides a small command line parsing DSL (domain specific language)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-commandeer-0_10_2.flake = false;
  inputs.src-commandeer-0_10_2.owner = "fenekku";
  inputs.src-commandeer-0_10_2.ref   = "refs/tags/0.10.2";
  inputs.src-commandeer-0_10_2.repo  = "commandeer";
  inputs.src-commandeer-0_10_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-0_10_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-commandeer-0_10_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}