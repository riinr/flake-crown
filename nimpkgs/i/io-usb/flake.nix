{
  description = ''Obsolete - please use libusb instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."io-usb-master".dir   = "master";
  inputs."io-usb-master".owner = "nim-nix-pkgs";
  inputs."io-usb-master".ref   = "master";
  inputs."io-usb-master".repo  = "io-usb";
  inputs."io-usb-master".type  = "github";
  inputs."io-usb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."io-usb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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