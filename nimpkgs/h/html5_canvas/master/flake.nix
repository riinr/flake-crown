{
  description = ''HTML5 Canvas and drawing for the JavaScript backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-html5_canvas-master.flake = false;
  inputs.src-html5_canvas-master.owner = "define-private-public";
  inputs.src-html5_canvas-master.ref   = "master";
  inputs.src-html5_canvas-master.repo  = "HTML5-Canvas-Nim";
  inputs.src-html5_canvas-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-html5_canvas-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-html5_canvas-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}