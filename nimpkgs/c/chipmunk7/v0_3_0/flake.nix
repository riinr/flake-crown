{
  description = ''Bindings for Chipmunk, a fast and lightweight 2D game physics library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chipmunk7-v0_3_0.flake = false;
  inputs.src-chipmunk7-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-chipmunk7-v0_3_0.owner = "avahe-kellenberger";
  inputs.src-chipmunk7-v0_3_0.repo  = "nim-chipmunk";
  inputs.src-chipmunk7-v0_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chipmunk7-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chipmunk7-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}