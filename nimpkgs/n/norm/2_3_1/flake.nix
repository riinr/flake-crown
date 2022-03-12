{
  description = ''Nim ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-2_3_1.flake = false;
  inputs.src-norm-2_3_1.owner = "moigagoo";
  inputs.src-norm-2_3_1.ref   = "refs/tags/2.3.1";
  inputs.src-norm-2_3_1.repo  = "norm";
  inputs.src-norm-2_3_1.type  = "github";
  
  inputs."ndb".dir   = "nimpkgs/n/ndb";
  inputs."ndb".owner = "riinr";
  inputs."ndb".ref   = "flake-pinning";
  inputs."ndb".repo  = "flake-nimble";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimibook".dir   = "nimpkgs/n/nimibook";
  inputs."nimibook".owner = "riinr";
  inputs."nimibook".ref   = "flake-pinning";
  inputs."nimibook".repo  = "flake-nimble";
  inputs."nimibook".type  = "github";
  inputs."nimibook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimibook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-2_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norm-2_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}