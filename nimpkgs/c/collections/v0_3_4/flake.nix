{
  description = ''Various collections and utilities'';
  inputs.src-collections-v0_3_4.flake = false;
  inputs.src-collections-v0_3_4.type = "github";
  inputs.src-collections-v0_3_4.owner = "zielmicha";
  inputs.src-collections-v0_3_4.repo = "collections.nim";
  inputs.src-collections-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-collections-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-collections-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}