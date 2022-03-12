{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notifishower-master".url = "path:./master";
  inputs."notifishower-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_3_0".url = "path:./v0_3_0";
  inputs."notifishower-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_5_0".url = "path:./v0_5_0";
  inputs."notifishower-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_6_0".url = "path:./v0_6_0";
  inputs."notifishower-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_7_0".url = "path:./v0_7_0";
  inputs."notifishower-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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