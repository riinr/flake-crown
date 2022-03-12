{
  description = ''A library to operate serial ports using pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."serial-master".url = "path:./master";
  inputs."serial-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v0_1_0".url = "path:./v0_1_0";
  inputs."serial-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_0_0".url = "path:./v1_0_0";
  inputs."serial-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_0".url = "path:./v1_1_0";
  inputs."serial-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_1".url = "path:./v1_1_1";
  inputs."serial-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_2".url = "path:./v1_1_2";
  inputs."serial-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_3".url = "path:./v1_1_3";
  inputs."serial-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_4".url = "path:./v1_1_4";
  inputs."serial-v1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_5".url = "path:./v1_1_5";
  inputs."serial-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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