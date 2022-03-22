{
  description = ''A fixed point number library in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fpn-master.flake = false;
  inputs.src-fpn-master.ref   = "refs/heads/master";
  inputs.src-fpn-master.owner = "lbartoletti";
  inputs.src-fpn-master.repo  = "fpn";
  inputs.src-fpn-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fpn-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fpn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}