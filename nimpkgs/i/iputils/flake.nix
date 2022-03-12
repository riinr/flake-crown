{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."iputils-master".url = "path:./master";
  inputs."iputils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iputils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iputils-v0_1_0".url = "path:./v0_1_0";
  inputs."iputils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iputils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iputils-v0_2_0".url = "path:./v0_2_0";
  inputs."iputils-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iputils-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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