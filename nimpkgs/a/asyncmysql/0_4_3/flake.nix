{
  description = ''Asynchronous MySQL connector written in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncmysql-0_4_3.flake = false;
  inputs.src-asyncmysql-0_4_3.owner = "tulayang";
  inputs.src-asyncmysql-0_4_3.ref   = "refs/tags/0.4.3";
  inputs.src-asyncmysql-0_4_3.repo  = "asyncmysql";
  inputs.src-asyncmysql-0_4_3.type  = "github";
  
  inputs."mysqlparser".dir   = "nimpkgs/m/mysqlparser";
  inputs."mysqlparser".owner = "riinr";
  inputs."mysqlparser".ref   = "flake-pinning";
  inputs."mysqlparser".repo  = "flake-nimble";
  inputs."mysqlparser".type  = "github";
  inputs."mysqlparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mysqlparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncmysql-0_4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asyncmysql-0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}