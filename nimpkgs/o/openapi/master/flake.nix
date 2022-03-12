{
  description = ''OpenAPI Code Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openapi-master.flake = false;
  inputs.src-openapi-master.owner = "disruptek";
  inputs.src-openapi-master.ref   = "refs/heads/master";
  inputs.src-openapi-master.repo  = "openapi";
  inputs.src-openapi-master.type  = "github";
  
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
  
  inputs."https://github.com/disruptek/rest.git".dir   = "nimpkgs/h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".type  = "github";
  inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openapi-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-openapi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}