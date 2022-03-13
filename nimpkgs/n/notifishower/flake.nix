{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notifishower-master".dir   = "master";
  inputs."notifishower-master".owner = "nim-nix-pkgs";
  inputs."notifishower-master".ref   = "master";
  inputs."notifishower-master".repo  = "notifishower";
  inputs."notifishower-master".type  = "github";
  inputs."notifishower-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_3_0".dir   = "v0_3_0";
  inputs."notifishower-v0_3_0".owner = "nim-nix-pkgs";
  inputs."notifishower-v0_3_0".ref   = "master";
  inputs."notifishower-v0_3_0".repo  = "notifishower";
  inputs."notifishower-v0_3_0".type  = "github";
  inputs."notifishower-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_5_0".dir   = "v0_5_0";
  inputs."notifishower-v0_5_0".owner = "nim-nix-pkgs";
  inputs."notifishower-v0_5_0".ref   = "master";
  inputs."notifishower-v0_5_0".repo  = "notifishower";
  inputs."notifishower-v0_5_0".type  = "github";
  inputs."notifishower-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_6_0".dir   = "v0_6_0";
  inputs."notifishower-v0_6_0".owner = "nim-nix-pkgs";
  inputs."notifishower-v0_6_0".ref   = "master";
  inputs."notifishower-v0_6_0".repo  = "notifishower";
  inputs."notifishower-v0_6_0".type  = "github";
  inputs."notifishower-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notifishower-v0_7_0".dir   = "v0_7_0";
  inputs."notifishower-v0_7_0".owner = "nim-nix-pkgs";
  inputs."notifishower-v0_7_0".ref   = "master";
  inputs."notifishower-v0_7_0".repo  = "notifishower";
  inputs."notifishower-v0_7_0".type  = "github";
  inputs."notifishower-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notifishower-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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