{
  description = ''libcmark wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cmark-master.flake = false;
  inputs.src-cmark-master.ref   = "refs/heads/master";
  inputs.src-cmark-master.owner = "zengxs";
  inputs.src-cmark-master.repo  = "nim-cmark";
  inputs.src-cmark-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cmark-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cmark-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}