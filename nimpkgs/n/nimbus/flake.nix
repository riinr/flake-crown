{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbus-master".dir   = "master";
  inputs."nimbus-master".owner = "nim-nix-pkgs";
  inputs."nimbus-master".ref   = "master";
  inputs."nimbus-master".repo  = "nimbus";
  inputs."nimbus-master".type  = "github";
  inputs."nimbus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbus-201903-testnet0".dir   = "201903-testnet0";
  inputs."nimbus-201903-testnet0".owner = "nim-nix-pkgs";
  inputs."nimbus-201903-testnet0".ref   = "master";
  inputs."nimbus-201903-testnet0".repo  = "nimbus";
  inputs."nimbus-201903-testnet0".type  = "github";
  inputs."nimbus-201903-testnet0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbus-201903-testnet0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbus-nightly".dir   = "nightly";
  inputs."nimbus-nightly".owner = "nim-nix-pkgs";
  inputs."nimbus-nightly".ref   = "master";
  inputs."nimbus-nightly".repo  = "nimbus";
  inputs."nimbus-nightly".type  = "github";
  inputs."nimbus-nightly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbus-nightly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbus-sim-stat".dir   = "sim-stat";
  inputs."nimbus-sim-stat".owner = "nim-nix-pkgs";
  inputs."nimbus-sim-stat".ref   = "master";
  inputs."nimbus-sim-stat".repo  = "nimbus";
  inputs."nimbus-sim-stat".type  = "github";
  inputs."nimbus-sim-stat".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbus-sim-stat".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}