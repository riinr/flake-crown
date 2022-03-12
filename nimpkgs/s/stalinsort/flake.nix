{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stalinsort-master".url = "path:./master";
  inputs."stalinsort-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_2_1".url = "path:./v0_2_1";
  inputs."stalinsort-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_2_2".url = "path:./v0_2_2";
  inputs."stalinsort-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_3_0".url = "path:./v0_3_0";
  inputs."stalinsort-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_3_1".url = "path:./v0_3_1";
  inputs."stalinsort-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stalinsort-v0_3_2".url = "path:./v0_3_2";
  inputs."stalinsort-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stalinsort-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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