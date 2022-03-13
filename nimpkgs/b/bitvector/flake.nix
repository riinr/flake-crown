{
  description = ''A high performance Nim implementation of BitVector with base SomeUnsignedInt(i.e: uint8-64) with support for slices, and seq supported operations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitvector-master".dir   = "master";
  inputs."bitvector-master".owner = "nim-nix-pkgs";
  inputs."bitvector-master".ref   = "master";
  inputs."bitvector-master".repo  = "bitvector";
  inputs."bitvector-master".type  = "github";
  inputs."bitvector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitvector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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