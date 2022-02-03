{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_10.flake = false;
  inputs.src-variant-v0_2_10.type = "github";
  inputs.src-variant-v0_2_10.owner = "yglukhov";
  inputs.src-variant-v0_2_10.repo = "variant";
  inputs.src-variant-v0_2_10.ref = "refs/tags/v0.2.10";
  
  outputs = { self, nixpkgs, src-variant-v0_2_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}