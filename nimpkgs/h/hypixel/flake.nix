{
  description = ''The Hypixel API, in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hypixel-main".dir   = "main";
  inputs."hypixel-main".owner = "nim-nix-pkgs";
  inputs."hypixel-main".ref   = "master";
  inputs."hypixel-main".repo  = "hypixel";
  inputs."hypixel-main".type  = "github";
  inputs."hypixel-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_0".dir   = "v0_2_0";
  inputs."hypixel-v0_2_0".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_2_0".ref   = "master";
  inputs."hypixel-v0_2_0".repo  = "hypixel";
  inputs."hypixel-v0_2_0".type  = "github";
  inputs."hypixel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_1".dir   = "v0_2_1";
  inputs."hypixel-v0_2_1".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_2_1".ref   = "master";
  inputs."hypixel-v0_2_1".repo  = "hypixel";
  inputs."hypixel-v0_2_1".type  = "github";
  inputs."hypixel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_2".dir   = "v0_2_2";
  inputs."hypixel-v0_2_2".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_2_2".ref   = "master";
  inputs."hypixel-v0_2_2".repo  = "hypixel";
  inputs."hypixel-v0_2_2".type  = "github";
  inputs."hypixel-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_2_3".dir   = "v0_2_3";
  inputs."hypixel-v0_2_3".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_2_3".ref   = "master";
  inputs."hypixel-v0_2_3".repo  = "hypixel";
  inputs."hypixel-v0_2_3".type  = "github";
  inputs."hypixel-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_3_0".dir   = "v0_3_0";
  inputs."hypixel-v0_3_0".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_3_0".ref   = "master";
  inputs."hypixel-v0_3_0".repo  = "hypixel";
  inputs."hypixel-v0_3_0".type  = "github";
  inputs."hypixel-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_3_1".dir   = "v0_3_1";
  inputs."hypixel-v0_3_1".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_3_1".ref   = "master";
  inputs."hypixel-v0_3_1".repo  = "hypixel";
  inputs."hypixel-v0_3_1".type  = "github";
  inputs."hypixel-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hypixel-v0_3_2".dir   = "v0_3_2";
  inputs."hypixel-v0_3_2".owner = "nim-nix-pkgs";
  inputs."hypixel-v0_3_2".ref   = "master";
  inputs."hypixel-v0_3_2".repo  = "hypixel";
  inputs."hypixel-v0_3_2".type  = "github";
  inputs."hypixel-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hypixel-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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