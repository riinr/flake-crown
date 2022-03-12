{
  description = ''Root finding functions for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."roots-master".url = "path:./master";
  inputs."roots-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_1".url = "path:./v0_1";
  inputs."roots-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_1_1".url = "path:./v0_1_1";
  inputs."roots-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_1_2".url = "path:./v0_1_2";
  inputs."roots-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_2_0".url = "path:./v0_2_0";
  inputs."roots-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_2_0_1".url = "path:./v0_2_0_1";
  inputs."roots-v0_2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_2_1".url = "path:./v0_2_1";
  inputs."roots-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_3_0".url = "path:./v0_3_0";
  inputs."roots-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_3_1".url = "path:./v0_3_1";
  inputs."roots-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_3_2".url = "path:./v0_3_2";
  inputs."roots-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_4_0".url = "path:./v0_4_0";
  inputs."roots-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."roots-v0_4_1".url = "path:./v0_4_1";
  inputs."roots-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."roots-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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