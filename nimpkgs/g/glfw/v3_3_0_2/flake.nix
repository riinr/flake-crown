{
  description = ''GLFW 3 wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glfw-v3_3_0_2.flake = false;
  inputs.src-glfw-v3_3_0_2.owner = "johnnovak";
  inputs.src-glfw-v3_3_0_2.ref   = "v3_3_0_2";
  inputs.src-glfw-v3_3_0_2.repo  = "nim-glfw";
  inputs.src-glfw-v3_3_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glfw-v3_3_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-glfw-v3_3_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}