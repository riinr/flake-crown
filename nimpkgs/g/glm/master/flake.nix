{
  description = ''Port of c++ glm library with shader-like syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glm-master.flake = false;
  inputs.src-glm-master.owner = "stavenko";
  inputs.src-glm-master.ref   = "refs/heads/master";
  inputs.src-glm-master.repo  = "nim-glm";
  inputs.src-glm-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}