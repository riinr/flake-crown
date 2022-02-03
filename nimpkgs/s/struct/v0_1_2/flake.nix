{
  description = ''Python-like 'struct' for Nim'';
  inputs.src-struct-v0_1_2.flake = false;
  inputs.src-struct-v0_1_2.type = "github";
  inputs.src-struct-v0_1_2.owner = "OpenSystemsLab";
  inputs.src-struct-v0_1_2.repo = "struct.nim";
  inputs.src-struct-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-struct-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-struct-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}