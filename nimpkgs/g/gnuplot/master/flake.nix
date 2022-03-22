{
  description = ''Interface to Gnuplot'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gnuplot-master.flake = false;
  inputs.src-gnuplot-master.owner = "dvolk";
  inputs.src-gnuplot-master.ref   = "master";
  inputs.src-gnuplot-master.repo  = "gnuplot.nim";
  inputs.src-gnuplot-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gnuplot-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gnuplot-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}