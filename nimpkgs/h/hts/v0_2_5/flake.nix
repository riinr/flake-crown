{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_5.flake = false;
  inputs.src-hts-v0_2_5.type = "github";
  inputs.src-hts-v0_2_5.owner = "brentp";
  inputs.src-hts-v0_2_5.repo = "hts-nim";
  inputs.src-hts-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-hts-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}