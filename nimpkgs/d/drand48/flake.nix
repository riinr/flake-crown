{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."drand48-master".dir   = "master";
  inputs."drand48-master".owner = "nim-nix-pkgs";
  inputs."drand48-master".ref   = "master";
  inputs."drand48-master".repo  = "drand48";
  inputs."drand48-master".type  = "github";
  inputs."drand48-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_0_0".dir   = "v1_0_0";
  inputs."drand48-v1_0_0".owner = "nim-nix-pkgs";
  inputs."drand48-v1_0_0".ref   = "master";
  inputs."drand48-v1_0_0".repo  = "drand48";
  inputs."drand48-v1_0_0".type  = "github";
  inputs."drand48-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_0_1".dir   = "v1_0_1";
  inputs."drand48-v1_0_1".owner = "nim-nix-pkgs";
  inputs."drand48-v1_0_1".ref   = "master";
  inputs."drand48-v1_0_1".repo  = "drand48";
  inputs."drand48-v1_0_1".type  = "github";
  inputs."drand48-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_1_0".dir   = "v1_1_0";
  inputs."drand48-v1_1_0".owner = "nim-nix-pkgs";
  inputs."drand48-v1_1_0".ref   = "master";
  inputs."drand48-v1_1_0".repo  = "drand48";
  inputs."drand48-v1_1_0".type  = "github";
  inputs."drand48-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_1_1".dir   = "v1_1_1";
  inputs."drand48-v1_1_1".owner = "nim-nix-pkgs";
  inputs."drand48-v1_1_1".ref   = "master";
  inputs."drand48-v1_1_1".repo  = "drand48";
  inputs."drand48-v1_1_1".type  = "github";
  inputs."drand48-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drand48-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."drand48-v1_1_2".dir   = "v1_1_2";
  inputs."drand48-v1_1_2".owner = "nim-nix-pkgs";
  inputs."drand48-v1_1_2".ref   = "master";
  inputs."drand48-v1_1_2".repo  = "drand48";
  inputs."drand48-v1_1_2".type  = "github";
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