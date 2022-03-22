{
  description = ''Nim bindings for GLFW library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimrod-glfw-master.flake = false;
  inputs.src-nimrod-glfw-master.ref   = "refs/heads/master";
  inputs.src-nimrod-glfw-master.owner = "rafaelvasco";
  inputs.src-nimrod-glfw-master.repo  = "nimrod-glfw";
  inputs.src-nimrod-glfw-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimrod-glfw-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimrod-glfw-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}