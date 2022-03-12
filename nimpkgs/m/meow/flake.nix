{
  description = ''meowhash wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."meow-master".url = "path:./master";
  inputs."meow-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."meow-0_1_0".url = "path:./0_1_0";
  inputs."meow-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."meow-0_2_0".url = "path:./0_2_0";
  inputs."meow-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."meow-v0_1_0".url = "path:./v0_1_0";
  inputs."meow-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."meow-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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