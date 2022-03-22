{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nodesnim-nightly-0_2_4c.flake = false;
  inputs.src-nodesnim-nightly-0_2_4c.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_2_4c.ref   = "nightly-0_2_4c";
  inputs.src-nodesnim-nightly-0_2_4c.repo  = "nodesnim";
  inputs.src-nodesnim-nightly-0_2_4c.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nodesnim-nightly-0_2_4c"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nodesnim-nightly-0_2_4c";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}