{
  description = ''This module is a port of the Java implementation of the Zhang-Shasha algorithm for tree edit distance'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zhsh-master".url = "path:./master";
  inputs."zhsh-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zhsh-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zhsh-v0_2_0".url = "path:./v0_2_0";
  inputs."zhsh-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zhsh-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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