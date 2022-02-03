{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
  inputs.src-cbor-v0_4_1.flake = false;
  inputs.src-cbor-v0_4_1.type = "other";
  inputs.src-cbor-v0_4_1.owner = "~ehmry";
  inputs.src-cbor-v0_4_1.repo = "nim_cbor";
  inputs.src-cbor-v0_4_1.ref = "refs/tags/v0.4.1";
  
  outputs = { self, nixpkgs, src-cbor-v0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cbor-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}