{
  description = ''This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zhsh-v0_2_0.flake = false;
  inputs.src-zhsh-v0_2_0.owner = "PMunch";
  inputs.src-zhsh-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-zhsh-v0_2_0.repo  = "zhangshasha";
  inputs.src-zhsh-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zhsh-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zhsh-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}