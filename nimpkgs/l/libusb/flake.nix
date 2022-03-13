{
  description = ''Bindings for libusb, the cross-platform user library to access USB devices.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libusb-master".dir   = "master";
  inputs."libusb-master".owner = "nim-nix-pkgs";
  inputs."libusb-master".ref   = "master";
  inputs."libusb-master".repo  = "libusb";
  inputs."libusb-master".type  = "github";
  inputs."libusb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libusb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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