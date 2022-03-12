{
  description = ''RethinkDB driver for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rethinkdb-master.flake = false;
  inputs.src-rethinkdb-master.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-master.ref   = "refs/heads/master";
  inputs.src-rethinkdb-master.repo  = "rethinkdb.nim";
  inputs.src-rethinkdb-master.type  = "github";
  
  inputs."struct".dir   = "nimpkgs/s/struct";
  inputs."struct".owner = "riinr";
  inputs."struct".ref   = "flake-pinning";
  inputs."struct".repo  = "flake-nimble";
  inputs."struct".type  = "github";
  inputs."struct".inputs.nixpkgs.follows = "nixpkgs";
  inputs."struct".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rethinkdb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rethinkdb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}