{
  description = ''Binding for Qt 5's Qt SQL library that integrates with the features of the Nim language. Uses one API for multiple database engines.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qt5_qtsql-master".url = "path:./master";
  inputs."qt5_qtsql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-0_7_0".url = "path:./0_7_0";
  inputs."qt5_qtsql-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_0".url = "path:./1_0_0";
  inputs."qt5_qtsql-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_1".url = "path:./1_0_1";
  inputs."qt5_qtsql-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_2".url = "path:./1_0_2";
  inputs."qt5_qtsql-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_0_3".url = "path:./1_0_3";
  inputs."qt5_qtsql-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_1_0".url = "path:./1_1_0";
  inputs."qt5_qtsql-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qt5_qtsql-1_1_1".url = "path:./1_1_1";
  inputs."qt5_qtsql-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qt5_qtsql-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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