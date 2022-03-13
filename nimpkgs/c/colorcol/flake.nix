{
  description = ''Kakoune plugin for color preview'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."colorcol-master".dir   = "master";
  inputs."colorcol-master".owner = "nim-nix-pkgs";
  inputs."colorcol-master".ref   = "master";
  inputs."colorcol-master".repo  = "colorcol";
  inputs."colorcol-master".type  = "github";
  inputs."colorcol-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_1_1".dir   = "v0_1_1";
  inputs."colorcol-v0_1_1".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_1_1".ref   = "master";
  inputs."colorcol-v0_1_1".repo  = "colorcol";
  inputs."colorcol-v0_1_1".type  = "github";
  inputs."colorcol-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_2_0".dir   = "v0_2_0";
  inputs."colorcol-v0_2_0".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_2_0".ref   = "master";
  inputs."colorcol-v0_2_0".repo  = "colorcol";
  inputs."colorcol-v0_2_0".type  = "github";
  inputs."colorcol-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_0".dir   = "v0_3_0";
  inputs."colorcol-v0_3_0".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_3_0".ref   = "master";
  inputs."colorcol-v0_3_0".repo  = "colorcol";
  inputs."colorcol-v0_3_0".type  = "github";
  inputs."colorcol-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_1".dir   = "v0_3_1";
  inputs."colorcol-v0_3_1".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_3_1".ref   = "master";
  inputs."colorcol-v0_3_1".repo  = "colorcol";
  inputs."colorcol-v0_3_1".type  = "github";
  inputs."colorcol-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_2".dir   = "v0_3_2";
  inputs."colorcol-v0_3_2".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_3_2".ref   = "master";
  inputs."colorcol-v0_3_2".repo  = "colorcol";
  inputs."colorcol-v0_3_2".type  = "github";
  inputs."colorcol-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_3".dir   = "v0_3_3";
  inputs."colorcol-v0_3_3".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_3_3".ref   = "master";
  inputs."colorcol-v0_3_3".repo  = "colorcol";
  inputs."colorcol-v0_3_3".type  = "github";
  inputs."colorcol-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_3_4".dir   = "v0_3_4";
  inputs."colorcol-v0_3_4".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_3_4".ref   = "master";
  inputs."colorcol-v0_3_4".repo  = "colorcol";
  inputs."colorcol-v0_3_4".type  = "github";
  inputs."colorcol-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_4_0".dir   = "v0_4_0";
  inputs."colorcol-v0_4_0".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_4_0".ref   = "master";
  inputs."colorcol-v0_4_0".repo  = "colorcol";
  inputs."colorcol-v0_4_0".type  = "github";
  inputs."colorcol-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_4_1".dir   = "v0_4_1";
  inputs."colorcol-v0_4_1".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_4_1".ref   = "master";
  inputs."colorcol-v0_4_1".repo  = "colorcol";
  inputs."colorcol-v0_4_1".type  = "github";
  inputs."colorcol-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_5_0".dir   = "v0_5_0";
  inputs."colorcol-v0_5_0".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_5_0".ref   = "master";
  inputs."colorcol-v0_5_0".repo  = "colorcol";
  inputs."colorcol-v0_5_0".type  = "github";
  inputs."colorcol-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_5_1".dir   = "v0_5_1";
  inputs."colorcol-v0_5_1".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_5_1".ref   = "master";
  inputs."colorcol-v0_5_1".repo  = "colorcol";
  inputs."colorcol-v0_5_1".type  = "github";
  inputs."colorcol-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."colorcol-v0_5_2".dir   = "v0_5_2";
  inputs."colorcol-v0_5_2".owner = "nim-nix-pkgs";
  inputs."colorcol-v0_5_2".ref   = "master";
  inputs."colorcol-v0_5_2".repo  = "colorcol";
  inputs."colorcol-v0_5_2".type  = "github";
  inputs."colorcol-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorcol-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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