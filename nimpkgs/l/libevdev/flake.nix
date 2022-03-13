{
  description = ''Wrapper for libevdev, Linux input device processing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libevdev-master".dir   = "master";
  inputs."libevdev-master".owner = "nim-nix-pkgs";
  inputs."libevdev-master".ref   = "master";
  inputs."libevdev-master".repo  = "libevdev";
  inputs."libevdev-master".type  = "github";
  inputs."libevdev-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libevdev-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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