{
  description = ''nmi display animations aimed to correct users who accidentally enter nmi instead of nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nmi-master".url = "path:./master";
  inputs."nmi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmi-v1_0_0".url = "path:./v1_0_0";
  inputs."nmi-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmi-v1_0_1".url = "path:./v1_0_1";
  inputs."nmi-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmi-v1_1_0".url = "path:./v1_1_0";
  inputs."nmi-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmi-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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