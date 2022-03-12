{
  description = ''A simple terminal tetris in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtetris-master".url = "path:./master";
  inputs."nimtetris-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_0".url = "path:./v0_1_0";
  inputs."nimtetris-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_1".url = "path:./v0_1_1";
  inputs."nimtetris-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_2".url = "path:./v0_1_2";
  inputs."nimtetris-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_1_3".url = "path:./v0_1_3";
  inputs."nimtetris-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_2_0".url = "path:./v0_2_0";
  inputs."nimtetris-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_3_0".url = "path:./v0_3_0";
  inputs."nimtetris-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v0_3_1".url = "path:./v0_3_1";
  inputs."nimtetris-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v1_0_0".url = "path:./v1_0_0";
  inputs."nimtetris-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v1_1_0".url = "path:./v1_1_0";
  inputs."nimtetris-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtetris-v1_2_0".url = "path:./v1_2_0";
  inputs."nimtetris-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtetris-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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