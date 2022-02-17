{
  description = ''High-level and low-level wrapper for OpenGL'';
  inputs.src-opengl-master.flake = false;
  inputs.src-opengl-master.type = "github";
  inputs.src-opengl-master.owner = "nim-lang";
  inputs.src-opengl-master.repo = "opengl";
  inputs.src-opengl-master.ref = "refs/heads/master";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-opengl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opengl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opengl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}