{
  description = ''A collection of geometry utilities for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geometryutils-master".url = "path:./master";
  inputs."geometryutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geometryutils-v1_1_0".url = "path:./v1_1_0";
  inputs."geometryutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geometryutils-v1_2_0".url = "path:./v1_2_0";
  inputs."geometryutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geometryutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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