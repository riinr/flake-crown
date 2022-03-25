{
  description = ''Nim ORM for SQLite and PostgreSQL.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-2_3_7.flake = false;
  inputs.src-norm-2_3_7.ref   = "refs/tags/2.3.7";
  inputs.src-norm-2_3_7.owner = "moigagoo";
  inputs.src-norm-2_3_7.repo  = "norm";
  inputs.src-norm-2_3_7.type  = "github";
  
  inputs."ndb".owner = "nim-nix-pkgs";
  inputs."ndb".ref   = "master";
  inputs."ndb".repo  = "ndb";
  inputs."ndb".dir   = "v0_19_9";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-2_3_7"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-norm-2_3_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}