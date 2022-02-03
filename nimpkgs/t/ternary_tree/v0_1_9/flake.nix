{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_9.flake = false;
  inputs.src-ternary_tree-v0_1_9.type = "github";
  inputs.src-ternary_tree-v0_1_9.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_9.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_9.ref = "refs/tags/v0.1.9";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}