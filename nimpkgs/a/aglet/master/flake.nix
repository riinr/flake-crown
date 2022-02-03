{
  description = ''A safe, high-level, optimized OpenGL wrapper'';
  inputs.src-aglet-master.flake = false;
  inputs.src-aglet-master.type = "github";
  inputs.src-aglet-master.owner = "liquid600pgm";
  inputs.src-aglet-master.repo = "aglet";
  inputs.src-aglet-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/liquid600pgm/nim-glm".url = "path:../../../h/https://github.com/liquid600pgm/nim-glm";
  inputs."https://github.com/liquid600pgm/nim-glm".type = "github";
  inputs."https://github.com/liquid600pgm/nim-glm".owner = "riinr";
  inputs."https://github.com/liquid600pgm/nim-glm".repo = "flake-nimble";
  inputs."https://github.com/liquid600pgm/nim-glm".ref = "flake-pinning";
  inputs."https://github.com/liquid600pgm/nim-glm".dir = "nimpkgs/h/https://github.com/liquid600pgm/nim-glm";

  
  inputs."https://github.com/nimgl/glfw".url = "path:../../../h/https://github.com/nimgl/glfw";
  inputs."https://github.com/nimgl/glfw".type = "github";
  inputs."https://github.com/nimgl/glfw".owner = "riinr";
  inputs."https://github.com/nimgl/glfw".repo = "flake-nimble";
  inputs."https://github.com/nimgl/glfw".ref = "flake-pinning";
  inputs."https://github.com/nimgl/glfw".dir = "nimpkgs/h/https://github.com/nimgl/glfw";

  outputs = { self, nixpkgs, src-aglet-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aglet-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aglet-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}