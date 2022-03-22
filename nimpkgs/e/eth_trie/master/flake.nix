{
  description = ''Merkle Patricia Tries as specified by Ethereum'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth_trie-master.flake = false;
  inputs.src-eth_trie-master.ref   = "refs/heads/master";
  inputs.src-eth_trie-master.owner = "status-im";
  inputs.src-eth_trie-master.repo  = "nim-eth-trie";
  inputs.src-eth_trie-master.type  = "github";
  
  inputs."rlp".owner = "nim-nix-pkgs";
  inputs."rlp".ref   = "master";
  inputs."rlp".repo  = "rlp";
  inputs."rlp".dir   = "";
  inputs."rlp".type  = "github";
  inputs."rlp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rlp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ranges".owner = "nim-nix-pkgs";
  inputs."ranges".ref   = "master";
  inputs."ranges".repo  = "ranges";
  inputs."ranges".dir   = "";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rocksdb".owner = "nim-nix-pkgs";
  inputs."rocksdb".ref   = "master";
  inputs."rocksdb".repo  = "rocksdb";
  inputs."rocksdb".dir   = "";
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