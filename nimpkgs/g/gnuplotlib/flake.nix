{
  description = ''gnuplot interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gnuplotlib-main".dir   = "main";
  inputs."gnuplotlib-main".owner = "nim-nix-pkgs";
  inputs."gnuplotlib-main".ref   = "master";
  inputs."gnuplotlib-main".repo  = "gnuplotlib";
  inputs."gnuplotlib-main".type  = "github";
  inputs."gnuplotlib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v1_0_0".dir   = "v1_0_0";
  inputs."gnuplotlib-v1_0_0".owner = "nim-nix-pkgs";
  inputs."gnuplotlib-v1_0_0".ref   = "master";
  inputs."gnuplotlib-v1_0_0".repo  = "gnuplotlib";
  inputs."gnuplotlib-v1_0_0".type  = "github";
  inputs."gnuplotlib-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_0_0".dir   = "v2_0_0";
  inputs."gnuplotlib-v2_0_0".owner = "nim-nix-pkgs";
  inputs."gnuplotlib-v2_0_0".ref   = "master";
  inputs."gnuplotlib-v2_0_0".repo  = "gnuplotlib";
  inputs."gnuplotlib-v2_0_0".type  = "github";
  inputs."gnuplotlib-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_1_0".dir   = "v2_1_0";
  inputs."gnuplotlib-v2_1_0".owner = "nim-nix-pkgs";
  inputs."gnuplotlib-v2_1_0".ref   = "master";
  inputs."gnuplotlib-v2_1_0".repo  = "gnuplotlib";
  inputs."gnuplotlib-v2_1_0".type  = "github";
  inputs."gnuplotlib-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_5_0".dir   = "v2_5_0";
  inputs."gnuplotlib-v2_5_0".owner = "nim-nix-pkgs";
  inputs."gnuplotlib-v2_5_0".ref   = "master";
  inputs."gnuplotlib-v2_5_0".repo  = "gnuplotlib";
  inputs."gnuplotlib-v2_5_0".type  = "github";
  inputs."gnuplotlib-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplotlib-v2_6_1".dir   = "v2_6_1";
  inputs."gnuplotlib-v2_6_1".owner = "nim-nix-pkgs";
  inputs."gnuplotlib-v2_6_1".ref   = "master";
  inputs."gnuplotlib-v2_6_1".repo  = "gnuplotlib";
  inputs."gnuplotlib-v2_6_1".type  = "github";
  inputs."gnuplotlib-v2_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplotlib-v2_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}