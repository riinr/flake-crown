{
  description = ''Linear algebra library for computer graphics applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geometrymath-main".dir   = "main";
  inputs."geometrymath-main".owner = "nim-nix-pkgs";
  inputs."geometrymath-main".ref   = "master";
  inputs."geometrymath-main".repo  = "geometrymath";
  inputs."geometrymath-main".type  = "github";
  inputs."geometrymath-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometrymath-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geometrymath-v1_0_0".dir   = "v1_0_0";
  inputs."geometrymath-v1_0_0".owner = "nim-nix-pkgs";
  inputs."geometrymath-v1_0_0".ref   = "master";
  inputs."geometrymath-v1_0_0".repo  = "geometrymath";
  inputs."geometrymath-v1_0_0".type  = "github";
  inputs."geometrymath-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometrymath-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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