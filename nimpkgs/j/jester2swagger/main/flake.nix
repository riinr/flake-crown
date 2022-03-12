{
  description = ''Converts a file with Jester routes to Swagger JSON which can be imported in Postman.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jester2swagger-main.flake = false;
  inputs.src-jester2swagger-main.owner = "ThomasTJdev";
  inputs.src-jester2swagger-main.ref   = "refs/heads/main";
  inputs.src-jester2swagger-main.repo  = "jester2swagger";
  inputs.src-jester2swagger-main.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jester2swagger-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jester2swagger-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}