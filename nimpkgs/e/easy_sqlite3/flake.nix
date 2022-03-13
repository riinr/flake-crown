{
  description = ''Yet another SQLite wrapper for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."easy_sqlite3-develop".dir   = "develop";
  inputs."easy_sqlite3-develop".owner = "nim-nix-pkgs";
  inputs."easy_sqlite3-develop".ref   = "master";
  inputs."easy_sqlite3-develop".repo  = "easy_sqlite3";
  inputs."easy_sqlite3-develop".type  = "github";
  inputs."easy_sqlite3-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_sqlite3-v0_1_0".dir   = "v0_1_0";
  inputs."easy_sqlite3-v0_1_0".owner = "nim-nix-pkgs";
  inputs."easy_sqlite3-v0_1_0".ref   = "master";
  inputs."easy_sqlite3-v0_1_0".repo  = "easy_sqlite3";
  inputs."easy_sqlite3-v0_1_0".type  = "github";
  inputs."easy_sqlite3-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_sqlite3-v0_1_1".dir   = "v0_1_1";
  inputs."easy_sqlite3-v0_1_1".owner = "nim-nix-pkgs";
  inputs."easy_sqlite3-v0_1_1".ref   = "master";
  inputs."easy_sqlite3-v0_1_1".repo  = "easy_sqlite3";
  inputs."easy_sqlite3-v0_1_1".type  = "github";
  inputs."easy_sqlite3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_sqlite3-v0_1_2".dir   = "v0_1_2";
  inputs."easy_sqlite3-v0_1_2".owner = "nim-nix-pkgs";
  inputs."easy_sqlite3-v0_1_2".ref   = "master";
  inputs."easy_sqlite3-v0_1_2".repo  = "easy_sqlite3";
  inputs."easy_sqlite3-v0_1_2".type  = "github";
  inputs."easy_sqlite3-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_sqlite3-v0_1_3".dir   = "v0_1_3";
  inputs."easy_sqlite3-v0_1_3".owner = "nim-nix-pkgs";
  inputs."easy_sqlite3-v0_1_3".ref   = "master";
  inputs."easy_sqlite3-v0_1_3".repo  = "easy_sqlite3";
  inputs."easy_sqlite3-v0_1_3".type  = "github";
  inputs."easy_sqlite3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_sqlite3-v0_1_4".dir   = "v0_1_4";
  inputs."easy_sqlite3-v0_1_4".owner = "nim-nix-pkgs";
  inputs."easy_sqlite3-v0_1_4".ref   = "master";
  inputs."easy_sqlite3-v0_1_4".repo  = "easy_sqlite3";
  inputs."easy_sqlite3-v0_1_4".type  = "github";
  inputs."easy_sqlite3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_sqlite3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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