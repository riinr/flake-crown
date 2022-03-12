{
  description = ''gnuplot interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gnuplotlib-main".url = "path:./main";
  inputs."gnuplotlib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v1_0_0".url = "path:./v1_0_0";
  inputs."gnuplotlib-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_0_0".url = "path:./v2_0_0";
  inputs."gnuplotlib-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_1_0".url = "path:./v2_1_0";
  inputs."gnuplotlib-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_5_0".url = "path:./v2_5_0";
  inputs."gnuplotlib-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_6_1".url = "path:./v2_6_1";
  inputs."gnuplotlib-v2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}