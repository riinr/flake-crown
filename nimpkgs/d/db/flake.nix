{
  description = ''Unified db access module, providing a single library module to access the db_sqlite, db_mysql and db_postgres modules.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db-master".dir   = "master";
  inputs."db-master".owner = "nim-nix-pkgs";
  inputs."db-master".ref   = "master";
  inputs."db-master".repo  = "db";
  inputs."db-master".type  = "github";
  inputs."db-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db-1_1_0".dir   = "1_1_0";
  inputs."db-1_1_0".owner = "nim-nix-pkgs";
  inputs."db-1_1_0".ref   = "master";
  inputs."db-1_1_0".repo  = "db";
  inputs."db-1_1_0".type  = "github";
  inputs."db-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}