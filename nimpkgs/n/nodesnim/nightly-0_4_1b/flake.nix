{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_4_1b.flake = false;
  inputs.src-nodesnim-nightly-0_4_1b.type = "github";
  inputs.src-nodesnim-nightly-0_4_1b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_4_1b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_4_1b.ref = "refs/tags/nightly-0.4.1b";
  
  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-nodesnim-nightly-0_4_1b, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_4_1b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_4_1b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}