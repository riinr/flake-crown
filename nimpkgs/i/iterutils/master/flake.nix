{
  description = ''Functional operations for iterators and slices, similar to sequtils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-iterutils-master.flake = false;
  inputs.src-iterutils-master.owner = "def-";
  inputs.src-iterutils-master.ref   = "refs/heads/master";
  inputs.src-iterutils-master.repo  = "iterutils";
  inputs.src-iterutils-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-iterutils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-iterutils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}