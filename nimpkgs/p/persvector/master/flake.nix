{
  description = ''This is an implementation of Clojures persistent vectors in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-persvector-master.flake = false;
  inputs.src-persvector-master.owner = "PMunch";
  inputs.src-persvector-master.ref   = "refs/heads/master";
  inputs.src-persvector-master.repo  = "nim-persistent-vector";
  inputs.src-persvector-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-persvector-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-persvector-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}