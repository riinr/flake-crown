{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aglet-master.flake = false;
  inputs.src-aglet-master.owner = "liquid600pgm";
  inputs.src-aglet-master.ref   = "refs/heads/master";
  inputs.src-aglet-master.repo  = "aglet";
  inputs.src-aglet-master.type  = "github";
  
  inputs."https://github.com/liquid600pgm/nim-glm".dir   = "nimpkgs/h/https://github.com/liquid600pgm/nim-glm";
  inputs."https://github.com/liquid600pgm/nim-glm".owner = "riinr";
  inputs."https://github.com/liquid600pgm/nim-glm".ref   = "flake-pinning";
  inputs."https://github.com/liquid600pgm/nim-glm".repo  = "flake-nimble";
  inputs."https://github.com/liquid600pgm/nim-glm".type  = "github";
  inputs."https://github.com/liquid600pgm/nim-glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/liquid600pgm/nim-glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aglet-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}