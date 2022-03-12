{
  description = ''Plugin system for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plugins-master".url = "path:./master";
  inputs."plugins-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plugins-v0_1_0".url = "path:./v0_1_0";
  inputs."plugins-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plugins-v0_1_1".url = "path:./v0_1_1";
  inputs."plugins-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plugins-v0_1_2".url = "path:./v0_1_2";
  inputs."plugins-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plugins-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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