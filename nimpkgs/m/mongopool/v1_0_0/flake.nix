{
  description = ''MongoDb pooled driver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mongopool-v1_0_0.flake = false;
  inputs.src-mongopool-v1_0_0.owner = "JohnAD";
  inputs.src-mongopool-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-mongopool-v1_0_0.repo  = "mongopool";
  inputs.src-mongopool-v1_0_0.type  = "github";
  
  inputs."bson".dir   = "nimpkgs/b/bson";
  inputs."bson".owner = "riinr";
  inputs."bson".ref   = "flake-pinning";
  inputs."bson".repo  = "flake-nimble";
  inputs."bson".type  = "github";
  inputs."bson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram".dir   = "nimpkgs/s/scram";
  inputs."scram".owner = "riinr";
  inputs."scram".ref   = "flake-pinning";
  inputs."scram".repo  = "flake-nimble";
  inputs."scram".type  = "github";
  inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mongopool-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mongopool-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}