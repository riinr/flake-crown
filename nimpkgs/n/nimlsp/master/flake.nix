{
  description = ''Language Server Protocol implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlsp-master.flake = false;
  inputs.src-nimlsp-master.owner = "PMunch";
  inputs.src-nimlsp-master.ref   = "refs/heads/master";
  inputs.src-nimlsp-master.repo  = "nimlsp";
  inputs.src-nimlsp-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlsp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimlsp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}