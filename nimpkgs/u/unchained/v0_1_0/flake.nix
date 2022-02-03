{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-v0_1_0.flake = false;
  inputs.src-unchained-v0_1_0.type = "github";
  inputs.src-unchained-v0_1_0.owner = "SciNim";
  inputs.src-unchained-v0_1_0.repo = "unchained";
  inputs.src-unchained-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-unchained-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}