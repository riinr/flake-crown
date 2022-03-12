{
  description = ''Library for working with arbitrary values + a map data structure.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."values-master".url = "path:./master";
  inputs."values-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."values-0_1_1".url = "path:./0_1_1";
  inputs."values-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."values-v0_1_0".url = "path:./v0_1_0";
  inputs."values-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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