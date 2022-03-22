{
  description = ''Wrapper for the cMPFIT non-linear least squares fitting library (Levenberg-Marquardt)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpfit-master.flake = false;
  inputs.src-mpfit-master.ref   = "refs/heads/master";
  inputs.src-mpfit-master.owner = "Vindaar";
  inputs.src-mpfit-master.repo  = "nim-mpfit";
  inputs.src-mpfit-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpfit-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mpfit-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}