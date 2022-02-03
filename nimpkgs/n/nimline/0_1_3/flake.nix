{
  description = ''Wrapper-less C/C++ interop for Nim'';
  inputs.src-nimline-0_1_3.flake = false;
  inputs.src-nimline-0_1_3.type = "github";
  inputs.src-nimline-0_1_3.owner = "fragcolor-xyz";
  inputs.src-nimline-0_1_3.repo = "nimline";
  inputs.src-nimline-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-nimline-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimline-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimline-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}