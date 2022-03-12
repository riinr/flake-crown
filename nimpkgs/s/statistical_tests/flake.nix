{
  description = ''Statistical tests in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."statistical_tests-master".url = "path:./master";
  inputs."statistical_tests-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."statistical_tests-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."statistical_tests-v0_1_0".url = "path:./v0_1_0";
  inputs."statistical_tests-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."statistical_tests-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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