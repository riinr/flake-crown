{
  description = ''Provides a small command line parsing DSL (domain specific language)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-commandeer-master.flake = false;
  inputs.src-commandeer-master.owner = "fenekku";
  inputs.src-commandeer-master.ref   = "refs/heads/master";
  inputs.src-commandeer-master.repo  = "commandeer";
  inputs.src-commandeer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-commandeer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-commandeer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}