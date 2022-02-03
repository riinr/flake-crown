{
  description = ''Variant type and type matching'';
  inputs.src-variant-v0_2_4.flake = false;
  inputs.src-variant-v0_2_4.type = "github";
  inputs.src-variant-v0_2_4.owner = "yglukhov";
  inputs.src-variant-v0_2_4.repo = "variant";
  inputs.src-variant-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, src-variant-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variant-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}