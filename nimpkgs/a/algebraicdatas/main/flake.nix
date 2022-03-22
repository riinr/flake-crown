{
  description = ''This module provides the feature of algebraic data type and its associated method'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-algebraicdatas-main.flake = false;
  inputs.src-algebraicdatas-main.ref   = "refs/heads/main";
  inputs.src-algebraicdatas-main.owner = "chocobo333";
  inputs.src-algebraicdatas-main.repo  = "AlgebraicDataTypes";
  inputs.src-algebraicdatas-main.type  = "github";
  
  inputs."ast_pattern_matching".owner = "nim-nix-pkgs";
  inputs."ast_pattern_matching".ref   = "master";
  inputs."ast_pattern_matching".repo  = "ast_pattern_matching";
  inputs."ast_pattern_matching".dir   = "";
  inputs."ast_pattern_matching".type  = "github";
  inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils".owner = "nim-nix-pkgs";
  inputs."macroutils".ref   = "master";
  inputs."macroutils".repo  = "macroutils";
  inputs."macroutils".dir   = "v1_2_0";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils".owner = "nim-nix-pkgs";
  inputs."optionsutils".ref   = "master";
  inputs."optionsutils".repo  = "optionsutils";
  inputs."optionsutils".dir   = "v1_2_0";
  inputs."optionsutils".type  = "github";
  inputs."optionsutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-algebraicdatas-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-algebraicdatas-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}