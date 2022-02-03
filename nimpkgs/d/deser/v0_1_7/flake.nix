{
  description = ''De/serialization library for Nim '';
  inputs.src-deser-v0_1_7.flake = false;
  inputs.src-deser-v0_1_7.type = "github";
  inputs.src-deser-v0_1_7.owner = "gabbhack";
  inputs.src-deser-v0_1_7.repo = "deser";
  inputs.src-deser-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-deser-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-deser-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}