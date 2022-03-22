{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chipmunk7-master.flake = false;
  inputs.src-chipmunk7-master.ref   = "refs/heads/master";
  inputs.src-chipmunk7-master.owner = "avahe-kellenberger";
  inputs.src-chipmunk7-master.repo  = "nim-chipmunk";
  inputs.src-chipmunk7-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk7-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chipmunk7-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}