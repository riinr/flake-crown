{
  description = ''Deprecated implementation of the Ethereum suite of P2P protocols (now part of the 'eth' package)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth_p2p-master.flake = false;
  inputs.src-eth_p2p-master.owner = "status-im";
  inputs.src-eth_p2p-master.ref   = "refs/heads/master";
  inputs.src-eth_p2p-master.repo  = "nim-eth-p2p";
  inputs.src-eth_p2p-master.type  = "github";
  
  inputs."rlp".dir   = "nimpkgs/r/rlp";
  inputs."rlp".owner = "riinr";
  inputs."rlp".ref   = "flake-pinning";
  inputs."rlp".repo  = "flake-nimble";
  inputs."rlp".type  = "github";
  inputs."rlp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rlp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."secp256k1".dir   = "nimpkgs/s/secp256k1";
  inputs."secp256k1".owner = "riinr";
  inputs."secp256k1".ref   = "flake-pinning";
  inputs."secp256k1".repo  = "flake-nimble";
  inputs."secp256k1".type  = "github";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth_keys".dir   = "nimpkgs/e/eth_keys";
  inputs."eth_keys".owner = "riinr";
  inputs."eth_keys".ref   = "flake-pinning";
  inputs."eth_keys".repo  = "flake-nimble";
  inputs."eth_keys".type  = "github";
  inputs."eth_keys".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_keys".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ranges".dir   = "nimpkgs/r/ranges";
  inputs."ranges".owner = "riinr";
  inputs."ranges".ref   = "flake-pinning";
  inputs."ranges".repo  = "flake-nimble";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."byteutils".dir   = "nimpkgs/b/byteutils";
  inputs."byteutils".owner = "riinr";
  inputs."byteutils".ref   = "flake-pinning";
  inputs."byteutils".repo  = "flake-nimble";
  inputs."byteutils".type  = "github";
  inputs."byteutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."byteutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".dir   = "nimpkgs/c/chronicles";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".ref   = "flake-pinning";
  inputs."chronicles".repo  = "flake-nimble";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncdispatch2".dir   = "nimpkgs/a/asyncdispatch2";
  inputs."asyncdispatch2".owner = "riinr";
  inputs."asyncdispatch2".ref   = "flake-pinning";
  inputs."asyncdispatch2".repo  = "flake-nimble";
  inputs."asyncdispatch2".type  = "github";
  inputs."asyncdispatch2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncdispatch2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth_common".dir   = "nimpkgs/e/eth_common";
  inputs."eth_common".owner = "riinr";
  inputs."eth_common".ref   = "flake-pinning";
  inputs."eth_common".repo  = "flake-nimble";
  inputs."eth_common".type  = "github";
  inputs."eth_common".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_common".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snappy".dir   = "nimpkgs/s/snappy";
  inputs."snappy".owner = "riinr";
  inputs."snappy".ref   = "flake-pinning";
  inputs."snappy".repo  = "flake-nimble";
  inputs."snappy".type  = "github";
  inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."package_visible_types".dir   = "nimpkgs/p/package_visible_types";
  inputs."package_visible_types".owner = "riinr";
  inputs."package_visible_types".ref   = "flake-pinning";
  inputs."package_visible_types".repo  = "flake-nimble";
  inputs."package_visible_types".type  = "github";
  inputs."package_visible_types".inputs.nixpkgs.follows = "nixpkgs";
  inputs."package_visible_types".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serialization".dir   = "nimpkgs/s/serialization";
  inputs."serialization".owner = "riinr";
  inputs."serialization".ref   = "flake-pinning";
  inputs."serialization".repo  = "flake-nimble";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".dir   = "nimpkgs/j/json_serialization";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".ref   = "flake-pinning";
  inputs."json_serialization".repo  = "flake-nimble";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eth_p2p-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eth_p2p-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}