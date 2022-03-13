{
  description = ''Static GLFW for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-staticglfw-4_1_1.flake = false;
  inputs.src-staticglfw-4_1_1.owner = "treeform";
  inputs.src-staticglfw-4_1_1.ref   = "refs/tags/4.1.1";
  inputs.src-staticglfw-4_1_1.repo  = "staticglfw";
  inputs.src-staticglfw-4_1_1.type  = "github";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-staticglfw-4_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-staticglfw-4_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}