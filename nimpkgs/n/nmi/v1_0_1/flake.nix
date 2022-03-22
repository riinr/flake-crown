{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nmi-v1_0_1.flake = false;
  inputs.src-nmi-v1_0_1.owner = "jiro4989";
  inputs.src-nmi-v1_0_1.ref   = "v1_0_1";
  inputs.src-nmi-v1_0_1.repo  = "nmi";
  inputs.src-nmi-v1_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nmi-v1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nmi-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}