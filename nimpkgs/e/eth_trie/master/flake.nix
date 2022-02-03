{
  description = ''Merkle Patricia Tries as specified by Ethereum (deprecated, now part of the 'eth' package)'';
  inputs.src-eth_trie-master.flake = false;
  inputs.src-eth_trie-master.type = "github";
  inputs.src-eth_trie-master.owner = "status-im";
  inputs.src-eth_trie-master.repo = "nim-eth-trie";
  inputs.src-eth_trie-master.ref = "refs/heads/master";
  
  
  inputs."rlp".url = "path:../../../r/rlp";
  inputs."rlp".type = "github";
  inputs."rlp".owner = "riinr";
  inputs."rlp".repo = "flake-nimble";
  inputs."rlp".ref = "flake-pinning";
  inputs."rlp".dir = "nimpkgs/r/rlp";

  
  inputs."nimcrypto".url = "path:../../../n/nimcrypto";
  inputs."nimcrypto".type = "github";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".repo = "flake-nimble";
  inputs."nimcrypto".ref = "flake-pinning";
  inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";

  
  inputs."ranges".url = "path:../../../r/ranges";
  inputs."ranges".type = "github";
  inputs."ranges".owner = "riinr";
  inputs."ranges".repo = "flake-nimble";
  inputs."ranges".ref = "flake-pinning";
  inputs."ranges".dir = "nimpkgs/r/ranges";

  
  inputs."rocksdb".url = "path:../../../r/rocksdb";
  inputs."rocksdb".type = "github";
  inputs."rocksdb".owner = "riinr";
  inputs."rocksdb".repo = "flake-nimble";
  inputs."rocksdb".ref = "flake-pinning";
  inputs."rocksdb".dir = "nimpkgs/r/rocksdb";

  outputs = { self, nixpkgs, src-eth_trie-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eth_trie-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eth_trie-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}