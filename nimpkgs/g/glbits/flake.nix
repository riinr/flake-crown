{
  description = ''A light interface and selection of utilities for working with OpenGL and SDL2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glbits-master".url = "path:./master";
  inputs."glbits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-0_1_0".url = "path:./0_1_0";
  inputs."glbits-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_1".url = "path:./v0_1_1";
  inputs."glbits-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_2".url = "path:./v0_1_2";
  inputs."glbits-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_3".url = "path:./v0_1_3";
  inputs."glbits-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_4".url = "path:./v0_1_4";
  inputs."glbits-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glbits-v0_1_5".url = "path:./v0_1_5";
  inputs."glbits-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glbits-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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