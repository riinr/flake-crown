{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';
  inputs.src-noisy-0_3_0.flake = false;
  inputs.src-noisy-0_3_0.type = "github";
  inputs.src-noisy-0_3_0.owner = "guzba";
  inputs.src-noisy-0_3_0.repo = "noisy";
  inputs.src-noisy-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-noisy-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noisy-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noisy-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}