{
  description = ''Nim gnuplot interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gnuplotlib-main.flake = false;
  inputs.src-gnuplotlib-main.owner = "planetis-m";
  inputs.src-gnuplotlib-main.ref   = "main";
  inputs.src-gnuplotlib-main.repo  = "gnuplotlib";
  inputs.src-gnuplotlib-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gnuplotlib-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gnuplotlib-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}