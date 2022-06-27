{
  description = ''Smoothing functions for Regression and Density Estimation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."smoothing-main".dir   = "main";
  inputs."smoothing-main".owner = "nim-nix-pkgs";
  inputs."smoothing-main".ref   = "master";
  inputs."smoothing-main".repo  = "smoothing";
  inputs."smoothing-main".type  = "github";
  inputs."smoothing-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smoothing-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."smoothing-0_1_0".dir   = "0_1_0";
  inputs."smoothing-0_1_0".owner = "nim-nix-pkgs";
  inputs."smoothing-0_1_0".ref   = "master";
  inputs."smoothing-0_1_0".repo  = "smoothing";
  inputs."smoothing-0_1_0".type  = "github";
  inputs."smoothing-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smoothing-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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