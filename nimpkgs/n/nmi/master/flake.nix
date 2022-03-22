{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nmi-master.flake = false;
  inputs.src-nmi-master.owner = "jiro4989";
  inputs.src-nmi-master.ref   = "master";
  inputs.src-nmi-master.repo  = "nmi";
  inputs.src-nmi-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nmi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nmi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}