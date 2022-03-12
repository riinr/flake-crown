{
  description = ''The Nim GUI/2D framework based on OpenGL and SDL2.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nodesnim-master".url = "path:./master";
  inputs."nodesnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-01_09_21_1_24_0_0_6".url = "path:./01_09_21_1_24_0_0_6";
  inputs."nodesnim-01_09_21_1_24_0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-01_09_21_1_24_0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_0".url = "path:./nightly-0_2_0";
  inputs."nodesnim-nightly-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_1a".url = "path:./nightly-0_2_1a";
  inputs."nodesnim-nightly-0_2_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_2a".url = "path:./nightly-0_2_2a";
  inputs."nodesnim-nightly-0_2_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_4a".url = "path:./nightly-0_2_4a";
  inputs."nodesnim-nightly-0_2_4a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_4b".url = "path:./nightly-0_2_4b";
  inputs."nodesnim-nightly-0_2_4b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_2_4c".url = "path:./nightly-0_2_4c";
  inputs."nodesnim-nightly-0_2_4c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_2_4c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_0a".url = "path:./nightly-0_3_0a";
  inputs."nodesnim-nightly-0_3_0a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_0b".url = "path:./nightly-0_3_0b";
  inputs."nodesnim-nightly-0_3_0b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_0c".url = "path:./nightly-0_3_0c";
  inputs."nodesnim-nightly-0_3_0c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_0c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_1a".url = "path:./nightly-0_3_1a";
  inputs."nodesnim-nightly-0_3_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_1b".url = "path:./nightly-0_3_1b";
  inputs."nodesnim-nightly-0_3_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2a".url = "path:./nightly-0_3_2a";
  inputs."nodesnim-nightly-0_3_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2b".url = "path:./nightly-0_3_2b";
  inputs."nodesnim-nightly-0_3_2b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2c".url = "path:./nightly-0_3_2c";
  inputs."nodesnim-nightly-0_3_2c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2d".url = "path:./nightly-0_3_2d";
  inputs."nodesnim-nightly-0_3_2d".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2d".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2e".url = "path:./nightly-0_3_2e";
  inputs."nodesnim-nightly-0_3_2e".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2e".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_2f".url = "path:./nightly-0_3_2f";
  inputs."nodesnim-nightly-0_3_2f".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_2f".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_3a".url = "path:./nightly-0_3_3a";
  inputs."nodesnim-nightly-0_3_3a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_3a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_3_3b".url = "path:./nightly-0_3_3b";
  inputs."nodesnim-nightly-0_3_3b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_3_3b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_0a".url = "path:./nightly-0_4_0a";
  inputs."nodesnim-nightly-0_4_0a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_0b".url = "path:./nightly-0_4_0b";
  inputs."nodesnim-nightly-0_4_0b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_0c".url = "path:./nightly-0_4_0c";
  inputs."nodesnim-nightly-0_4_0c".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_0c".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_1a".url = "path:./nightly-0_4_1a";
  inputs."nodesnim-nightly-0_4_1a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_1a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_1b".url = "path:./nightly-0_4_1b";
  inputs."nodesnim-nightly-0_4_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_2a".url = "path:./nightly-0_4_2a";
  inputs."nodesnim-nightly-0_4_2a".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_2a".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly-0_4_2b".url = "path:./nightly-0_4_2b";
  inputs."nodesnim-nightly-0_4_2b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly-0_4_2b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-nightly_0_2_1".url = "path:./nightly_0_2_1";
  inputs."nodesnim-nightly_0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-nightly_0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable".url = "path:./stable";
  inputs."nodesnim-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_2_1".url = "path:./stable-0_2_1";
  inputs."nodesnim-stable-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_2_2".url = "path:./stable-0_2_2";
  inputs."nodesnim-stable-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_2_4".url = "path:./stable-0_2_4";
  inputs."nodesnim-stable-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_3_0".url = "path:./stable-0_3_0";
  inputs."nodesnim-stable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_3_1".url = "path:./stable-0_3_1";
  inputs."nodesnim-stable-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_3_2".url = "path:./stable-0_3_2";
  inputs."nodesnim-stable-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_4_0".url = "path:./stable-0_4_0";
  inputs."nodesnim-stable-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_4_1".url = "path:./stable-0_4_1";
  inputs."nodesnim-stable-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable-0_4_2".url = "path:./stable-0_4_2";
  inputs."nodesnim-stable-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-stable_0_3_2".url = "path:./stable_0_3_2";
  inputs."nodesnim-stable_0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-stable_0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-v0_0_1".url = "path:./v0_0_1";
  inputs."nodesnim-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nodesnim-v0_1_1".url = "path:./v0_1_1";
  inputs."nodesnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nodesnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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