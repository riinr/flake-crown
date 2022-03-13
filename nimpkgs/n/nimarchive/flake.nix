{
  description = ''libarchive wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimarchive-master".dir   = "master";
  inputs."nimarchive-master".owner = "nim-nix-pkgs";
  inputs."nimarchive-master".ref   = "master";
  inputs."nimarchive-master".repo  = "nimarchive";
  inputs."nimarchive-master".type  = "github";
  inputs."nimarchive-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_1".dir   = "v0_1_1";
  inputs."nimarchive-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_1_1".ref   = "master";
  inputs."nimarchive-v0_1_1".repo  = "nimarchive";
  inputs."nimarchive-v0_1_1".type  = "github";
  inputs."nimarchive-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_2".dir   = "v0_1_2";
  inputs."nimarchive-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_1_2".ref   = "master";
  inputs."nimarchive-v0_1_2".repo  = "nimarchive";
  inputs."nimarchive-v0_1_2".type  = "github";
  inputs."nimarchive-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_3".dir   = "v0_1_3";
  inputs."nimarchive-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_1_3".ref   = "master";
  inputs."nimarchive-v0_1_3".repo  = "nimarchive";
  inputs."nimarchive-v0_1_3".type  = "github";
  inputs."nimarchive-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_4".dir   = "v0_1_4";
  inputs."nimarchive-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_1_4".ref   = "master";
  inputs."nimarchive-v0_1_4".repo  = "nimarchive";
  inputs."nimarchive-v0_1_4".type  = "github";
  inputs."nimarchive-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_2_0".dir   = "v0_2_0";
  inputs."nimarchive-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_2_0".ref   = "master";
  inputs."nimarchive-v0_2_0".repo  = "nimarchive";
  inputs."nimarchive-v0_2_0".type  = "github";
  inputs."nimarchive-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_2_1".dir   = "v0_2_1";
  inputs."nimarchive-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_2_1".ref   = "master";
  inputs."nimarchive-v0_2_1".repo  = "nimarchive";
  inputs."nimarchive-v0_2_1".type  = "github";
  inputs."nimarchive-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_0".dir   = "v0_3_0";
  inputs."nimarchive-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_0".ref   = "master";
  inputs."nimarchive-v0_3_0".repo  = "nimarchive";
  inputs."nimarchive-v0_3_0".type  = "github";
  inputs."nimarchive-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_1".dir   = "v0_3_1";
  inputs."nimarchive-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_1".ref   = "master";
  inputs."nimarchive-v0_3_1".repo  = "nimarchive";
  inputs."nimarchive-v0_3_1".type  = "github";
  inputs."nimarchive-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_2".dir   = "v0_3_2";
  inputs."nimarchive-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_2".ref   = "master";
  inputs."nimarchive-v0_3_2".repo  = "nimarchive";
  inputs."nimarchive-v0_3_2".type  = "github";
  inputs."nimarchive-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_3".dir   = "v0_3_3";
  inputs."nimarchive-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_3".ref   = "master";
  inputs."nimarchive-v0_3_3".repo  = "nimarchive";
  inputs."nimarchive-v0_3_3".type  = "github";
  inputs."nimarchive-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_4".dir   = "v0_3_4";
  inputs."nimarchive-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_4".ref   = "master";
  inputs."nimarchive-v0_3_4".repo  = "nimarchive";
  inputs."nimarchive-v0_3_4".type  = "github";
  inputs."nimarchive-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_5".dir   = "v0_3_5";
  inputs."nimarchive-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_5".ref   = "master";
  inputs."nimarchive-v0_3_5".repo  = "nimarchive";
  inputs."nimarchive-v0_3_5".type  = "github";
  inputs."nimarchive-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_6".dir   = "v0_3_6";
  inputs."nimarchive-v0_3_6".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_3_6".ref   = "master";
  inputs."nimarchive-v0_3_6".repo  = "nimarchive";
  inputs."nimarchive-v0_3_6".type  = "github";
  inputs."nimarchive-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_4_0".dir   = "v0_4_0";
  inputs."nimarchive-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_4_0".ref   = "master";
  inputs."nimarchive-v0_4_0".repo  = "nimarchive";
  inputs."nimarchive-v0_4_0".type  = "github";
  inputs."nimarchive-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_4_1".dir   = "v0_4_1";
  inputs."nimarchive-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_4_1".ref   = "master";
  inputs."nimarchive-v0_4_1".repo  = "nimarchive";
  inputs."nimarchive-v0_4_1".type  = "github";
  inputs."nimarchive-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_0".dir   = "v0_5_0";
  inputs."nimarchive-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_5_0".ref   = "master";
  inputs."nimarchive-v0_5_0".repo  = "nimarchive";
  inputs."nimarchive-v0_5_0".type  = "github";
  inputs."nimarchive-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_1".dir   = "v0_5_1";
  inputs."nimarchive-v0_5_1".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_5_1".ref   = "master";
  inputs."nimarchive-v0_5_1".repo  = "nimarchive";
  inputs."nimarchive-v0_5_1".type  = "github";
  inputs."nimarchive-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_2".dir   = "v0_5_2";
  inputs."nimarchive-v0_5_2".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_5_2".ref   = "master";
  inputs."nimarchive-v0_5_2".repo  = "nimarchive";
  inputs."nimarchive-v0_5_2".type  = "github";
  inputs."nimarchive-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_3".dir   = "v0_5_3";
  inputs."nimarchive-v0_5_3".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_5_3".ref   = "master";
  inputs."nimarchive-v0_5_3".repo  = "nimarchive";
  inputs."nimarchive-v0_5_3".type  = "github";
  inputs."nimarchive-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_4".dir   = "v0_5_4";
  inputs."nimarchive-v0_5_4".owner = "nim-nix-pkgs";
  inputs."nimarchive-v0_5_4".ref   = "master";
  inputs."nimarchive-v0_5_4".repo  = "nimarchive";
  inputs."nimarchive-v0_5_4".type  = "github";
  inputs."nimarchive-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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