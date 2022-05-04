{
  description = ''Nim Language Server Protocol - nimlsp implements the Language Server Protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlsp-v0_2_3.flake = false;
  inputs.src-nimlsp-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-nimlsp-v0_2_3.owner = "PMunch";
  inputs.src-nimlsp-v0_2_3.repo  = "nimlsp";
  inputs.src-nimlsp-v0_2_3.type  = "github";
  
  inputs."ast_pattern_matching".owner = "nim-nix-pkgs";
  inputs."ast_pattern_matching".ref   = "master";
  inputs."ast_pattern_matching".repo  = "ast_pattern_matching";
  inputs."ast_pattern_matching".dir   = "master";
  inputs."ast_pattern_matching".type  = "github";
  inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsonschema".owner = "nim-nix-pkgs";
  inputs."jsonschema".ref   = "master";
  inputs."jsonschema".repo  = "jsonschema";
  inputs."jsonschema".dir   = "master";
  inputs."jsonschema".type  = "github";
  inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-v0_2_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimlsp-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}