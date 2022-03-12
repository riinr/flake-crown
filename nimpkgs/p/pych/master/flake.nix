{
  description = ''A tool that watches Python files and re-runs them on change.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pych-master.flake = false;
  inputs.src-pych-master.owner = "rburmorrison";
  inputs.src-pych-master.ref   = "refs/heads/master";
  inputs.src-pych-master.repo  = "pych";
  inputs.src-pych-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pych-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pych-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}