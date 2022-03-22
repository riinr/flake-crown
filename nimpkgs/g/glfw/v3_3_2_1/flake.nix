{
  description = ''GLFW 3 wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glfw-v3_3_2_1.flake = false;
  inputs.src-glfw-v3_3_2_1.ref   = "refs/tags/v3.3.2.1";
  inputs.src-glfw-v3_3_2_1.owner = "johnnovak";
  inputs.src-glfw-v3_3_2_1.repo  = "nim-glfw";
  inputs.src-glfw-v3_3_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glfw-v3_3_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glfw-v3_3_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}