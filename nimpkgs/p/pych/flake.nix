{
  description = ''A tool that watches Python files and re-runs them on change.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pych-master".url = "path:./master";
  inputs."pych-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pych-v1_0_0".url = "path:./v1_0_0";
  inputs."pych-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pych-v1_0_1".url = "path:./v1_0_1";
  inputs."pych-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pych-v1_0_2".url = "path:./v1_0_2";
  inputs."pych-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pych-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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