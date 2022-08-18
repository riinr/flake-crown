{
  description = ''Nim wrapper for libpe library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libpe-master".dir   = "master";
  inputs."libpe-master".owner = "nim-nix-pkgs";
  inputs."libpe-master".ref   = "master";
  inputs."libpe-master".repo  = "libpe";
  inputs."libpe-master".type  = "github";
  inputs."libpe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libpe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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