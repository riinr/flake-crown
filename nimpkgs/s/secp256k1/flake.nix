{
  description = ''A wrapper for the libsecp256k1 C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."secp256k1-master".dir   = "master";
  inputs."secp256k1-master".owner = "nim-nix-pkgs";
  inputs."secp256k1-master".ref   = "master";
  inputs."secp256k1-master".repo  = "secp256k1";
  inputs."secp256k1-master".type  = "github";
  inputs."secp256k1-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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