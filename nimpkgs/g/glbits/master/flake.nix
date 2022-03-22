{
  description = ''A light library for OpenGL and SDL2 graphics applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glbits-master.flake = false;
  inputs.src-glbits-master.owner = "rlipsc";
  inputs.src-glbits-master.ref   = "master";
  inputs.src-glbits-master.repo  = "glbits";
  inputs.src-glbits-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glbits-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glbits-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}