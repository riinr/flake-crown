{
  description = ''Simple and compact fuzzing'';
  inputs.src-nimfuzz-1_2_0.flake = false;
  inputs.src-nimfuzz-1_2_0.type = "github";
  inputs.src-nimfuzz-1_2_0.owner = "apense";
  inputs.src-nimfuzz-1_2_0.repo = "nimfuzz";
  inputs.src-nimfuzz-1_2_0.ref = "refs/tags/1.2.0";
  
  outputs = { self, nixpkgs, src-nimfuzz-1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzz-1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzz-1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}