{
  description = ''Language Server Protocol implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlsp-v0_2_4.flake = false;
  inputs.src-nimlsp-v0_2_4.owner = "PMunch";
  inputs.src-nimlsp-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-nimlsp-v0_2_4.repo  = "nimlsp";
  inputs.src-nimlsp-v0_2_4.type  = "github";
  
  inputs."astpatternmatching".dir   = "nimpkgs/a/astpatternmatching";
  inputs."astpatternmatching".owner = "riinr";
  inputs."astpatternmatching".ref   = "flake-pinning";
  inputs."astpatternmatching".repo  = "flake-nimble";
  inputs."astpatternmatching".type  = "github";
  inputs."astpatternmatching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astpatternmatching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsonschema".dir   = "nimpkgs/j/jsonschema";
  inputs."jsonschema".owner = "riinr";
  inputs."jsonschema".ref   = "flake-pinning";
  inputs."jsonschema".repo  = "flake-nimble";
  inputs."jsonschema".type  = "github";
  inputs."jsonschema".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonschema".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-v0_2_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlsp-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}