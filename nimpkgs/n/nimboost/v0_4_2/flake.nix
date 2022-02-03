{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_4_2.flake = false;
  inputs.src-nimboost-v0_4_2.type = "github";
  inputs.src-nimboost-v0_4_2.owner = "vegansk";
  inputs.src-nimboost-v0_4_2.repo = "nimboost";
  inputs.src-nimboost-v0_4_2.ref = "refs/tags/v0.4.2";
  
  outputs = { self, nixpkgs, src-nimboost-v0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}