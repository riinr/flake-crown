{
  description = ''Convert between RGB, YIQ, HLS, and HSV color systems.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-colorsys-master.flake = false;
  inputs.src-colorsys-master.owner = "achesak";
  inputs.src-colorsys-master.ref   = "refs/heads/master";
  inputs.src-colorsys-master.repo  = "nim-colorsys";
  inputs.src-colorsys-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-colorsys-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-colorsys-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}