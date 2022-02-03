{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_6.flake = false;
  inputs.src-hts-v0_3_6.type = "github";
  inputs.src-hts-v0_3_6.owner = "brentp";
  inputs.src-hts-v0_3_6.repo = "hts-nim";
  inputs.src-hts-v0_3_6.ref = "refs/tags/v0.3.6";
  
  outputs = { self, nixpkgs, src-hts-v0_3_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}