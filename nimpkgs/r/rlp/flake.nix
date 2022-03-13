{
  description = ''Deprecated RLP serialization library for Nim (now part of the 'eth' module)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rlp-master".dir   = "master";
  inputs."rlp-master".owner = "nim-nix-pkgs";
  inputs."rlp-master".ref   = "master";
  inputs."rlp-master".repo  = "rlp";
  inputs."rlp-master".type  = "github";
  inputs."rlp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rlp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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