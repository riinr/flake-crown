{
  description = ''DHT based on the libp2p Kademlia spec'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libp2pdht-main.flake = false;
  inputs.src-libp2pdht-main.ref   = "refs/heads/main";
  inputs.src-libp2pdht-main.owner = "status-im";
  inputs.src-libp2pdht-main.repo  = "nim-libp2p-dht";
  inputs.src-libp2pdht-main.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bearssl".owner = "nim-nix-pkgs";
  inputs."bearssl".ref   = "master";
  inputs."bearssl".repo  = "bearssl";
  inputs."bearssl".dir   = "source";
  inputs."bearssl".type  = "github";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  inputs."chronos".dir   = "source";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libp2p".owner = "nim-nix-pkgs";
  inputs."libp2p".ref   = "master";
  inputs."libp2p".repo  = "libp2p";
  inputs."libp2p".dir   = "unstable";
  inputs."libp2p".type  = "github";
  inputs."libp2p".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2p".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metrics".owner = "nim-nix-pkgs";
  inputs."metrics".ref   = "master";
  inputs."metrics".repo  = "metrics";
  inputs."metrics".dir   = "source";
  inputs."metrics".type  = "github";
  inputs."metrics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metrics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."protobufserialization".owner = "nim-nix-pkgs";
  inputs."protobufserialization".ref   = "master";
  inputs."protobufserialization".repo  = "protobufserialization";
  inputs."protobufserialization".dir   = "";
  inputs."protobufserialization".type  = "github";
  inputs."protobufserialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobufserialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."secp256k1".owner = "nim-nix-pkgs";
  inputs."secp256k1".ref   = "master";
  inputs."secp256k1".repo  = "secp256k1";
  inputs."secp256k1".dir   = "master";
  inputs."secp256k1".type  = "github";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "source";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "source";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest".owner = "nim-nix-pkgs";
  inputs."asynctest".ref   = "master";
  inputs."asynctest".repo  = "asynctest";
  inputs."asynctest".dir   = "0_3_2";
  inputs."asynctest".type  = "github";
  inputs."asynctest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libp2pdht-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libp2pdht-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}