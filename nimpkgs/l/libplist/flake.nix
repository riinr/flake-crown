{
  description = ''wrapper around libplist https://github.com/libimobiledevice/libplist'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libplist-master".dir   = "master";
  inputs."libplist-master".owner = "nim-nix-pkgs";
  inputs."libplist-master".ref   = "master";
  inputs."libplist-master".repo  = "libplist";
  inputs."libplist-master".type  = "github";
  inputs."libplist-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libplist-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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