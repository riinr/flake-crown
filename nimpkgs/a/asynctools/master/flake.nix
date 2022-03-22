{
  description = ''Various asynchronous tools for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asynctools-master.flake = false;
  inputs.src-asynctools-master.owner = "cheatfate";
  inputs.src-asynctools-master.ref   = "master";
  inputs.src-asynctools-master.repo  = "asynctools";
  inputs.src-asynctools-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asynctools-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asynctools-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}