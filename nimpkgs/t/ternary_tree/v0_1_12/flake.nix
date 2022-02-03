{
  description = ''Structural sharing data structure of lists and maps.'';
  inputs.src-ternary_tree-v0_1_12.flake = false;
  inputs.src-ternary_tree-v0_1_12.type = "github";
  inputs.src-ternary_tree-v0_1_12.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_12.repo = "ternary-tree";
  inputs.src-ternary_tree-v0_1_12.ref = "refs/tags/v0.1.12";
  
  outputs = { self, nixpkgs, src-ternary_tree-v0_1_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ternary_tree-v0_1_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ternary_tree-v0_1_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}