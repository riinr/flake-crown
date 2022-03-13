{
  description = ''Async MySQL Connector write in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."amysql-master".dir   = "master";
  inputs."amysql-master".owner = "nim-nix-pkgs";
  inputs."amysql-master".ref   = "master";
  inputs."amysql-master".repo  = "amysql";
  inputs."amysql-master".type  = "github";
  inputs."amysql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_1_0".dir   = "v0_1_0";
  inputs."amysql-v0_1_0".owner = "nim-nix-pkgs";
  inputs."amysql-v0_1_0".ref   = "master";
  inputs."amysql-v0_1_0".repo  = "amysql";
  inputs."amysql-v0_1_0".type  = "github";
  inputs."amysql-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_6_0".dir   = "v0_6_0";
  inputs."amysql-v0_6_0".owner = "nim-nix-pkgs";
  inputs."amysql-v0_6_0".ref   = "master";
  inputs."amysql-v0_6_0".repo  = "amysql";
  inputs."amysql-v0_6_0".type  = "github";
  inputs."amysql-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_6_1".dir   = "v0_6_1";
  inputs."amysql-v0_6_1".owner = "nim-nix-pkgs";
  inputs."amysql-v0_6_1".ref   = "master";
  inputs."amysql-v0_6_1".repo  = "amysql";
  inputs."amysql-v0_6_1".type  = "github";
  inputs."amysql-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_0".dir   = "v0_7_0";
  inputs."amysql-v0_7_0".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_0".ref   = "master";
  inputs."amysql-v0_7_0".repo  = "amysql";
  inputs."amysql-v0_7_0".type  = "github";
  inputs."amysql-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_1".dir   = "v0_7_1";
  inputs."amysql-v0_7_1".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_1".ref   = "master";
  inputs."amysql-v0_7_1".repo  = "amysql";
  inputs."amysql-v0_7_1".type  = "github";
  inputs."amysql-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_2".dir   = "v0_7_2";
  inputs."amysql-v0_7_2".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_2".ref   = "master";
  inputs."amysql-v0_7_2".repo  = "amysql";
  inputs."amysql-v0_7_2".type  = "github";
  inputs."amysql-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_3".dir   = "v0_7_3";
  inputs."amysql-v0_7_3".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_3".ref   = "master";
  inputs."amysql-v0_7_3".repo  = "amysql";
  inputs."amysql-v0_7_3".type  = "github";
  inputs."amysql-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_4".dir   = "v0_7_4";
  inputs."amysql-v0_7_4".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_4".ref   = "master";
  inputs."amysql-v0_7_4".repo  = "amysql";
  inputs."amysql-v0_7_4".type  = "github";
  inputs."amysql-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_5".dir   = "v0_7_5";
  inputs."amysql-v0_7_5".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_5".ref   = "master";
  inputs."amysql-v0_7_5".repo  = "amysql";
  inputs."amysql-v0_7_5".type  = "github";
  inputs."amysql-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_6".dir   = "v0_7_6";
  inputs."amysql-v0_7_6".owner = "nim-nix-pkgs";
  inputs."amysql-v0_7_6".ref   = "master";
  inputs."amysql-v0_7_6".repo  = "amysql";
  inputs."amysql-v0_7_6".type  = "github";
  inputs."amysql-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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