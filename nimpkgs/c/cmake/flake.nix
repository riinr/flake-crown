{
  description = ''CMake for Nimble'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cmake-master".url = "path:./master";
  inputs."cmake-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmake-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cmake-v0_1_1".url = "path:./v0_1_1";
  inputs."cmake-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmake-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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