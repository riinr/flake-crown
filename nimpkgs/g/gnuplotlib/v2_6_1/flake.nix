{
  description = ''gnuplot interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gnuplotlib-v2_6_1.flake = false;
  inputs.src-gnuplotlib-v2_6_1.owner = "planetis-m";
  inputs.src-gnuplotlib-v2_6_1.ref   = "refs/tags/v2.6.1";
  inputs.src-gnuplotlib-v2_6_1.repo  = "gnuplotlib";
  inputs.src-gnuplotlib-v2_6_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gnuplotlib-v2_6_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gnuplotlib-v2_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}