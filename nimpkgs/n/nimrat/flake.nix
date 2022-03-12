{
  description = ''Module for working with rational numbers (fractions)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrat-master".url = "path:./master";
  inputs."nimrat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrat-v0_1".url = "path:./v0_1";
  inputs."nimrat-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrat-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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