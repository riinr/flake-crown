{
  description = ''xcb bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xcb-master".url = "path:./master";
  inputs."xcb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xcb-v0_1_0".url = "path:./v0_1_0";
  inputs."xcb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xcb-v0_1_1".url = "path:./v0_1_1";
  inputs."xcb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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