{
  description = ''Static GLFW for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-staticglfw-v3_3_0_1.flake = false;
  inputs.src-staticglfw-v3_3_0_1.owner = "treeform";
  inputs.src-staticglfw-v3_3_0_1.ref   = "refs/tags/v3.3.0.1";
  inputs.src-staticglfw-v3_3_0_1.repo  = "staticglfw";
  inputs.src-staticglfw-v3_3_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-staticglfw-v3_3_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-staticglfw-v3_3_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}