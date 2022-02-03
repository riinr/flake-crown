{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
  inputs.src-stalinsort-v0_2_2.flake = false;
  inputs.src-stalinsort-v0_2_2.type = "github";
  inputs.src-stalinsort-v0_2_2.owner = "tonogram";
  inputs.src-stalinsort-v0_2_2.repo = "stalinsort";
  inputs.src-stalinsort-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-stalinsort-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stalinsort-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}