{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aglet-0_3_0.flake = false;
  inputs.src-aglet-0_3_0.owner = "liquid600pgm";
  inputs.src-aglet-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-aglet-0_3_0.repo  = "aglet";
  inputs.src-aglet-0_3_0.type  = "github";
  
  inputs."glm".dir   = "nimpkgs/g/glm";
  inputs."glm".owner = "riinr";
  inputs."glm".ref   = "flake-pinning";
  inputs."glm".repo  = "flake-nimble";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/nimgl/glfw".dir   = "nimpkgs/h/https://github.com/nimgl/glfw";
  inputs."https://github.com/nimgl/glfw".owner = "riinr";
  inputs."https://github.com/nimgl/glfw".ref   = "flake-pinning";
  inputs."https://github.com/nimgl/glfw".repo  = "flake-nimble";
  inputs."https://github.com/nimgl/glfw".type  = "github";
  inputs."https://github.com/nimgl/glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/nimgl/glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aglet-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}