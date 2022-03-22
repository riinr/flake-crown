{
  description = ''Red/Black Tree'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rbtree-0_4_0.flake = false;
  inputs.src-rbtree-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-rbtree-0_4_0.owner = "Nycto";
  inputs.src-rbtree-0_4_0.repo  = "RBTreeNim";
  inputs.src-rbtree-0_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rbtree-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rbtree-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}