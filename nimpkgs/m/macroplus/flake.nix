{
  description = ''a collection of useful macro functionalities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."macroplus-main".dir   = "main";
  inputs."macroplus-main".owner = "nim-nix-pkgs";
  inputs."macroplus-main".ref   = "master";
  inputs."macroplus-main".repo  = "macroplus";
  inputs."macroplus-main".type  = "github";
  inputs."macroplus-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus-0_1_17".dir   = "0_1_17";
  inputs."macroplus-0_1_17".owner = "nim-nix-pkgs";
  inputs."macroplus-0_1_17".ref   = "master";
  inputs."macroplus-0_1_17".repo  = "macroplus";
  inputs."macroplus-0_1_17".type  = "github";
  inputs."macroplus-0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus-0_1_20".dir   = "0_1_20";
  inputs."macroplus-0_1_20".owner = "nim-nix-pkgs";
  inputs."macroplus-0_1_20".ref   = "master";
  inputs."macroplus-0_1_20".repo  = "macroplus";
  inputs."macroplus-0_1_20".type  = "github";
  inputs."macroplus-0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus-0_1_22".dir   = "0_1_22";
  inputs."macroplus-0_1_22".owner = "nim-nix-pkgs";
  inputs."macroplus-0_1_22".ref   = "master";
  inputs."macroplus-0_1_22".repo  = "macroplus";
  inputs."macroplus-0_1_22".type  = "github";
  inputs."macroplus-0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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