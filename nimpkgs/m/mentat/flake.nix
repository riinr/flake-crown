{
  description = ''A Nim library for data science and machine learning'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mentat-master".url = "path:./master";
  inputs."mentat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mentat-v0_1_0".url = "path:./v0_1_0";
  inputs."mentat-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mentat-v0_1_1".url = "path:./v0_1_1";
  inputs."mentat-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mentat-v0_1_2".url = "path:./v0_1_2";
  inputs."mentat-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mentat-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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