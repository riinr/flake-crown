{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimnews-master.flake = false;
  inputs.src-nimnews-master.owner = "mildred";
  inputs.src-nimnews-master.ref   = "refs/heads/master";
  inputs.src-nimnews-master.repo  = "nimnews";
  inputs.src-nimnews-master.type  = "github";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nuuid".dir   = "nimpkgs/n/nuuid";
  inputs."nuuid".owner = "riinr";
  inputs."nuuid".ref   = "flake-pinning";
  inputs."nuuid".repo  = "flake-nimble";
  inputs."nuuid".type  = "github";
  inputs."nuuid".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nuuid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram".dir   = "nimpkgs/s/scram";
  inputs."scram".owner = "riinr";
  inputs."scram".ref   = "flake-pinning";
  inputs."scram".repo  = "flake-nimble";
  inputs."scram".type  = "github";
  inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."passgen".dir   = "nimpkgs/p/passgen";
  inputs."passgen".owner = "riinr";
  inputs."passgen".ref   = "flake-pinning";
  inputs."passgen".repo  = "flake-nimble";
  inputs."passgen".type  = "github";
  inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".dir   = "nimpkgs/n/npeg";
  inputs."npeg".owner = "riinr";
  inputs."npeg".ref   = "flake-pinning";
  inputs."npeg".repo  = "flake-nimble";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimassets".dir   = "nimpkgs/n/nimassets";
  inputs."nimassets".owner = "riinr";
  inputs."nimassets".ref   = "flake-pinning";
  inputs."nimassets".repo  = "flake-nimble";
  inputs."nimassets".type  = "github";
  inputs."nimassets".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimassets".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue".dir   = "nimpkgs/p/prologue";
  inputs."prologue".owner = "riinr";
  inputs."prologue".ref   = "flake-pinning";
  inputs."prologue".repo  = "flake-nimble";
  inputs."prologue".type  = "github";
  inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."templates".dir   = "nimpkgs/t/templates";
  inputs."templates".owner = "riinr";
  inputs."templates".ref   = "flake-pinning";
  inputs."templates".repo  = "flake-nimble";
  inputs."templates".type  = "github";
  inputs."templates".inputs.nixpkgs.follows = "nixpkgs";
  inputs."templates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctools".dir   = "nimpkgs/a/asynctools";
  inputs."asynctools".owner = "riinr";
  inputs."asynctools".ref   = "flake-pinning";
  inputs."asynctools".repo  = "flake-nimble";
  inputs."asynctools".type  = "github";
  inputs."asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimnews-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}