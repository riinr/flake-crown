{
  description = ''Migration manager for Norm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."norman-develop".url = "path:./develop";
  inputs."norman-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-master".url = "path:./master";
  inputs."norman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-1_0_0".url = "path:./1_0_0";
  inputs."norman-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-1_0_1".url = "path:./1_0_1";
  inputs."norman-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-1_0_2".url = "path:./1_0_2";
  inputs."norman-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_0_0".url = "path:./2_0_0";
  inputs."norman-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_0".url = "path:./2_1_0";
  inputs."norman-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_1".url = "path:./2_1_1";
  inputs."norman-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_2".url = "path:./2_1_2";
  inputs."norman-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_3".url = "path:./2_1_3";
  inputs."norman-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_4".url = "path:./2_1_4";
  inputs."norman-2_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_5".url = "path:./2_1_5";
  inputs."norman-2_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_7".url = "path:./2_1_7";
  inputs."norman-2_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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