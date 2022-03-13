{
  description = ''A simple library to generate random data, using the system's PRNG.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sysrandom-master".dir   = "master";
  inputs."sysrandom-master".owner = "nim-nix-pkgs";
  inputs."sysrandom-master".ref   = "master";
  inputs."sysrandom-master".repo  = "sysrandom";
  inputs."sysrandom-master".type  = "github";
  inputs."sysrandom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom-v0_1_0".dir   = "v0_1_0";
  inputs."sysrandom-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sysrandom-v0_1_0".ref   = "master";
  inputs."sysrandom-v0_1_0".repo  = "sysrandom";
  inputs."sysrandom-v0_1_0".type  = "github";
  inputs."sysrandom-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom-v1_0_0".dir   = "v1_0_0";
  inputs."sysrandom-v1_0_0".owner = "nim-nix-pkgs";
  inputs."sysrandom-v1_0_0".ref   = "master";
  inputs."sysrandom-v1_0_0".repo  = "sysrandom";
  inputs."sysrandom-v1_0_0".type  = "github";
  inputs."sysrandom-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom-v1_1_0".dir   = "v1_1_0";
  inputs."sysrandom-v1_1_0".owner = "nim-nix-pkgs";
  inputs."sysrandom-v1_1_0".ref   = "master";
  inputs."sysrandom-v1_1_0".repo  = "sysrandom";
  inputs."sysrandom-v1_1_0".type  = "github";
  inputs."sysrandom-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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