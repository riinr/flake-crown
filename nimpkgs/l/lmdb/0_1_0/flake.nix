{
  description = ''A wrapper for LMDB the Lightning Memory-Mapped Database'';
  inputs.src-lmdb-0_1_0.flake = false;
  inputs.src-lmdb-0_1_0.type = "github";
  inputs.src-lmdb-0_1_0.owner = "FedericoCeratto";
  inputs.src-lmdb-0_1_0.repo = "nim-lmdb";
  inputs.src-lmdb-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-lmdb-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lmdb-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lmdb-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}