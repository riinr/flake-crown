{
  description = ''Static GLFW for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-staticglfw-4_1_3.flake = false;
  inputs.src-staticglfw-4_1_3.owner = "treeform";
  inputs.src-staticglfw-4_1_3.ref   = "refs/tags/4.1.3";
  inputs.src-staticglfw-4_1_3.repo  = "staticglfw";
  inputs.src-staticglfw-4_1_3.type  = "github";
  
  inputs."opengl".dir   = "nimpkgs/o/opengl";
  inputs."opengl".owner = "riinr";
  inputs."opengl".ref   = "flake-pinning";
  inputs."opengl".repo  = "flake-nimble";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-staticglfw-4_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-staticglfw-4_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}