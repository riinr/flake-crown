{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';
  inputs.src-nodesnim-nightly-0_3_3b.flake = false;
  inputs.src-nodesnim-nightly-0_3_3b.type = "github";
  inputs.src-nodesnim-nightly-0_3_3b.owner = "Ethosa";
  inputs.src-nodesnim-nightly-0_3_3b.repo = "nodesnim";
  inputs.src-nodesnim-nightly-0_3_3b.ref = "refs/tags/nightly-0.3.3b";
  
  outputs = { self, nixpkgs, src-nodesnim-nightly-0_3_3b, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nodesnim-nightly-0_3_3b;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nodesnim-nightly-0_3_3b"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}