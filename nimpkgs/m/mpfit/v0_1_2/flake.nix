{
  description = ''Wrapper for the cMPFIT non-linear least squares fitting library (Levenberg-Marquardt)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpfit-v0_1_2.flake = false;
  inputs.src-mpfit-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-mpfit-v0_1_2.owner = "Vindaar";
  inputs.src-mpfit-v0_1_2.repo  = "nim-mpfit";
  inputs.src-mpfit-v0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpfit-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mpfit-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}