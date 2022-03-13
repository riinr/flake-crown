{
  description = ''RethinkDB driver for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rethinkdb-master".dir   = "master";
  inputs."rethinkdb-master".owner = "nim-nix-pkgs";
  inputs."rethinkdb-master".ref   = "master";
  inputs."rethinkdb-master".repo  = "rethinkdb";
  inputs."rethinkdb-master".type  = "github";
  inputs."rethinkdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_0".dir   = "0_1_0";
  inputs."rethinkdb-0_1_0".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_0".ref   = "master";
  inputs."rethinkdb-0_1_0".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_0".type  = "github";
  inputs."rethinkdb-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_1".dir   = "0_1_1";
  inputs."rethinkdb-0_1_1".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_1".ref   = "master";
  inputs."rethinkdb-0_1_1".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_1".type  = "github";
  inputs."rethinkdb-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_2".dir   = "0_1_2";
  inputs."rethinkdb-0_1_2".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_2".ref   = "master";
  inputs."rethinkdb-0_1_2".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_2".type  = "github";
  inputs."rethinkdb-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_3".dir   = "0_1_3";
  inputs."rethinkdb-0_1_3".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_3".ref   = "master";
  inputs."rethinkdb-0_1_3".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_3".type  = "github";
  inputs."rethinkdb-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_4".dir   = "0_1_4";
  inputs."rethinkdb-0_1_4".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_4".ref   = "master";
  inputs."rethinkdb-0_1_4".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_4".type  = "github";
  inputs."rethinkdb-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_5".dir   = "0_1_5";
  inputs."rethinkdb-0_1_5".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_5".ref   = "master";
  inputs."rethinkdb-0_1_5".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_5".type  = "github";
  inputs."rethinkdb-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_1_6".dir   = "0_1_6";
  inputs."rethinkdb-0_1_6".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_1_6".ref   = "master";
  inputs."rethinkdb-0_1_6".repo  = "rethinkdb";
  inputs."rethinkdb-0_1_6".type  = "github";
  inputs."rethinkdb-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_0".dir   = "0_2_0";
  inputs."rethinkdb-0_2_0".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_0".ref   = "master";
  inputs."rethinkdb-0_2_0".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_0".type  = "github";
  inputs."rethinkdb-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3".dir   = "0_2_3";
  inputs."rethinkdb-0_2_3".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_3".ref   = "master";
  inputs."rethinkdb-0_2_3".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_3".type  = "github";
  inputs."rethinkdb-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_1".dir   = "0_2_3_1";
  inputs."rethinkdb-0_2_3_1".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_3_1".ref   = "master";
  inputs."rethinkdb-0_2_3_1".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_3_1".type  = "github";
  inputs."rethinkdb-0_2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_2".dir   = "0_2_3_2";
  inputs."rethinkdb-0_2_3_2".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_3_2".ref   = "master";
  inputs."rethinkdb-0_2_3_2".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_3_2".type  = "github";
  inputs."rethinkdb-0_2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_3".dir   = "0_2_3_3";
  inputs."rethinkdb-0_2_3_3".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_3_3".ref   = "master";
  inputs."rethinkdb-0_2_3_3".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_3_3".type  = "github";
  inputs."rethinkdb-0_2_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_4".dir   = "0_2_3_4";
  inputs."rethinkdb-0_2_3_4".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_3_4".ref   = "master";
  inputs."rethinkdb-0_2_3_4".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_3_4".type  = "github";
  inputs."rethinkdb-0_2_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_3_5".dir   = "0_2_3_5";
  inputs."rethinkdb-0_2_3_5".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_3_5".ref   = "master";
  inputs."rethinkdb-0_2_3_5".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_3_5".type  = "github";
  inputs."rethinkdb-0_2_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_4".dir   = "0_2_4";
  inputs."rethinkdb-0_2_4".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_4".ref   = "master";
  inputs."rethinkdb-0_2_4".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_4".type  = "github";
  inputs."rethinkdb-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_5".dir   = "0_2_5";
  inputs."rethinkdb-0_2_5".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_5".ref   = "master";
  inputs."rethinkdb-0_2_5".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_5".type  = "github";
  inputs."rethinkdb-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rethinkdb-0_2_6".dir   = "0_2_6";
  inputs."rethinkdb-0_2_6".owner = "nim-nix-pkgs";
  inputs."rethinkdb-0_2_6".ref   = "master";
  inputs."rethinkdb-0_2_6".repo  = "rethinkdb";
  inputs."rethinkdb-0_2_6".type  = "github";
  inputs."rethinkdb-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rethinkdb-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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