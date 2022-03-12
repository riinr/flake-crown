{
  description = ''RethinkDB driver for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rethinkdb-0_1_5.flake = false;
  inputs.src-rethinkdb-0_1_5.owner = "OpenSystemsLab";
  inputs.src-rethinkdb-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-rethinkdb-0_1_5.repo  = "rethinkdb.nim";
  inputs.src-rethinkdb-0_1_5.type  = "github";
  
  inputs."struct".dir   = "nimpkgs/s/struct";
  inputs."struct".owner = "riinr";
  inputs."struct".ref   = "flake-pinning";
  inputs."struct".repo  = "flake-nimble";
  inputs."struct".type  = "github";
  inputs."struct".inputs.nixpkgs.follows = "nixpkgs";
  inputs."struct".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rethinkdb-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rethinkdb-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}