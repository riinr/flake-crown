{
  description = ''Localization package for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loco-develop".dir   = "develop";
  inputs."loco-develop".owner = "nim-nix-pkgs";
  inputs."loco-develop".ref   = "master";
  inputs."loco-develop".repo  = "loco";
  inputs."loco-develop".type  = "github";
  inputs."loco-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-master".dir   = "master";
  inputs."loco-master".owner = "nim-nix-pkgs";
  inputs."loco-master".ref   = "master";
  inputs."loco-master".repo  = "loco";
  inputs."loco-master".type  = "github";
  inputs."loco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-0_1_0".dir   = "0_1_0";
  inputs."loco-0_1_0".owner = "nim-nix-pkgs";
  inputs."loco-0_1_0".ref   = "master";
  inputs."loco-0_1_0".repo  = "loco";
  inputs."loco-0_1_0".type  = "github";
  inputs."loco-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-0_1_1".dir   = "0_1_1";
  inputs."loco-0_1_1".owner = "nim-nix-pkgs";
  inputs."loco-0_1_1".ref   = "master";
  inputs."loco-0_1_1".repo  = "loco";
  inputs."loco-0_1_1".type  = "github";
  inputs."loco-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-0_1_2".dir   = "0_1_2";
  inputs."loco-0_1_2".owner = "nim-nix-pkgs";
  inputs."loco-0_1_2".ref   = "master";
  inputs."loco-0_1_2".repo  = "loco";
  inputs."loco-0_1_2".type  = "github";
  inputs."loco-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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