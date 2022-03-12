{
  description = ''Red/Black Trees'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rbtree-0_1_0.flake = false;
  inputs.src-rbtree-0_1_0.owner = "Nycto";
  inputs.src-rbtree-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-rbtree-0_1_0.repo  = "RBTreeNim";
  inputs.src-rbtree-0_1_0.type  = "github";
  
  inputs."optional_t".dir   = "nimpkgs/o/optional_t";
  inputs."optional_t".owner = "riinr";
  inputs."optional_t".ref   = "flake-pinning";
  inputs."optional_t".repo  = "flake-nimble";
  inputs."optional_t".type  = "github";
  inputs."optional_t".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rbtree-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rbtree-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}