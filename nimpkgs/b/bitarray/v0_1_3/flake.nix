{
  description = ''mmap-backed bitarray implementation in Nim.'';
  inputs.src-bitarray-v0_1_3.flake = false;
  inputs.src-bitarray-v0_1_3.type = "github";
  inputs.src-bitarray-v0_1_3.owner = "onecodex";
  inputs.src-bitarray-v0_1_3.repo = "nim-bitarray";
  inputs.src-bitarray-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-bitarray-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitarray-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bitarray-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}