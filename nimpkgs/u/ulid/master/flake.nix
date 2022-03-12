{
  description = ''Universally Unique Lexicographically Sortable Identifier'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ulid-master.flake = false;
  inputs.src-ulid-master.owner = "adelq";
  inputs.src-ulid-master.ref   = "refs/heads/master";
  inputs.src-ulid-master.repo  = "ulid";
  inputs.src-ulid-master.type  = "github";
  
  inputs."random".dir   = "nimpkgs/r/random";
  inputs."random".owner = "riinr";
  inputs."random".ref   = "flake-pinning";
  inputs."random".repo  = "flake-nimble";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ulid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ulid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}