{
  description = ''libp2p implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libp2p-master.flake = false;
  inputs.src-libp2p-master.owner = "status-im";
  inputs.src-libp2p-master.ref   = "refs/heads/master";
  inputs.src-libp2p-master.repo  = "nim-libp2p";
  inputs.src-libp2p-master.type  = "github";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/ba0f3/dnsclient.nim".dir   = "nimpkgs/h/https://github.com/ba0f3/dnsclient.nim";
  inputs."https://github.com/ba0f3/dnsclient.nim".owner = "riinr";
  inputs."https://github.com/ba0f3/dnsclient.nim".ref   = "flake-pinning";
  inputs."https://github.com/ba0f3/dnsclient.nim".repo  = "flake-nimble";
  inputs."https://github.com/ba0f3/dnsclient.nim".type  = "github";
  inputs."https://github.com/ba0f3/dnsclient.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/ba0f3/dnsclient.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bearssl".dir   = "nimpkgs/b/bearssl";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".ref   = "flake-pinning";
  inputs."bearssl".repo  = "flake-nimble";
  inputs."bearssl".type  = "github";
  inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".dir   = "nimpkgs/c/chronicles";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".ref   = "flake-pinning";
  inputs."chronicles".repo  = "flake-nimble";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".dir   = "nimpkgs/c/chronos";
  inputs."chronos".owner = "riinr";
  inputs."chronos".ref   = "flake-pinning";
  inputs."chronos".repo  = "flake-nimble";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metrics".dir   = "nimpkgs/m/metrics";
  inputs."metrics".owner = "riinr";
  inputs."metrics".ref   = "flake-pinning";
  inputs."metrics".repo  = "flake-nimble";
  inputs."metrics".type  = "github";
  inputs."metrics".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metrics".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."secp256k1".dir   = "nimpkgs/s/secp256k1";
  inputs."secp256k1".owner = "riinr";
  inputs."secp256k1".ref   = "flake-pinning";
  inputs."secp256k1".repo  = "flake-nimble";
  inputs."secp256k1".type  = "github";
  inputs."secp256k1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."secp256k1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websock".dir   = "nimpkgs/w/websock";
  inputs."websock".owner = "riinr";
  inputs."websock".ref   = "flake-pinning";
  inputs."websock".repo  = "flake-nimble";
  inputs."websock".type  = "github";
  inputs."websock".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websock".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libp2p-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libp2p-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}