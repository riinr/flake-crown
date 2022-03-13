{
  description = ''Wrapper around the Linux framebuffer driver ioctl API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."linuxfb-master".dir   = "master";
  inputs."linuxfb-master".owner = "nim-nix-pkgs";
  inputs."linuxfb-master".ref   = "master";
  inputs."linuxfb-master".repo  = "linuxfb";
  inputs."linuxfb-master".type  = "github";
  inputs."linuxfb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linuxfb-v0_1_0".dir   = "v0_1_0";
  inputs."linuxfb-v0_1_0".owner = "nim-nix-pkgs";
  inputs."linuxfb-v0_1_0".ref   = "master";
  inputs."linuxfb-v0_1_0".repo  = "linuxfb";
  inputs."linuxfb-v0_1_0".type  = "github";
  inputs."linuxfb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linuxfb-v0_1_1".dir   = "v0_1_1";
  inputs."linuxfb-v0_1_1".owner = "nim-nix-pkgs";
  inputs."linuxfb-v0_1_1".ref   = "master";
  inputs."linuxfb-v0_1_1".repo  = "linuxfb";
  inputs."linuxfb-v0_1_1".type  = "github";
  inputs."linuxfb-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linuxfb-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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