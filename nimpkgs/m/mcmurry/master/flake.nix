{
  description = ''A module for generating lexer/parser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mcmurry-master.flake = false;
  inputs.src-mcmurry-master.ref   = "refs/heads/master";
  inputs.src-mcmurry-master.owner = "chocobo333";
  inputs.src-mcmurry-master.repo  = "mcmurry";
  inputs.src-mcmurry-master.type  = "github";
  
  inputs."asciitype".owner = "nim-nix-pkgs";
  inputs."asciitype".ref   = "master";
  inputs."asciitype".repo  = "asciitype";
  inputs."asciitype".dir   = "master";
  inputs."asciitype".type  = "github";
  inputs."asciitype".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciitype".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ast_pattern_matching".owner = "nim-nix-pkgs";
  inputs."ast_pattern_matching".ref   = "master";
  inputs."ast_pattern_matching".repo  = "ast_pattern_matching";
  inputs."ast_pattern_matching".dir   = "master";
  inputs."ast_pattern_matching".type  = "github";
  inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_20_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mcmurry-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mcmurry-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}