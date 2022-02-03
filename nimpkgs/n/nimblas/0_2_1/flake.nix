{
  description = ''BLAS for Nim'';
  inputs.src-nimblas-0_2_1.flake = false;
  inputs.src-nimblas-0_2_1.type = "github";
  inputs.src-nimblas-0_2_1.owner = "andreaferretti";
  inputs.src-nimblas-0_2_1.repo = "nimblas";
  inputs.src-nimblas-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-nimblas-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblas-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimblas-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}