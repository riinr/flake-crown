{
  description = ''An entity-component-system with a focus on compile time optimisation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."polymorph-master".dir   = "master";
  inputs."polymorph-master".owner = "nim-nix-pkgs";
  inputs."polymorph-master".ref   = "master";
  inputs."polymorph-master".repo  = "polymorph";
  inputs."polymorph-master".type  = "github";
  inputs."polymorph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_1_0".dir   = "v0_1_0";
  inputs."polymorph-v0_1_0".owner = "nim-nix-pkgs";
  inputs."polymorph-v0_1_0".ref   = "master";
  inputs."polymorph-v0_1_0".repo  = "polymorph";
  inputs."polymorph-v0_1_0".type  = "github";
  inputs."polymorph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_0".dir   = "v0_2_0";
  inputs."polymorph-v0_2_0".owner = "nim-nix-pkgs";
  inputs."polymorph-v0_2_0".ref   = "master";
  inputs."polymorph-v0_2_0".repo  = "polymorph";
  inputs."polymorph-v0_2_0".type  = "github";
  inputs."polymorph-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_1".dir   = "v0_2_1";
  inputs."polymorph-v0_2_1".owner = "nim-nix-pkgs";
  inputs."polymorph-v0_2_1".ref   = "master";
  inputs."polymorph-v0_2_1".repo  = "polymorph";
  inputs."polymorph-v0_2_1".type  = "github";
  inputs."polymorph-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_2".dir   = "v0_2_2";
  inputs."polymorph-v0_2_2".owner = "nim-nix-pkgs";
  inputs."polymorph-v0_2_2".ref   = "master";
  inputs."polymorph-v0_2_2".repo  = "polymorph";
  inputs."polymorph-v0_2_2".type  = "github";
  inputs."polymorph-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_3".dir   = "v0_2_3";
  inputs."polymorph-v0_2_3".owner = "nim-nix-pkgs";
  inputs."polymorph-v0_2_3".ref   = "master";
  inputs."polymorph-v0_2_3".repo  = "polymorph";
  inputs."polymorph-v0_2_3".type  = "github";
  inputs."polymorph-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_3_0".dir   = "v0_3_0";
  inputs."polymorph-v0_3_0".owner = "nim-nix-pkgs";
  inputs."polymorph-v0_3_0".ref   = "master";
  inputs."polymorph-v0_3_0".repo  = "polymorph";
  inputs."polymorph-v0_3_0".type  = "github";
  inputs."polymorph-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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