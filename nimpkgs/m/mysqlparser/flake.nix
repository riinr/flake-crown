{
  description = ''An efficient packet parser for MySQL Client/Server Protocol. Help you to write Mysql communication in either BLOCKIONG-IO or NON-BLOCKING-IO.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mysqlparser-master".dir   = "master";
  inputs."mysqlparser-master".owner = "nim-nix-pkgs";
  inputs."mysqlparser-master".ref   = "master";
  inputs."mysqlparser-master".repo  = "mysqlparser";
  inputs."mysqlparser-master".type  = "github";
  inputs."mysqlparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mysqlparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mysqlparser-0_2_0".dir   = "0_2_0";
  inputs."mysqlparser-0_2_0".owner = "nim-nix-pkgs";
  inputs."mysqlparser-0_2_0".ref   = "master";
  inputs."mysqlparser-0_2_0".repo  = "mysqlparser";
  inputs."mysqlparser-0_2_0".type  = "github";
  inputs."mysqlparser-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mysqlparser-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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