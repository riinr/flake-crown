{
  description = ''Nim ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-master.flake = false;
  inputs.src-norm-master.owner = "moigagoo";
  inputs.src-norm-master.ref   = "refs/heads/master";
  inputs.src-norm-master.repo  = "norm";
  inputs.src-norm-master.type  = "github";
  
  inputs."ndb".dir   = "nimpkgs/n/ndb";
  inputs."ndb".owner = "riinr";
  inputs."ndb".ref   = "flake-pinning";
  inputs."ndb".repo  = "flake-nimble";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}