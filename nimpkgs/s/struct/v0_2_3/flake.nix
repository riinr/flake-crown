{
  description = ''Python-like 'struct' for Nim'';
  inputs.src-struct-v0_2_3.flake = false;
  inputs.src-struct-v0_2_3.type = "github";
  inputs.src-struct-v0_2_3.owner = "OpenSystemsLab";
  inputs.src-struct-v0_2_3.repo = "struct.nim";
  inputs.src-struct-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-struct-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-struct-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}