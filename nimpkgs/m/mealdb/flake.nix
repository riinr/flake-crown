{
  description = ''TheMealDB API client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mealdb-main".dir   = "main";
  inputs."mealdb-main".owner = "nim-nix-pkgs";
  inputs."mealdb-main".ref   = "master";
  inputs."mealdb-main".repo  = "mealdb";
  inputs."mealdb-main".type  = "github";
  inputs."mealdb-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mealdb-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mealdb-v1_0_0".dir   = "v1_0_0";
  inputs."mealdb-v1_0_0".owner = "nim-nix-pkgs";
  inputs."mealdb-v1_0_0".ref   = "master";
  inputs."mealdb-v1_0_0".repo  = "mealdb";
  inputs."mealdb-v1_0_0".type  = "github";
  inputs."mealdb-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mealdb-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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