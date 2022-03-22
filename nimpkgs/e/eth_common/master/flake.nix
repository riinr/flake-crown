{
  description = ''Ethereum Common library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth_common-master.flake = false;
  inputs.src-eth_common-master.ref   = "refs/heads/master";
  inputs.src-eth_common-master.owner = "status-im";
  inputs.src-eth_common-master.repo  = "nim-eth-common";
  inputs.src-eth_common-master.type  = "github";
  
  inputs."rlp".owner = "nim-nix-pkgs";
  inputs."rlp".ref   = "master";
  inputs."rlp".repo  = "rlp";
  inputs."rlp".dir   = "";
  inputs."rlp".type  = "github";
  inputs."rlp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rlp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth_trie".owner = "nim-nix-pkgs";
  inputs."eth_trie".ref   = "master";
  inputs."eth_trie".repo  = "eth_trie";
  inputs."eth_trie".dir   = "";
  inputs."eth_trie".type  = "github";
  inputs."eth_trie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth_trie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."byteutils".owner = "nim-nix-pkgs";
  inputs."byteutils".ref   = "master";
  inputs."byteutils".repo  = "byteutils";
  inputs."byteutils".dir   = "";
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