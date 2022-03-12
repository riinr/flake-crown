{
  description = ''Obsolete - please use libusb instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-io-usb-master.flake = false;
  inputs.src-io-usb-master.owner = "nimious";
  inputs.src-io-usb-master.ref   = "refs/heads/master";
  inputs.src-io-usb-master.repo  = "io-usb";
  inputs.src-io-usb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-io-usb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-io-usb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}