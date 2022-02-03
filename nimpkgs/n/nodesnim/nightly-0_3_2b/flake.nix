{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_2b.flake = false;
  inputs.src-nodesnim-nightly-0_3_2b.type = "github";
  inputs.src-nodesnim-nightly-0_3_2b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_2b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_2b.ref = "refs/tags/nightly-0.3.2b";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_2b, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_2b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_2b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}