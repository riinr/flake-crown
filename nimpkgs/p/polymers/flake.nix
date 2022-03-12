{
  description = ''A library of components and systems for use with the Polymorph ECS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."polymers-master".url = "path:./master";
  inputs."polymers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-0_2_0".url = "path:./0_2_0";
  inputs."polymers-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_1_0".url = "path:./v0_1_0";
  inputs."polymers-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_1_1".url = "path:./v0_1_1";
  inputs."polymers-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_3_0".url = "path:./v0_3_0";
  inputs."polymers-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_3_1".url = "path:./v0_3_1";
  inputs."polymers-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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