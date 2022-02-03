{
  description = ''Red/Black Trees'';
  inputs.src-rbtree-0_4_0.flake = false;
  inputs.src-rbtree-0_4_0.type = "github";
  inputs.src-rbtree-0_4_0.owner = "Nycto";
  inputs.src-rbtree-0_4_0.repo = "RBTreeNim";
  inputs.src-rbtree-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, src-rbtree-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rbtree-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rbtree-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}