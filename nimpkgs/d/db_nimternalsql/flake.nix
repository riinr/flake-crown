{
  description = ''An in-memory SQL database library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_nimternalsql-main".dir   = "main";
  inputs."db_nimternalsql-main".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-main".ref   = "master";
  inputs."db_nimternalsql-main".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-main".type  = "github";
  inputs."db_nimternalsql-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_0_0".dir   = "v1_0_0";
  inputs."db_nimternalsql-v1_0_0".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-v1_0_0".ref   = "master";
  inputs."db_nimternalsql-v1_0_0".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-v1_0_0".type  = "github";
  inputs."db_nimternalsql-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_1_0".dir   = "v1_1_0";
  inputs."db_nimternalsql-v1_1_0".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-v1_1_0".ref   = "master";
  inputs."db_nimternalsql-v1_1_0".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-v1_1_0".type  = "github";
  inputs."db_nimternalsql-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_2_0".dir   = "v1_2_0";
  inputs."db_nimternalsql-v1_2_0".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-v1_2_0".ref   = "master";
  inputs."db_nimternalsql-v1_2_0".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-v1_2_0".type  = "github";
  inputs."db_nimternalsql-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_3_0".dir   = "v1_3_0";
  inputs."db_nimternalsql-v1_3_0".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-v1_3_0".ref   = "master";
  inputs."db_nimternalsql-v1_3_0".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-v1_3_0".type  = "github";
  inputs."db_nimternalsql-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_3_1".dir   = "v1_3_1";
  inputs."db_nimternalsql-v1_3_1".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-v1_3_1".ref   = "master";
  inputs."db_nimternalsql-v1_3_1".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-v1_3_1".type  = "github";
  inputs."db_nimternalsql-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_nimternalsql-v1_3_2".dir   = "v1_3_2";
  inputs."db_nimternalsql-v1_3_2".owner = "nim-nix-pkgs";
  inputs."db_nimternalsql-v1_3_2".ref   = "master";
  inputs."db_nimternalsql-v1_3_2".repo  = "db_nimternalsql";
  inputs."db_nimternalsql-v1_3_2".type  = "github";
  inputs."db_nimternalsql-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_nimternalsql-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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