{
  description = ''String interning library'';
  inputs.src-names-v0_1_0.flake = false;
  inputs.src-names-v0_1_0.type = "github";
  inputs.src-names-v0_1_0.owner = "pragmagic";
  inputs.src-names-v0_1_0.repo = "names";
  inputs.src-names-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-names-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-names-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-names-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}