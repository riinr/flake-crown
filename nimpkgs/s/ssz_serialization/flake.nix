{
  description = ''Nim implementation of the Ethereum SSZ serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ssz_serialization-master".dir   = "master";
  inputs."ssz_serialization-master".owner = "nim-nix-pkgs";
  inputs."ssz_serialization-master".ref   = "master";
  inputs."ssz_serialization-master".repo  = "ssz_serialization";
  inputs."ssz_serialization-master".type  = "github";
  inputs."ssz_serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssz_serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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