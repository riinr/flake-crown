{
  description = ''Word2vec implemented in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-word2vec-master.flake = false;
  inputs.src-word2vec-master.owner = "treeform";
  inputs.src-word2vec-master.ref   = "refs/heads/master";
  inputs.src-word2vec-master.repo  = "word2vec";
  inputs.src-word2vec-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-word2vec-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-word2vec-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}