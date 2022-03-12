{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbus-master".url = "path:./master";
  inputs."nimbus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbus-201903-testnet0".url = "path:./201903-testnet0";
  inputs."nimbus-201903-testnet0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbus-201903-testnet0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}