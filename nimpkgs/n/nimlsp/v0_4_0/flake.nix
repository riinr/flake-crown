{
  description = ''Language Server Protocol implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlsp-v0_4_0.flake = false;
  inputs.src-nimlsp-v0_4_0.owner = "PMunch";
  inputs.src-nimlsp-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-nimlsp-v0_4_0.repo  = "nimlsp";
  inputs.src-nimlsp-v0_4_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlsp-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}