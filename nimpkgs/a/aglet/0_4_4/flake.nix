{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aglet-0_4_4.flake = false;
  inputs.src-aglet-0_4_4.owner = "liquid600pgm";
  inputs.src-aglet-0_4_4.ref   = "refs/tags/0.4.4";
  inputs.src-aglet-0_4_4.repo  = "aglet";
  inputs.src-aglet-0_4_4.type  = "github";
  
  inputs."https://github.com/liquid600pgm/nim-glm".owner = "nim-nix-pkgs";
  inputs."https://github.com/liquid600pgm/nim-glm".ref   = "master";
  inputs."https://github.com/liquid600pgm/nim-glm".repo  = "https://github.com/liquid600pgm/nim-glm";
  inputs."https://github.com/liquid600pgm/nim-glm".type  = "github";
  inputs."https://github.com/liquid600pgm/nim-glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/liquid600pgm/nim-glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/nimgl/glfw".owner = "nim-nix-pkgs";
  inputs."https://github.com/nimgl/glfw".ref   = "master";
  inputs."https://github.com/nimgl/glfw".repo  = "https://github.com/nimgl/glfw";
  inputs."https://github.com/nimgl/glfw".type  = "github";
  inputs."https://github.com/nimgl/glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/nimgl/glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-0_4_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aglet-0_4_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}