{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbus-201903-testnet0.flake = false;
  inputs.src-nimbus-201903-testnet0.owner = "status-im";
  inputs.src-nimbus-201903-testnet0.ref   = "refs/tags/201903-testnet0";
  inputs.src-nimbus-201903-testnet0.repo  = "nimbus";
  inputs.src-nimbus-201903-testnet0.type  = "github";
  
  inputs."chronicles".dir   = "nimpkgs/c/chronicles";
  inputs."chronicles".owner = "riinr";
  inputs."chronicles".ref   = "flake-pinning";
  inputs."chronicles".repo  = "flake-nimble";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_rpc".dir   = "nimpkgs/j/json_rpc";
  inputs."json_rpc".owner = "riinr";
  inputs."json_rpc".ref   = "flake-pinning";
  inputs."json_rpc".repo  = "flake-nimble";
  inputs."json_rpc".type  = "github";
  inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".dir   = "nimpkgs/c/chronos";
  inputs."chronos".owner = "riinr";
  inputs."chronos".ref   = "flake-pinning";
  inputs."chronos".repo  = "flake-nimble";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bncurve".dir   = "nimpkgs/b/bncurve";
  inputs."bncurve".owner = "riinr";
  inputs."bncurve".ref   = "flake-pinning";
  inputs."bncurve".repo  = "flake-nimble";
  inputs."bncurve".type  = "github";
  inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth".dir   = "nimpkgs/e/eth";
  inputs."eth".owner = "riinr";
  inputs."eth".ref   = "flake-pinning";
  inputs."eth".repo  = "flake-nimble";
  inputs."eth".type  = "github";
  inputs."eth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."std_shims".dir   = "nimpkgs/s/std_shims";
  inputs."std_shims".owner = "riinr";
  inputs."std_shims".ref   = "flake-pinning";
  inputs."std_shims".repo  = "flake-nimble";
  inputs."std_shims".type  = "github";
  inputs."std_shims".inputs.nixpkgs.follows = "nixpkgs";
  inputs."std_shims".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbus-201903-testnet0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimbus-201903-testnet0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}