{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-v0_0_3.flake = false;
  inputs.src-bio_seq-v0_0_3.type = "github";
  inputs.src-bio_seq-v0_0_3.owner = "kerrycobb";
  inputs.src-bio_seq-v0_0_3.repo = "BioSeq";
  inputs.src-bio_seq-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-bio_seq-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}