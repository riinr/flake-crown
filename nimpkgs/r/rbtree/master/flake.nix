{
  description = ''Red/Black Trees'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rbtree-master.flake = false;
  inputs.src-rbtree-master.owner = "Nycto";
  inputs.src-rbtree-master.ref   = "refs/heads/master";
  inputs.src-rbtree-master.repo  = "RBTreeNim";
  inputs.src-rbtree-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rbtree-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rbtree-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}