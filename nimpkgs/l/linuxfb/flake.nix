{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."linuxfb-master".url = "path:./master";
  inputs."linuxfb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linuxfb-v0_1_0".url = "path:./v0_1_0";
  inputs."linuxfb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linuxfb-v0_1_1".url = "path:./v0_1_1";
  inputs."linuxfb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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