{
  description = ''Additional functions for sequences that are not present in sequtils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sequtils2-master.flake = false;
  inputs.src-sequtils2-master.owner = "Michedev";
  inputs.src-sequtils2-master.ref   = "refs/heads/master";
  inputs.src-sequtils2-master.repo  = "sequtils2";
  inputs.src-sequtils2-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sequtils2-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sequtils2-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}