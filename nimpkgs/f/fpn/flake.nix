{
  description = ''A fixed point number library in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fpn-master".url = "path:./master";
  inputs."fpn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fpn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fpn-v0_0_1".url = "path:./v0_0_1";
  inputs."fpn-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fpn-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fpn-v0_1_0".url = "path:./v0_1_0";
  inputs."fpn-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fpn-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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