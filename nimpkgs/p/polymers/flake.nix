{
  description = ''A library of components and systems for use with the Polymorph ECS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."polymers-master".dir   = "master";
  inputs."polymers-master".owner = "nim-nix-pkgs";
  inputs."polymers-master".ref   = "master";
  inputs."polymers-master".repo  = "polymers";
  inputs."polymers-master".type  = "github";
  inputs."polymers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-0_2_0".dir   = "0_2_0";
  inputs."polymers-0_2_0".owner = "nim-nix-pkgs";
  inputs."polymers-0_2_0".ref   = "master";
  inputs."polymers-0_2_0".repo  = "polymers";
  inputs."polymers-0_2_0".type  = "github";
  inputs."polymers-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_1_0".dir   = "v0_1_0";
  inputs."polymers-v0_1_0".owner = "nim-nix-pkgs";
  inputs."polymers-v0_1_0".ref   = "master";
  inputs."polymers-v0_1_0".repo  = "polymers";
  inputs."polymers-v0_1_0".type  = "github";
  inputs."polymers-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polyshards-v0_1_1".dir   = "v0_1_1";
  inputs."polyshards-v0_1_1".owner = "nim-nix-pkgs";
  inputs."polyshards-v0_1_1".ref   = "master";
  inputs."polyshards-v0_1_1".repo  = "polyshards";
  inputs."polyshards-v0_1_1".type  = "github";
  inputs."polyshards-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polyshards-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_3_0".dir   = "v0_3_0";
  inputs."polymers-v0_3_0".owner = "nim-nix-pkgs";
  inputs."polymers-v0_3_0".ref   = "master";
  inputs."polymers-v0_3_0".repo  = "polymers";
  inputs."polymers-v0_3_0".type  = "github";
  inputs."polymers-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymers-v0_3_1".dir   = "v0_3_1";
  inputs."polymers-v0_3_1".owner = "nim-nix-pkgs";
  inputs."polymers-v0_3_1".ref   = "master";
  inputs."polymers-v0_3_1".repo  = "polymers";
  inputs."polymers-v0_3_1".type  = "github";
  inputs."polymers-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymers-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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