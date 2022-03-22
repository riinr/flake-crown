{
  description = ''Wrapper for librsvg, a Scalable Vector Graphics (SVG) rendering library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rsvg-master.flake = false;
  inputs.src-rsvg-master.owner = "def-";
  inputs.src-rsvg-master.ref   = "master";
  inputs.src-rsvg-master.repo  = "rsvg";
  inputs.src-rsvg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rsvg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rsvg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}