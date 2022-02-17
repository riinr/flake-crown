{
  description = ''High-level and low-level wrapper for OpenGL'';
  inputs.src-opengl-v1_2_2.flake = false;
  inputs.src-opengl-v1_2_2.type = "github";
  inputs.src-opengl-v1_2_2.owner = "nim-lang";
  inputs.src-opengl-v1_2_2.repo = "opengl";
  inputs.src-opengl-v1_2_2.ref = "refs/tags/v1.2.2";
  
  
  inputs."x11".type = "github";
  inputs."x11".owner = "riinr";
  inputs."x11".repo = "flake-nimble";
  inputs."x11".ref = "flake-pinning";
  inputs."x11".dir = "nimpkgs/x/x11";

  outputs = { self, nixpkgs, src-opengl-v1_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opengl-v1_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opengl-v1_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}