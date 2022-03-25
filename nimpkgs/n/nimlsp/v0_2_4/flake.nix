{
  description = ''Nim Language Server Protocol - nimlsp implements the Language Server Protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlsp-v0_2_4.flake = false;
  inputs.src-nimlsp-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-nimlsp-v0_2_4.owner = "PMunch";
  inputs.src-nimlsp-v0_2_4.repo  = "nimlsp";
  inputs.src-nimlsp-v0_2_4.type  = "github";
  
  inputs."astpatternmatching".owner = "nim-nix-pkgs";
  inputs."astpatternmatching".ref   = "master";
  inputs."astpatternmatching".repo  = "astpatternmatching";
  inputs."astpatternmatching".dir   = "";
  inputs."astpatternmatching".type  = "github";
  inputs."astpatternmatching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astpatternmatching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-v0_2_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimlsp-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}