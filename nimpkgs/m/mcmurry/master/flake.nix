{
  description = ''A module for generating lexer/parser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mcmurry-master.flake = false;
  inputs.src-mcmurry-master.owner = "chocobo333";
  inputs.src-mcmurry-master.ref   = "refs/heads/master";
  inputs.src-mcmurry-master.repo  = "mcmurry";
  inputs.src-mcmurry-master.type  = "github";
  
  inputs."asciitype".dir   = "nimpkgs/a/asciitype";
  inputs."asciitype".owner = "riinr";
  inputs."asciitype".ref   = "flake-pinning";
  inputs."asciitype".repo  = "flake-nimble";
  inputs."asciitype".type  = "github";
  inputs."asciitype".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciitype".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ast_pattern_matching".dir   = "nimpkgs/a/ast_pattern_matching";
  inputs."ast_pattern_matching".owner = "riinr";
  inputs."ast_pattern_matching".ref   = "flake-pinning";
  inputs."ast_pattern_matching".repo  = "flake-nimble";
  inputs."ast_pattern_matching".type  = "github";
  inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mcmurry-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mcmurry-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}