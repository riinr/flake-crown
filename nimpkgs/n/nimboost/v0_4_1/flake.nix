{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_4_1.flake = false;
  inputs.src-nimboost-v0_4_1.type = "github";
  inputs.src-nimboost-v0_4_1.owner = "vegansk";
  inputs.src-nimboost-v0_4_1.repo = "nimboost";
  inputs.src-nimboost-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, src-nimboost-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}