{
  description = ''Asynchronous MySQL connector written in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asyncmysql-master.flake = false;
  inputs.src-asyncmysql-master.ref   = "refs/heads/master";
  inputs.src-asyncmysql-master.owner = "tulayang";
  inputs.src-asyncmysql-master.repo  = "asyncmysql";
  inputs.src-asyncmysql-master.type  = "github";
  
  inputs."mysqlparser".owner = "nim-nix-pkgs";
  inputs."mysqlparser".ref   = "master";
  inputs."mysqlparser".repo  = "mysqlparser";
  inputs."mysqlparser".dir   = "0_2_0";
  inputs."mysqlparser".type  = "github";
  inputs."mysqlparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mysqlparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asyncmysql-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-asyncmysql-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}