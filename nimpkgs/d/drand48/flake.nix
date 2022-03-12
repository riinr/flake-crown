{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."drand48-master".url = "path:./master";
  inputs."drand48-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_0_0".url = "path:./v1_0_0";
  inputs."drand48-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_0_1".url = "path:./v1_0_1";
  inputs."drand48-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_1_0".url = "path:./v1_1_0";
  inputs."drand48-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_1_1".url = "path:./v1_1_1";
  inputs."drand48-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_1_2".url = "path:./v1_1_2";
  inputs."drand48-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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