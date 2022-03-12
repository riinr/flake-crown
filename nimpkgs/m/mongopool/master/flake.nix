{
  description = ''MongoDb pooled driver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mongopool-master.flake = false;
  inputs.src-mongopool-master.owner = "JohnAD";
  inputs.src-mongopool-master.ref   = "refs/heads/master";
  inputs.src-mongopool-master.repo  = "mongopool";
  inputs.src-mongopool-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mongopool-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mongopool-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}