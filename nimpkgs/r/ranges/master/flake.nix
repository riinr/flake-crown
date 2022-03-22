{
  description = ''Exploration of various implementations of memory range types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ranges-master.flake = false;
  inputs.src-ranges-master.owner = "status-im";
  inputs.src-ranges-master.ref   = "master";
  inputs.src-ranges-master.repo  = "nim-ranges";
  inputs.src-ranges-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ranges-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ranges-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}