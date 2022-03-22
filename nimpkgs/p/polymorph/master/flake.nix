{
  description = ''A compile time focused entity-component-system generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-polymorph-master.flake = false;
  inputs.src-polymorph-master.ref   = "refs/heads/master";
  inputs.src-polymorph-master.owner = "rlipsc";
  inputs.src-polymorph-master.repo  = "polymorph";
  inputs.src-polymorph-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polymorph-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-polymorph-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}