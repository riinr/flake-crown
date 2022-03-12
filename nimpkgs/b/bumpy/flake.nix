{
  description = ''2d collision library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bumpy-master".url = "path:./master";
  inputs."bumpy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-0_1_0".url = "path:./0_1_0";
  inputs."bumpy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-0_2_0".url = "path:./0_2_0";
  inputs."bumpy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-0_2_1".url = "path:./0_2_1";
  inputs."bumpy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_0".url = "path:./1_0_0";
  inputs."bumpy-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_1".url = "path:./1_0_1";
  inputs."bumpy-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_2".url = "path:./1_0_2";
  inputs."bumpy-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bumpy-1_0_3".url = "path:./1_0_3";
  inputs."bumpy-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}