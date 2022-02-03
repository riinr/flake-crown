{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';
  inputs.src-strslice-v0_2_1.flake = false;
  inputs.src-strslice-v0_2_1.type = "github";
  inputs.src-strslice-v0_2_1.owner = "PMunch";
  inputs.src-strslice-v0_2_1.repo = "strslice";
  inputs.src-strslice-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-strslice-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strslice-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-strslice-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}