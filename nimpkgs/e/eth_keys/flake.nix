{
  description = ''A deprecated reimplementation in pure Nim of eth-keys, the common API for Ethereum key operations (now part of the 'eth' package).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eth_keys-master".dir   = "master";
  inputs."eth_keys-master".owner = "nim-nix-pkgs";
  inputs."eth_keys-master".ref   = "master";
  inputs."eth_keys-master".repo  = "eth_keys";
  inputs."eth_keys-master".type  = "github";
  inputs."eth_keys-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_keys-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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