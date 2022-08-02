{
  description = ''MongoDB pooled client for threaded applications such as web servers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mongopool-master.flake = false;
  inputs.src-mongopool-master.ref   = "refs/heads/master";
  inputs.src-mongopool-master.owner = "JohnAD";
  inputs.src-mongopool-master.repo  = "mongopool";
  inputs.src-mongopool-master.type  = "github";
  
  inputs."bson".owner = "nim-nix-pkgs";
  inputs."bson".ref   = "master";
  inputs."bson".repo  = "bson";
  inputs."bson".dir   = "v1_1_2";
  inputs."bson".type  = "github";
  inputs."bson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram".owner = "nim-nix-pkgs";
  inputs."scram".ref   = "master";
  inputs."scram".repo  = "scram";
  inputs."scram".dir   = "0_2_0";
  inputs."scram".type  = "github";
  inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mongopool-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mongopool-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}