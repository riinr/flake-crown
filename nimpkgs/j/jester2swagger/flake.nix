{
  description = ''Converts a file with Jester routes to Swagger JSON which can be imported in Postman.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jester2swagger-main".dir   = "main";
  inputs."jester2swagger-main".owner = "nim-nix-pkgs";
  inputs."jester2swagger-main".ref   = "master";
  inputs."jester2swagger-main".repo  = "jester2swagger";
  inputs."jester2swagger-main".type  = "github";
  inputs."jester2swagger-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester2swagger-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}