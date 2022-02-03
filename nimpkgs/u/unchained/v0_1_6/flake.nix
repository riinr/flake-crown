{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-v0_1_6.flake = false;
  inputs.src-unchained-v0_1_6.type = "github";
  inputs.src-unchained-v0_1_6.owner = "SciNim";
  inputs.src-unchained-v0_1_6.repo = "unchained";
  inputs.src-unchained-v0_1_6.ref = "refs/tags/v0.1.6";
  
  outputs = { self, nixpkgs, src-unchained-v0_1_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}