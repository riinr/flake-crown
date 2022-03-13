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
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_rpc".owner = "nim-nix-pkgs";
  inputs."json_rpc".ref   = "master";
  inputs."json_rpc".repo  = "json_rpc";
  inputs."json_rpc".type  = "github";
  inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bncurve".owner = "nim-nix-pkgs";
  inputs."bncurve".ref   = "master";
  inputs."bncurve".repo  = "bncurve";
  inputs."bncurve".type  = "github";
  inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth".owner = "nim-nix-pkgs";
  inputs."eth".ref   = "master";
  inputs."eth".repo  = "eth";
  inputs."eth".type  = "github";
  inputs."eth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."std_shims".owner = "nim-nix-pkgs";
  inputs."std_shims".ref   = "master";
  inputs."std_shims".repo  = "std_shims";
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