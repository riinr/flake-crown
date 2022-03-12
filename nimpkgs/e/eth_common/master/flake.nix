{
  description = ''Definitions of various data structures used in the Ethereum eco-system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth_common-master.flake = false;
  inputs.src-eth_common-master.owner = "status-im";
  inputs.src-eth_common-master.ref   = "refs/heads/master";
  inputs.src-eth_common-master.repo  = "nim-eth-common";
  inputs.src-eth_common-master.type  = "github";
  
  inputs."rlp".dir   = "nimpkgs/r/rlp";
  inputs."rlp".owner = "riinr";
  inputs."rlp".ref   = "flake-pinning";
  inputs."rlp".repo  = "flake-nimble";
  inputs."rlp".type  = "github";
  inputs."rlp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rlp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth_trie".dir   = "nimpkgs/e/eth_trie";
  inputs."eth_trie".owner = "riinr";
  inputs."eth_trie".ref   = "flake-pinning";
  inputs."eth_trie".repo  = "flake-nimble";
  inputs."eth_trie".type  = "github";
  inputs."eth_trie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_trie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eth_common-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eth_common-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}