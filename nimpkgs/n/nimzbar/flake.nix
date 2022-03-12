{
  description = ''zbar wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimzbar-master".url = "path:./master";
  inputs."nimzbar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzbar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimzbar-v0_1_0".url = "path:./v0_1_0";
  inputs."nimzbar-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzbar-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimzbar-v0_1_1".url = "path:./v0_1_1";
  inputs."nimzbar-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzbar-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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