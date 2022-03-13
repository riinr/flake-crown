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
  
  inputs."bson".owner = "nim-nix-pkgs";
  inputs."bson".ref   = "master";
  inputs."bson".repo  = "bson";
  inputs."bson".type  = "github";
  inputs."bson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram".owner = "nim-nix-pkgs";
  inputs."scram".ref   = "master";
  inputs."scram".repo  = "scram";
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