{
  description = ''Yet another raylib Nim wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."naylib-main".dir   = "main";
  inputs."naylib-main".owner = "nim-nix-pkgs";
  inputs."naylib-main".ref   = "master";
  inputs."naylib-main".repo  = "naylib";
  inputs."naylib-main".type  = "github";
  inputs."naylib-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_2_0".dir   = "v0_2_0";
  inputs."naylib-v0_2_0".owner = "nim-nix-pkgs";
  inputs."naylib-v0_2_0".ref   = "master";
  inputs."naylib-v0_2_0".repo  = "naylib";
  inputs."naylib-v0_2_0".type  = "github";
  inputs."naylib-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_2_1".dir   = "v0_2_1";
  inputs."naylib-v0_2_1".owner = "nim-nix-pkgs";
  inputs."naylib-v0_2_1".ref   = "master";
  inputs."naylib-v0_2_1".repo  = "naylib";
  inputs."naylib-v0_2_1".type  = "github";
  inputs."naylib-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_2_2".dir   = "v0_2_2";
  inputs."naylib-v0_2_2".owner = "nim-nix-pkgs";
  inputs."naylib-v0_2_2".ref   = "master";
  inputs."naylib-v0_2_2".repo  = "naylib";
  inputs."naylib-v0_2_2".type  = "github";
  inputs."naylib-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_2_3".dir   = "v0_2_3";
  inputs."naylib-v0_2_3".owner = "nim-nix-pkgs";
  inputs."naylib-v0_2_3".ref   = "master";
  inputs."naylib-v0_2_3".repo  = "naylib";
  inputs."naylib-v0_2_3".type  = "github";
  inputs."naylib-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_3_0".dir   = "v0_3_0";
  inputs."naylib-v0_3_0".owner = "nim-nix-pkgs";
  inputs."naylib-v0_3_0".ref   = "master";
  inputs."naylib-v0_3_0".repo  = "naylib";
  inputs."naylib-v0_3_0".type  = "github";
  inputs."naylib-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_4_0".dir   = "v0_4_0";
  inputs."naylib-v0_4_0".owner = "nim-nix-pkgs";
  inputs."naylib-v0_4_0".ref   = "master";
  inputs."naylib-v0_4_0".repo  = "naylib";
  inputs."naylib-v0_4_0".type  = "github";
  inputs."naylib-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_5_0".dir   = "v0_5_0";
  inputs."naylib-v0_5_0".owner = "nim-nix-pkgs";
  inputs."naylib-v0_5_0".ref   = "master";
  inputs."naylib-v0_5_0".repo  = "naylib";
  inputs."naylib-v0_5_0".type  = "github";
  inputs."naylib-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v0_5_1".dir   = "v0_5_1";
  inputs."naylib-v0_5_1".owner = "nim-nix-pkgs";
  inputs."naylib-v0_5_1".ref   = "master";
  inputs."naylib-v0_5_1".repo  = "naylib";
  inputs."naylib-v0_5_1".type  = "github";
  inputs."naylib-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_0_0".dir   = "v1_0_0";
  inputs."naylib-v1_0_0".owner = "nim-nix-pkgs";
  inputs."naylib-v1_0_0".ref   = "master";
  inputs."naylib-v1_0_0".repo  = "naylib";
  inputs."naylib-v1_0_0".type  = "github";
  inputs."naylib-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_0_1".dir   = "v1_0_1";
  inputs."naylib-v1_0_1".owner = "nim-nix-pkgs";
  inputs."naylib-v1_0_1".ref   = "master";
  inputs."naylib-v1_0_1".repo  = "naylib";
  inputs."naylib-v1_0_1".type  = "github";
  inputs."naylib-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_0".dir   = "v1_1_0";
  inputs."naylib-v1_1_0".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_0".ref   = "master";
  inputs."naylib-v1_1_0".repo  = "naylib";
  inputs."naylib-v1_1_0".type  = "github";
  inputs."naylib-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_1".dir   = "v1_1_1";
  inputs."naylib-v1_1_1".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_1".ref   = "master";
  inputs."naylib-v1_1_1".repo  = "naylib";
  inputs."naylib-v1_1_1".type  = "github";
  inputs."naylib-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_2".dir   = "v1_1_2";
  inputs."naylib-v1_1_2".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_2".ref   = "master";
  inputs."naylib-v1_1_2".repo  = "naylib";
  inputs."naylib-v1_1_2".type  = "github";
  inputs."naylib-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_3".dir   = "v1_1_3";
  inputs."naylib-v1_1_3".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_3".ref   = "master";
  inputs."naylib-v1_1_3".repo  = "naylib";
  inputs."naylib-v1_1_3".type  = "github";
  inputs."naylib-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_4".dir   = "v1_1_4";
  inputs."naylib-v1_1_4".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_4".ref   = "master";
  inputs."naylib-v1_1_4".repo  = "naylib";
  inputs."naylib-v1_1_4".type  = "github";
  inputs."naylib-v1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_5".dir   = "v1_1_5";
  inputs."naylib-v1_1_5".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_5".ref   = "master";
  inputs."naylib-v1_1_5".repo  = "naylib";
  inputs."naylib-v1_1_5".type  = "github";
  inputs."naylib-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_1_6".dir   = "v1_1_6";
  inputs."naylib-v1_1_6".owner = "nim-nix-pkgs";
  inputs."naylib-v1_1_6".ref   = "master";
  inputs."naylib-v1_1_6".repo  = "naylib";
  inputs."naylib-v1_1_6".type  = "github";
  inputs."naylib-v1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_2_0".dir   = "v1_2_0";
  inputs."naylib-v1_2_0".owner = "nim-nix-pkgs";
  inputs."naylib-v1_2_0".ref   = "master";
  inputs."naylib-v1_2_0".repo  = "naylib";
  inputs."naylib-v1_2_0".type  = "github";
  inputs."naylib-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_3_0".dir   = "v1_3_0";
  inputs."naylib-v1_3_0".owner = "nim-nix-pkgs";
  inputs."naylib-v1_3_0".ref   = "master";
  inputs."naylib-v1_3_0".repo  = "naylib";
  inputs."naylib-v1_3_0".type  = "github";
  inputs."naylib-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_3_1".dir   = "v1_3_1";
  inputs."naylib-v1_3_1".owner = "nim-nix-pkgs";
  inputs."naylib-v1_3_1".ref   = "master";
  inputs."naylib-v1_3_1".repo  = "naylib";
  inputs."naylib-v1_3_1".type  = "github";
  inputs."naylib-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_3_2".dir   = "v1_3_2";
  inputs."naylib-v1_3_2".owner = "nim-nix-pkgs";
  inputs."naylib-v1_3_2".ref   = "master";
  inputs."naylib-v1_3_2".repo  = "naylib";
  inputs."naylib-v1_3_2".type  = "github";
  inputs."naylib-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_3_3".dir   = "v1_3_3";
  inputs."naylib-v1_3_3".owner = "nim-nix-pkgs";
  inputs."naylib-v1_3_3".ref   = "master";
  inputs."naylib-v1_3_3".repo  = "naylib";
  inputs."naylib-v1_3_3".type  = "github";
  inputs."naylib-v1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_3_4".dir   = "v1_3_4";
  inputs."naylib-v1_3_4".owner = "nim-nix-pkgs";
  inputs."naylib-v1_3_4".ref   = "master";
  inputs."naylib-v1_3_4".repo  = "naylib";
  inputs."naylib-v1_3_4".type  = "github";
  inputs."naylib-v1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_4_0".dir   = "v1_4_0";
  inputs."naylib-v1_4_0".owner = "nim-nix-pkgs";
  inputs."naylib-v1_4_0".ref   = "master";
  inputs."naylib-v1_4_0".repo  = "naylib";
  inputs."naylib-v1_4_0".type  = "github";
  inputs."naylib-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_4_1".dir   = "v1_4_1";
  inputs."naylib-v1_4_1".owner = "nim-nix-pkgs";
  inputs."naylib-v1_4_1".ref   = "master";
  inputs."naylib-v1_4_1".repo  = "naylib";
  inputs."naylib-v1_4_1".type  = "github";
  inputs."naylib-v1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_4_2".dir   = "v1_4_2";
  inputs."naylib-v1_4_2".owner = "nim-nix-pkgs";
  inputs."naylib-v1_4_2".ref   = "master";
  inputs."naylib-v1_4_2".repo  = "naylib";
  inputs."naylib-v1_4_2".type  = "github";
  inputs."naylib-v1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_5_0".dir   = "v1_5_0";
  inputs."naylib-v1_5_0".owner = "nim-nix-pkgs";
  inputs."naylib-v1_5_0".ref   = "master";
  inputs."naylib-v1_5_0".repo  = "naylib";
  inputs."naylib-v1_5_0".type  = "github";
  inputs."naylib-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_5_1".dir   = "v1_5_1";
  inputs."naylib-v1_5_1".owner = "nim-nix-pkgs";
  inputs."naylib-v1_5_1".ref   = "master";
  inputs."naylib-v1_5_1".repo  = "naylib";
  inputs."naylib-v1_5_1".type  = "github";
  inputs."naylib-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."naylib-v1_5_2".dir   = "v1_5_2";
  inputs."naylib-v1_5_2".owner = "nim-nix-pkgs";
  inputs."naylib-v1_5_2".ref   = "master";
  inputs."naylib-v1_5_2".repo  = "naylib";
  inputs."naylib-v1_5_2".type  = "github";
  inputs."naylib-v1_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."naylib-v1_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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