{
  description = ''A high level SQLite API for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sqliteral-master".url = "path:./master";
  inputs."sqliteral-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_0_0".url = "path:./1_0_0";
  inputs."sqliteral-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_1_0".url = "path:./1_1_0";
  inputs."sqliteral-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_2_0".url = "path:./1_2_0";
  inputs."sqliteral-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_3_0".url = "path:./1_3_0";
  inputs."sqliteral-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-2_0_0".url = "path:./2_0_0";
  inputs."sqliteral-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-2_0_1".url = "path:./2_0_1";
  inputs."sqliteral-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-2_0_2".url = "path:./2_0_2";
  inputs."sqliteral-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-3_0_0".url = "path:./3_0_0";
  inputs."sqliteral-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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