{
  description = ''OpenCV wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opencv-master.flake = false;
  inputs.src-opencv-master.owner = "dom96";
  inputs.src-opencv-master.ref   = "master";
  inputs.src-opencv-master.repo  = "nim-opencv";
  inputs.src-opencv-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opencv-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opencv-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}