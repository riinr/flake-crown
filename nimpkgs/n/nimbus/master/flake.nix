{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbus-master.flake = false;
  inputs.src-nimbus-master.owner = "status-im";
  inputs.src-nimbus-master.ref   = "refs/heads/master";
  inputs.src-nimbus-master.repo  = "nimbus";
  inputs.src-nimbus-master.type  = "github";
  
  inputs."bncurve".dir   = "nimpkgs/b/bncurve";
  inputs."bncurve".owner = "riinr";
  inputs."bncurve".ref   = "flake-pinning";
  inputs."bncurve".repo  = "flake-nimble";
  inputs."bncurve".type  = "github";
  inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."eth".dir   = "nimpkgs/e/eth";
  inputs."eth".owner = "riinr";
  inputs."eth".ref   = "flake-pinning";
  inputs."eth".repo  = "flake-nimble";
  inputs."eth".type  = "github";
  inputs."eth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_rpc".dir   = "nimpkgs/j/json_rpc";
  inputs."json_rpc".owner = "riinr";
  inputs."json_rpc".ref   = "flake-pinning";
  inputs."json_rpc".repo  = "flake-nimble";
  inputs."json_rpc".type  = "github";
  inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace".dir   = "nimpkgs/l/libbacktrace";
  inputs."libbacktrace".owner = "riinr";
  inputs."libbacktrace".ref   = "flake-pinning";
  inputs."libbacktrace".repo  = "flake-nimble";
  inputs."libbacktrace".type  = "github";
  inputs."libbacktrace".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".dir   = "nimpkgs/s/stew";
  inputs."stew".owner = "riinr";
  inputs."stew".ref   = "flake-pinning";
  inputs."stew".repo  = "flake-nimble";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimbus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}