{
  description = ''A library to handle measurement uncertainties'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."measuremancer-master".dir   = "master";
  inputs."measuremancer-master".owner = "nim-nix-pkgs";
  inputs."measuremancer-master".ref   = "master";
  inputs."measuremancer-master".repo  = "measuremancer";
  inputs."measuremancer-master".type  = "github";
  inputs."measuremancer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."measuremancer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."measuremancer-v0_1_1".dir   = "v0_1_1";
  inputs."measuremancer-v0_1_1".owner = "nim-nix-pkgs";
  inputs."measuremancer-v0_1_1".ref   = "master";
  inputs."measuremancer-v0_1_1".repo  = "measuremancer";
  inputs."measuremancer-v0_1_1".type  = "github";
  inputs."measuremancer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."measuremancer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."measuremancer-v0_2_0".dir   = "v0_2_0";
  inputs."measuremancer-v0_2_0".owner = "nim-nix-pkgs";
  inputs."measuremancer-v0_2_0".ref   = "master";
  inputs."measuremancer-v0_2_0".repo  = "measuremancer";
  inputs."measuremancer-v0_2_0".type  = "github";
  inputs."measuremancer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."measuremancer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."measuremancer-v0_2_1".dir   = "v0_2_1";
  inputs."measuremancer-v0_2_1".owner = "nim-nix-pkgs";
  inputs."measuremancer-v0_2_1".ref   = "master";
  inputs."measuremancer-v0_2_1".repo  = "measuremancer";
  inputs."measuremancer-v0_2_1".type  = "github";
  inputs."measuremancer-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."measuremancer-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."measuremancer-v0_2_2".dir   = "v0_2_2";
  inputs."measuremancer-v0_2_2".owner = "nim-nix-pkgs";
  inputs."measuremancer-v0_2_2".ref   = "master";
  inputs."measuremancer-v0_2_2".repo  = "measuremancer";
  inputs."measuremancer-v0_2_2".type  = "github";
  inputs."measuremancer-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."measuremancer-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."measuremancer-v0_2_3".dir   = "v0_2_3";
  inputs."measuremancer-v0_2_3".owner = "nim-nix-pkgs";
  inputs."measuremancer-v0_2_3".ref   = "master";
  inputs."measuremancer-v0_2_3".repo  = "measuremancer";
  inputs."measuremancer-v0_2_3".type  = "github";
  inputs."measuremancer-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."measuremancer-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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