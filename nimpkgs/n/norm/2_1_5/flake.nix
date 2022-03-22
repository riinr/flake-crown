{
  description = ''Nim ORM for SQLite and PostgreSQL.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-2_1_5.flake = false;
  inputs.src-norm-2_1_5.owner = "moigagoo";
  inputs.src-norm-2_1_5.ref   = "2_1_5";
  inputs.src-norm-2_1_5.repo  = "norm";
  inputs.src-norm-2_1_5.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-2_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norm-2_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}