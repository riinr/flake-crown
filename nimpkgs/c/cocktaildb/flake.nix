{
  description = ''TheCocktailDB API client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cocktaildb-main".dir   = "main";
  inputs."cocktaildb-main".owner = "nim-nix-pkgs";
  inputs."cocktaildb-main".ref   = "master";
  inputs."cocktaildb-main".repo  = "cocktaildb";
  inputs."cocktaildb-main".type  = "github";
  inputs."cocktaildb-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cocktaildb-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cocktaildb-v1_0_0".dir   = "v1_0_0";
  inputs."cocktaildb-v1_0_0".owner = "nim-nix-pkgs";
  inputs."cocktaildb-v1_0_0".ref   = "master";
  inputs."cocktaildb-v1_0_0".repo  = "cocktaildb";
  inputs."cocktaildb-v1_0_0".type  = "github";
  inputs."cocktaildb-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cocktaildb-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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