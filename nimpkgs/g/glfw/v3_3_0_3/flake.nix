{
  description = ''A high-level GLFW 3 wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glfw-v3_3_0_3.flake = false;
  inputs.src-glfw-v3_3_0_3.owner = "johnnovak";
  inputs.src-glfw-v3_3_0_3.ref   = "refs/tags/v3.3.0.3";
  inputs.src-glfw-v3_3_0_3.repo  = "nim-glfw";
  inputs.src-glfw-v3_3_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glfw-v3_3_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glfw-v3_3_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}