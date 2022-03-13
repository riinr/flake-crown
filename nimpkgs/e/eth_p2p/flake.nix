{
  description = ''Deprecated implementation of the Ethereum suite of P2P protocols (now part of the 'eth' package)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eth_p2p-master".dir   = "master";
  inputs."eth_p2p-master".owner = "nim-nix-pkgs";
  inputs."eth_p2p-master".ref   = "master";
  inputs."eth_p2p-master".repo  = "eth_p2p";
  inputs."eth_p2p-master".type  = "github";
  inputs."eth_p2p-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_p2p-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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