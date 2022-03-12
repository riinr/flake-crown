{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aglet-0_4_1.flake = false;
  inputs.src-aglet-0_4_1.owner = "liquid600pgm";
  inputs.src-aglet-0_4_1.ref   = "refs/tags/0.4.1";
  inputs.src-aglet-0_4_1.repo  = "aglet";
  inputs.src-aglet-0_4_1.type  = "github";
  
  inputs."glm".owner = "nim-nix-pkgs";
  inputs."glm".ref   = "master";
  inputs."glm".repo  = "glm";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/nimgl/glfw".owner = "nim-nix-pkgs";
  inputs."https://github.com/nimgl/glfw".ref   = "master";
  inputs."https://github.com/nimgl/glfw".repo  = "https://github.com/nimgl/glfw";
  inputs."https://github.com/nimgl/glfw".type  = "github";
  inputs."https://github.com/nimgl/glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/nimgl/glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aglet-0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}