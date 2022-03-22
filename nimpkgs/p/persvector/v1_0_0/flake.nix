{
  description = ''Implementation of Clojures persistent vector in Nim for easy immutable lists.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-persvector-v1_0_0.flake = false;
  inputs.src-persvector-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-persvector-v1_0_0.owner = "PMunch";
  inputs.src-persvector-v1_0_0.repo  = "nim-persistent-vector";
  inputs.src-persvector-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-persvector-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-persvector-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}