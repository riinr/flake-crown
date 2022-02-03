{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_2_0.flake = false;
  inputs.src-nimboost-v0_2_0.type = "github";
  inputs.src-nimboost-v0_2_0.owner = "vegansk";
  inputs.src-nimboost-v0_2_0.repo = "nimboost";
  inputs.src-nimboost-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-nimboost-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}