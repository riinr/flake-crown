{
  description = ''A library with some basic functions for working with phylogenetic trees.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-phylogeni-main.flake = false;
  inputs.src-phylogeni-main.owner = "kerrycobb";
  inputs.src-phylogeni-main.ref   = "refs/heads/main";
  inputs.src-phylogeni-main.repo  = "PhylogeNi";
  inputs.src-phylogeni-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-PhylogeNi-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-PhylogeNi-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}