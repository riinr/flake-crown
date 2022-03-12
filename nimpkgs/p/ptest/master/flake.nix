{
  description = ''Print-testing for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ptest-master.flake = false;
  inputs.src-ptest-master.owner = "treeform";
  inputs.src-ptest-master.ref   = "refs/heads/master";
  inputs.src-ptest-master.repo  = "ptest";
  inputs.src-ptest-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ptest-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ptest-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}