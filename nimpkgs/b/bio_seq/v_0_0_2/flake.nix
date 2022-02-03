{
  description = ''A Nim library for biological sequence data.'';
  inputs.src-bio_seq-v_0_0_2.flake = false;
  inputs.src-bio_seq-v_0_0_2.type = "github";
  inputs.src-bio_seq-v_0_0_2.owner = "kerrycobb";
  inputs.src-bio_seq-v_0_0_2.repo = "BioSeq";
  inputs.src-bio_seq-v_0_0_2.ref = "refs/tags/v.0.0.2";
  
  outputs = { self, nixpkgs, src-bio_seq-v_0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bio_seq-v_0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bio_seq-v_0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}