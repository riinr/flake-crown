{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.flake = false;
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.ref   = "refs/tags/01.09.21_1.24_0.0.6";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.owner = "Ethosa";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.repo  = "nodesnim";
  inputs.src-nodesnim-01_09_21_1_24_0_0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-01_09_21_1_24_0_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nodesnim-01_09_21_1_24_0_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}