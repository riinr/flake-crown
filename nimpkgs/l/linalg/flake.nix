{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."linalg-master".dir   = "master";
  inputs."linalg-master".owner = "nim-nix-pkgs";
  inputs."linalg-master".ref   = "master";
  inputs."linalg-master".repo  = "linalg";
  inputs."linalg-master".type  = "github";
  inputs."linalg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_0".dir   = "0_1_0";
  inputs."linalg-0_1_0".owner = "nim-nix-pkgs";
  inputs."linalg-0_1_0".ref   = "master";
  inputs."linalg-0_1_0".repo  = "linalg";
  inputs."linalg-0_1_0".type  = "github";
  inputs."linalg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_1".dir   = "0_1_1";
  inputs."linalg-0_1_1".owner = "nim-nix-pkgs";
  inputs."linalg-0_1_1".ref   = "master";
  inputs."linalg-0_1_1".repo  = "linalg";
  inputs."linalg-0_1_1".type  = "github";
  inputs."linalg-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_2".dir   = "0_1_2";
  inputs."linalg-0_1_2".owner = "nim-nix-pkgs";
  inputs."linalg-0_1_2".ref   = "master";
  inputs."linalg-0_1_2".repo  = "linalg";
  inputs."linalg-0_1_2".type  = "github";
  inputs."linalg-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_3".dir   = "0_1_3";
  inputs."linalg-0_1_3".owner = "nim-nix-pkgs";
  inputs."linalg-0_1_3".ref   = "master";
  inputs."linalg-0_1_3".repo  = "linalg";
  inputs."linalg-0_1_3".type  = "github";
  inputs."linalg-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_4".dir   = "0_1_4";
  inputs."linalg-0_1_4".owner = "nim-nix-pkgs";
  inputs."linalg-0_1_4".ref   = "master";
  inputs."linalg-0_1_4".repo  = "linalg";
  inputs."linalg-0_1_4".type  = "github";
  inputs."linalg-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_5".dir   = "0_1_5";
  inputs."linalg-0_1_5".owner = "nim-nix-pkgs";
  inputs."linalg-0_1_5".ref   = "master";
  inputs."linalg-0_1_5".repo  = "linalg";
  inputs."linalg-0_1_5".type  = "github";
  inputs."linalg-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_2_0".dir   = "0_2_0";
  inputs."linalg-0_2_0".owner = "nim-nix-pkgs";
  inputs."linalg-0_2_0".ref   = "master";
  inputs."linalg-0_2_0".repo  = "linalg";
  inputs."linalg-0_2_0".type  = "github";
  inputs."linalg-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_2_1".dir   = "0_2_1";
  inputs."linalg-0_2_1".owner = "nim-nix-pkgs";
  inputs."linalg-0_2_1".ref   = "master";
  inputs."linalg-0_2_1".repo  = "linalg";
  inputs."linalg-0_2_1".type  = "github";
  inputs."linalg-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_2_2".dir   = "0_2_2";
  inputs."linalg-0_2_2".owner = "nim-nix-pkgs";
  inputs."linalg-0_2_2".ref   = "master";
  inputs."linalg-0_2_2".repo  = "linalg";
  inputs."linalg-0_2_2".type  = "github";
  inputs."linalg-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_3_0".dir   = "0_3_0";
  inputs."linalg-0_3_0".owner = "nim-nix-pkgs";
  inputs."linalg-0_3_0".ref   = "master";
  inputs."linalg-0_3_0".repo  = "linalg";
  inputs."linalg-0_3_0".type  = "github";
  inputs."linalg-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_0".dir   = "0_4_0";
  inputs."linalg-0_4_0".owner = "nim-nix-pkgs";
  inputs."linalg-0_4_0".ref   = "master";
  inputs."linalg-0_4_0".repo  = "linalg";
  inputs."linalg-0_4_0".type  = "github";
  inputs."linalg-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_1".dir   = "0_4_1";
  inputs."linalg-0_4_1".owner = "nim-nix-pkgs";
  inputs."linalg-0_4_1".ref   = "master";
  inputs."linalg-0_4_1".repo  = "linalg";
  inputs."linalg-0_4_1".type  = "github";
  inputs."linalg-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_2".dir   = "0_4_2";
  inputs."linalg-0_4_2".owner = "nim-nix-pkgs";
  inputs."linalg-0_4_2".ref   = "master";
  inputs."linalg-0_4_2".repo  = "linalg";
  inputs."linalg-0_4_2".type  = "github";
  inputs."linalg-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_3".dir   = "0_4_3";
  inputs."linalg-0_4_3".owner = "nim-nix-pkgs";
  inputs."linalg-0_4_3".ref   = "master";
  inputs."linalg-0_4_3".repo  = "linalg";
  inputs."linalg-0_4_3".type  = "github";
  inputs."linalg-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_4".dir   = "0_4_4";
  inputs."linalg-0_4_4".owner = "nim-nix-pkgs";
  inputs."linalg-0_4_4".ref   = "master";
  inputs."linalg-0_4_4".repo  = "linalg";
  inputs."linalg-0_4_4".type  = "github";
  inputs."linalg-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_0".dir   = "0_5_0";
  inputs."linalg-0_5_0".owner = "nim-nix-pkgs";
  inputs."linalg-0_5_0".ref   = "master";
  inputs."linalg-0_5_0".repo  = "linalg";
  inputs."linalg-0_5_0".type  = "github";
  inputs."linalg-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_1".dir   = "0_5_1";
  inputs."linalg-0_5_1".owner = "nim-nix-pkgs";
  inputs."linalg-0_5_1".ref   = "master";
  inputs."linalg-0_5_1".repo  = "linalg";
  inputs."linalg-0_5_1".type  = "github";
  inputs."linalg-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_2".dir   = "0_5_2";
  inputs."linalg-0_5_2".owner = "nim-nix-pkgs";
  inputs."linalg-0_5_2".ref   = "master";
  inputs."linalg-0_5_2".repo  = "linalg";
  inputs."linalg-0_5_2".type  = "github";
  inputs."linalg-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_3".dir   = "0_5_3";
  inputs."linalg-0_5_3".owner = "nim-nix-pkgs";
  inputs."linalg-0_5_3".ref   = "master";
  inputs."linalg-0_5_3".repo  = "linalg";
  inputs."linalg-0_5_3".type  = "github";
  inputs."linalg-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_0".dir   = "0_6_0";
  inputs."linalg-0_6_0".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_0".ref   = "master";
  inputs."linalg-0_6_0".repo  = "linalg";
  inputs."linalg-0_6_0".type  = "github";
  inputs."linalg-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_1".dir   = "0_6_1";
  inputs."linalg-0_6_1".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_1".ref   = "master";
  inputs."linalg-0_6_1".repo  = "linalg";
  inputs."linalg-0_6_1".type  = "github";
  inputs."linalg-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_2".dir   = "0_6_2";
  inputs."linalg-0_6_2".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_2".ref   = "master";
  inputs."linalg-0_6_2".repo  = "linalg";
  inputs."linalg-0_6_2".type  = "github";
  inputs."linalg-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_3".dir   = "0_6_3";
  inputs."linalg-0_6_3".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_3".ref   = "master";
  inputs."linalg-0_6_3".repo  = "linalg";
  inputs."linalg-0_6_3".type  = "github";
  inputs."linalg-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_4".dir   = "0_6_4";
  inputs."linalg-0_6_4".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_4".ref   = "master";
  inputs."linalg-0_6_4".repo  = "linalg";
  inputs."linalg-0_6_4".type  = "github";
  inputs."linalg-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_5".dir   = "0_6_5";
  inputs."linalg-0_6_5".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_5".ref   = "master";
  inputs."linalg-0_6_5".repo  = "linalg";
  inputs."linalg-0_6_5".type  = "github";
  inputs."linalg-0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_6".dir   = "0_6_6";
  inputs."linalg-0_6_6".owner = "nim-nix-pkgs";
  inputs."linalg-0_6_6".ref   = "master";
  inputs."linalg-0_6_6".repo  = "linalg";
  inputs."linalg-0_6_6".type  = "github";
  inputs."linalg-0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-raw-pointers".dir   = "raw-pointers";
  inputs."linalg-raw-pointers".owner = "nim-nix-pkgs";
  inputs."linalg-raw-pointers".ref   = "master";
  inputs."linalg-raw-pointers".repo  = "linalg";
  inputs."linalg-raw-pointers".type  = "github";
  inputs."linalg-raw-pointers".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-raw-pointers".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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