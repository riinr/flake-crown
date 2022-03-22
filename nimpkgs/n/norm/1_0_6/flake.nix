{
  description = ''ORM that doesn't try to outsmart you.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-1_0_6.flake = false;
  inputs.src-norm-1_0_6.owner = "moigagoo";
  inputs.src-norm-1_0_6.ref   = "1_0_6";
  inputs.src-norm-1_0_6.repo  = "norm";
  inputs.src-norm-1_0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-1_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norm-1_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}