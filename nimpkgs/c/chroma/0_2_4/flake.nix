{
  description = ''Everything you want to do with colors.'';
  inputs.src-chroma-0_2_4.flake = false;
  inputs.src-chroma-0_2_4.type = "github";
  inputs.src-chroma-0_2_4.owner = "treeform";
  inputs.src-chroma-0_2_4.repo = "chroma";
  inputs.src-chroma-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, src-chroma-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chroma-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}