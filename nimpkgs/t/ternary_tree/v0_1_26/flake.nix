{
  description = ''Structural sharing data structure of lists and maps.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ternary_tree-v0_1_26.flake = false;
  inputs.src-ternary_tree-v0_1_26.owner = "calcit-lang";
  inputs.src-ternary_tree-v0_1_26.ref   = "refs/tags/v0.1.26";
  inputs.src-ternary_tree-v0_1_26.repo  = "ternary-tree";
  inputs.src-ternary_tree-v0_1_26.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ternary_tree-v0_1_26"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ternary_tree-v0_1_26";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}