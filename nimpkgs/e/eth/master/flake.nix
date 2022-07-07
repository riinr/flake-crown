{
  description = ''Ethereum Common library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eth-master.flake = false;
  inputs.src-eth-master.ref   = "refs/heads/master";
  inputs.src-eth-master.owner = "status-im";
  inputs.src-eth-master.repo  = "nim-eth";
  inputs.src-eth-master.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "master";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."secp256k1".owner = "nim-nix-pkgs";
  inputs."secp256k1".ref   = "master";
  inputs."secp256k1".repo  = "secp256k1";
  inputs."secp256k1".dir   = "master";
  inputs."secp256k1".type  = "github";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rocksdb".owner = "nim-nix-pkgs";
  inputs."rocksdb".ref   = "master";
  inputs."rocksdb".repo  = "rocksdb";
  inputs."rocksdb".dir   = "master";
  inputs."rocksdb".type  = "github";
  inputs."rocksdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rocksdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".dir   = "master";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".dir   = "v0_10_2";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "master";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nat_traversal".owner = "nim-nix-pkgs";
  inputs."nat_traversal".ref   = "master";
  inputs."nat_traversal".repo  = "nat_traversal";
  inputs."nat_traversal".dir   = "master";
  inputs."nat_traversal".type  = "github";
  inputs."nat_traversal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nat_traversal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metrics".owner = "nim-nix-pkgs";
  inputs."metrics".ref   = "master";
  inputs."metrics".repo  = "metrics";
  inputs."metrics".dir   = "master";
  inputs."metrics".type  = "github";
  inputs."metrics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metrics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlite3_abi".owner = "nim-nix-pkgs";
  inputs."sqlite3_abi".ref   = "master";
  inputs."sqlite3_abi".repo  = "sqlite3_abi";
  inputs."sqlite3_abi".dir   = "master";
  inputs."sqlite3_abi".type  = "github";
  inputs."sqlite3_abi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlite3_abi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."confutils".owner = "nim-nix-pkgs";
  inputs."confutils".ref   = "master";
  inputs."confutils".repo  = "confutils";
  inputs."confutils".dir   = "master";
  inputs."confutils".type  = "github";
  inputs."confutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."confutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils".owner = "nim-nix-pkgs";
  inputs."testutils".ref   = "master";
  inputs."testutils".repo  = "testutils";
  inputs."testutils".dir   = "v0_5_0";
  inputs."testutils".type  = "github";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2".owner = "nim-nix-pkgs";
  inputs."unittest2".ref   = "master";
  inputs."unittest2".repo  = "unittest2";
  inputs."unittest2".dir   = "v0_0_4";
  inputs."unittest2".type  = "github";
  inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eth-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-eth-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}