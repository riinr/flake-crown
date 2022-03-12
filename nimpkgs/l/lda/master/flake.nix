{
  description = ''Latent Dirichlet Allocation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lda-master.flake = false;
  inputs.src-lda-master.owner = "andreaferretti";
  inputs.src-lda-master.ref   = "refs/heads/master";
  inputs.src-lda-master.repo  = "lda";
  inputs.src-lda-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lda-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lda-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}