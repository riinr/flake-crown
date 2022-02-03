{
  description = ''Simple and compact fuzzing'';
  inputs.src-nimfuzz-master.flake = false;
  inputs.src-nimfuzz-master.type = "github";
  inputs.src-nimfuzz-master.owner = "apense";
  inputs.src-nimfuzz-master.repo = "nimfuzz";
  inputs.src-nimfuzz-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimfuzz-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfuzz-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfuzz-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}