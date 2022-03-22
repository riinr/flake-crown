{
  description = ''Pack rects into bigger rect'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rect_packer-master.flake = false;
  inputs.src-rect_packer-master.owner = "yglukhov";
  inputs.src-rect_packer-master.ref   = "master";
  inputs.src-rect_packer-master.repo  = "rect_packer";
  inputs.src-rect_packer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rect_packer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rect_packer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}