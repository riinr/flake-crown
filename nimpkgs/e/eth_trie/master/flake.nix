{
  description = ''Merkle Patricia Tries as specified by Ethereum (deprecated, now part of the 'eth' package)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth_trie-master.flake = false;
  inputs.src-eth_trie-master.owner = "status-im";
  inputs.src-eth_trie-master.ref   = "refs/heads/master";
  inputs.src-eth_trie-master.repo  = "nim-eth-trie";
  inputs.src-eth_trie-master.type  = "github";
  
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
  
  inputs."ranges".dir   = "nimpkgs/r/ranges";
  inputs."ranges".owner = "riinr";
  inputs."ranges".ref   = "flake-pinning";
  inputs."ranges".repo  = "flake-nimble";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rocksdb".dir   = "nimpkgs/r/rocksdb";
  inputs."rocksdb".owner = "riinr";
  inputs."rocksdb".ref   = "flake-pinning";
  inputs."rocksdb".repo  = "flake-nimble";
  inputs."rocksdb".type  = "github";
  inputs."rocksdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rocksdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eth_trie-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eth_trie-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}