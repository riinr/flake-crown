{
  description = ''Utilities for use with IP. It has functions for IPv4, IPv6 and CIDR.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."iputils-master".dir   = "master";
  inputs."iputils-master".owner = "nim-nix-pkgs";
  inputs."iputils-master".ref   = "master";
  inputs."iputils-master".repo  = "iputils";
  inputs."iputils-master".type  = "github";
  inputs."iputils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iputils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iputils-v0_1_0".dir   = "v0_1_0";
  inputs."iputils-v0_1_0".owner = "nim-nix-pkgs";
  inputs."iputils-v0_1_0".ref   = "master";
  inputs."iputils-v0_1_0".repo  = "iputils";
  inputs."iputils-v0_1_0".type  = "github";
  inputs."iputils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iputils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iputils-v0_2_0".dir   = "v0_2_0";
  inputs."iputils-v0_2_0".owner = "nim-nix-pkgs";
  inputs."iputils-v0_2_0".ref   = "master";
  inputs."iputils-v0_2_0".repo  = "iputils";
  inputs."iputils-v0_2_0".type  = "github";
  inputs."iputils-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iputils-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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