{
  description = ''Elegant optional types'';
  inputs.src-questionable-0_10_2.flake = false;
  inputs.src-questionable-0_10_2.type = "github";
  inputs.src-questionable-0_10_2.owner = "markspanbroek";
  inputs.src-questionable-0_10_2.repo = "questionable";
  inputs.src-questionable-0_10_2.ref = "refs/tags/0.10.2";
  
  outputs = { self, nixpkgs, src-questionable-0_10_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-questionable-0_10_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-questionable-0_10_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}