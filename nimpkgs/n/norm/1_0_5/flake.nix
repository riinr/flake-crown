{
  description = ''ORM that doesn't try to outsmart you.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-1_0_5.flake = false;
  inputs.src-norm-1_0_5.owner = "moigagoo";
  inputs.src-norm-1_0_5.ref   = "1_0_5";
  inputs.src-norm-1_0_5.repo  = "norm";
  inputs.src-norm-1_0_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norm-1_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}