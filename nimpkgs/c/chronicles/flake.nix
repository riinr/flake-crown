{
  description = ''A crafty implementation of structured logging for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chronicles-master".url = "path:./master";
  inputs."chronicles-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_0".url = "path:./v0_10_0";
  inputs."chronicles-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_1".url = "path:./v0_10_1";
  inputs."chronicles-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_10_2".url = "path:./v0_10_2";
  inputs."chronicles-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_2_0".url = "path:./v0_2_0";
  inputs."chronicles-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_2_1".url = "path:./v0_2_1";
  inputs."chronicles-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_3_0".url = "path:./v0_3_0";
  inputs."chronicles-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_3_1".url = "path:./v0_3_1";
  inputs."chronicles-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_4_0".url = "path:./v0_4_0";
  inputs."chronicles-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_4_1".url = "path:./v0_4_1";
  inputs."chronicles-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_4_2".url = "path:./v0_4_2";
  inputs."chronicles-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_0".url = "path:./v0_5_0";
  inputs."chronicles-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_1".url = "path:./v0_5_1";
  inputs."chronicles-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_2".url = "path:./v0_5_2";
  inputs."chronicles-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_5_3".url = "path:./v0_5_3";
  inputs."chronicles-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_6_0".url = "path:./v0_6_0";
  inputs."chronicles-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_7_0".url = "path:./v0_7_0";
  inputs."chronicles-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_7_1".url = "path:./v0_7_1";
  inputs."chronicles-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_7_2".url = "path:./v0_7_2";
  inputs."chronicles-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_8_0".url = "path:./v0_8_0";
  inputs."chronicles-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_8_1".url = "path:./v0_8_1";
  inputs."chronicles-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_9_0".url = "path:./v0_9_0";
  inputs."chronicles-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles-v0_9_2".url = "path:./v0_9_2";
  inputs."chronicles-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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