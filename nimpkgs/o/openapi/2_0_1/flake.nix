{
  description = ''OpenAPI Code Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openapi-2_0_1.flake = false;
  inputs.src-openapi-2_0_1.owner = "disruptek";
  inputs.src-openapi-2_0_1.ref   = "refs/tags/2.0.1";
  inputs.src-openapi-2_0_1.repo  = "openapi";
  inputs.src-openapi-2_0_1.type  = "github";
  
  inputs."npeg".dir   = "nimpkgs/n/npeg";
  inputs."npeg".owner = "riinr";
  inputs."npeg".ref   = "flake-pinning";
  inputs."npeg".repo  = "flake-nimble";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach".dir   = "nimpkgs/f/foreach";
  inputs."foreach".owner = "riinr";
  inputs."foreach".ref   = "flake-pinning";
  inputs."foreach".repo  = "flake-nimble";
  inputs."foreach".type  = "github";
  inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openapi-2_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-openapi-2_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}