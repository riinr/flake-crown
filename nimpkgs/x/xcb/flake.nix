{
  description = ''xcb bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xcb-master".dir   = "master";
  inputs."xcb-master".owner = "nim-nix-pkgs";
  inputs."xcb-master".ref   = "master";
  inputs."xcb-master".repo  = "xcb";
  inputs."xcb-master".type  = "github";
  inputs."xcb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xcb-v0_1_0".dir   = "v0_1_0";
  inputs."xcb-v0_1_0".owner = "nim-nix-pkgs";
  inputs."xcb-v0_1_0".ref   = "master";
  inputs."xcb-v0_1_0".repo  = "xcb";
  inputs."xcb-v0_1_0".type  = "github";
  inputs."xcb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xcb-v0_1_1".dir   = "v0_1_1";
  inputs."xcb-v0_1_1".owner = "nim-nix-pkgs";
  inputs."xcb-v0_1_1".ref   = "master";
  inputs."xcb-v0_1_1".repo  = "xcb";
  inputs."xcb-v0_1_1".type  = "github";
  inputs."xcb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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