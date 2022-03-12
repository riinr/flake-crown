{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpfit-master".url = "path:./master";
  inputs."mpfit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpfit-v0_1_1".url = "path:./v0_1_1";
  inputs."mpfit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpfit-v0_1_2".url = "path:./v0_1_2";
  inputs."mpfit-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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