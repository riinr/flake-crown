{
  description = ''Nim ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norm-2_1_2.flake = false;
  inputs.src-norm-2_1_2.owner = "moigagoo";
  inputs.src-norm-2_1_2.ref   = "refs/tags/2.1.2";
  inputs.src-norm-2_1_2.repo  = "norm";
  inputs.src-norm-2_1_2.type  = "github";
  
  inputs."ndb".owner = "nim-nix-pkgs";
  inputs."ndb".ref   = "master";
  inputs."ndb".repo  = "ndb";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norm-2_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norm-2_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}