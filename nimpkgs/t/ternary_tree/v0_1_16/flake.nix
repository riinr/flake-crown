{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_16.flake = false;
  inputs.src-ternary_tree-v0_1_16.type = "github";
  inputs.src-ternary_tree-v0_1_16.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_16.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_16.ref = "refs/tags/v0.1.16";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}