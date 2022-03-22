{
  description = ''Genetic Algorithm Library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimga-master.flake = false;
  inputs.src-nimga-master.ref   = "refs/heads/master";
  inputs.src-nimga-master.owner = "toshikiohnogi";
  inputs.src-nimga-master.repo  = "nimga";
  inputs.src-nimga-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimga-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimga-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}