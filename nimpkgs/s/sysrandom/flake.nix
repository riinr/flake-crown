{
  description = ''A simple library to generate random data, using the system's PRNG.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sysrandom-master".url = "path:./master";
  inputs."sysrandom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom-v0_1_0".url = "path:./v0_1_0";
  inputs."sysrandom-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom-v1_0_0".url = "path:./v1_0_0";
  inputs."sysrandom-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysrandom-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysrandom-v1_1_0".url = "path:./v1_1_0";
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