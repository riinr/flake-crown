{
  description = ''Ethereum P2P library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth_p2p-master.flake = false;
  inputs.src-eth_p2p-master.ref   = "refs/heads/master";
  inputs.src-eth_p2p-master.owner = "status-im";
  inputs.src-eth_p2p-master.repo  = "nim-eth-p2p";
  inputs.src-eth_p2p-master.type  = "github";
  
  inputs."rlp".owner = "nim-nix-pkgs";
  inputs."rlp".ref   = "master";
  inputs."rlp".repo  = "rlp";
  inputs."rlp".dir   = "master";
  inputs."rlp".type  = "github";
  inputs."rlp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rlp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."secp256k1".owner = "nim-nix-pkgs";
  inputs."secp256k1".ref   = "master";
  inputs."secp256k1".repo  = "secp256k1";
  inputs."secp256k1".dir   = "master";
  inputs."secp256k1".type  = "github";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth_keys".owner = "nim-nix-pkgs";
  inputs."eth_keys".ref   = "master";
  inputs."eth_keys".repo  = "eth_keys";
  inputs."eth_keys".dir   = "master";
  inputs."eth_keys".type  = "github";
  inputs."eth_keys".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_keys".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ranges".owner = "nim-nix-pkgs";
  inputs."ranges".ref   = "master";
  inputs."ranges".repo  = "ranges";
  inputs."ranges".dir   = "master";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "master";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."byteutils".owner = "nim-nix-pkgs";
  inputs."byteutils".ref   = "master";
  inputs."byteutils".repo  = "byteutils";
  inputs."byteutils".dir   = "master";
  inputs."byteutils".type  = "github";
  inputs."byteutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."byteutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".dir   = "v0_10_3";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".dir   = "master";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth_common".owner = "nim-nix-pkgs";
  inputs."eth_common".ref   = "master";
  inputs."eth_common".repo  = "eth_common";
  inputs."eth_common".dir   = "master";
  inputs."eth_common".type  = "github";
  inputs."eth_common".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_common".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snappy".owner = "nim-nix-pkgs";
  inputs."snappy".ref   = "master";
  inputs."snappy".repo  = "snappy";
  inputs."snappy".dir   = "master";
  inputs."snappy".type  = "github";
  inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."package_visible_types".owner = "nim-nix-pkgs";
  inputs."package_visible_types".ref   = "master";
  inputs."package_visible_types".repo  = "package_visible_types";
  inputs."package_visible_types".dir   = "master";
  inputs."package_visible_types".type  = "github";
  inputs."package_visible_types".inputs.nixpkgs.follows = "nixpkgs";
  inputs."package_visible_types".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serialization".owner = "nim-nix-pkgs";
  inputs."serialization".ref   = "master";
  inputs."serialization".repo  = "serialization";
  inputs."serialization".dir   = "master";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".owner = "nim-nix-pkgs";
  inputs."json_serialization".ref   = "master";
  inputs."json_serialization".repo  = "json_serialization";
  inputs."json_serialization".dir   = "master";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eth_p2p-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-eth_p2p-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}