{
  description = ''Library for displaying notifications on the desktop'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notifications-master".url = "path:./master";
  inputs."notifications-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifications-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifications-v0_1_0".url = "path:./v0_1_0";
  inputs."notifications-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifications-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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