{
  description = ''Python-like 'struct' for Nim'';
  inputs.src-struct-v0_1_1.flake = false;
  inputs.src-struct-v0_1_1.type = "github";
  inputs.src-struct-v0_1_1.owner = "OpenSystemsLab";
  inputs.src-struct-v0_1_1.repo = "struct.nim";
  inputs.src-struct-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-struct-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-struct-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}