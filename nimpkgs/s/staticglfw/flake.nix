{
  description = ''Static GLFW for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."staticglfw-master".url = "path:./master";
  inputs."staticglfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_0_1".url = "path:./4_0_1";
  inputs."staticglfw-4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_0".url = "path:./4_1_0";
  inputs."staticglfw-4_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_1".url = "path:./4_1_1";
  inputs."staticglfw-4_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_2".url = "path:./4_1_2";
  inputs."staticglfw-4_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-4_1_3".url = "path:./4_1_3";
  inputs."staticglfw-4_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-4_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_2_0".url = "path:./v0_2_0";
  inputs."staticglfw-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_2_1".url = "path:./v0_2_1";
  inputs."staticglfw-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_3_0".url = "path:./v0_3_0";
  inputs."staticglfw-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v0_3_1".url = "path:./v0_3_1";
  inputs."staticglfw-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v3_3_0_0".url = "path:./v3_3_0_0";
  inputs."staticglfw-v3_3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v3_3_0_1".url = "path:./v3_3_0_1";
  inputs."staticglfw-v3_3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw-v3_3_0_2".url = "path:./v3_3_0_2";
  inputs."staticglfw-v3_3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw-v3_3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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