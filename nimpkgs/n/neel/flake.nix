{
  description = ''A Nim library for making lightweight Electron-like HTML/JS GUI apps, with full access to Nim capabilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neel-master".dir   = "master";
  inputs."neel-master".owner = "nim-nix-pkgs";
  inputs."neel-master".ref   = "master";
  inputs."neel-master".repo  = "neel";
  inputs."neel-master".type  = "github";
  inputs."neel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-0_2_0".dir   = "0_2_0";
  inputs."neel-0_2_0".owner = "nim-nix-pkgs";
  inputs."neel-0_2_0".ref   = "master";
  inputs."neel-0_2_0".repo  = "neel";
  inputs."neel-0_2_0".type  = "github";
  inputs."neel-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_0".dir   = "v0_2_0";
  inputs."neel-v0_2_0".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_0".ref   = "master";
  inputs."neel-v0_2_0".repo  = "neel";
  inputs."neel-v0_2_0".type  = "github";
  inputs."neel-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_1".dir   = "v0_2_1";
  inputs."neel-v0_2_1".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_1".ref   = "master";
  inputs."neel-v0_2_1".repo  = "neel";
  inputs."neel-v0_2_1".type  = "github";
  inputs."neel-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_2".dir   = "v0_2_2";
  inputs."neel-v0_2_2".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_2".ref   = "master";
  inputs."neel-v0_2_2".repo  = "neel";
  inputs."neel-v0_2_2".type  = "github";
  inputs."neel-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_3".dir   = "v0_2_3";
  inputs."neel-v0_2_3".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_3".ref   = "master";
  inputs."neel-v0_2_3".repo  = "neel";
  inputs."neel-v0_2_3".type  = "github";
  inputs."neel-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_4".dir   = "v0_2_4";
  inputs."neel-v0_2_4".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_4".ref   = "master";
  inputs."neel-v0_2_4".repo  = "neel";
  inputs."neel-v0_2_4".type  = "github";
  inputs."neel-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_5".dir   = "v0_2_5";
  inputs."neel-v0_2_5".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_5".ref   = "master";
  inputs."neel-v0_2_5".repo  = "neel";
  inputs."neel-v0_2_5".type  = "github";
  inputs."neel-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_6".dir   = "v0_2_6";
  inputs."neel-v0_2_6".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_6".ref   = "master";
  inputs."neel-v0_2_6".repo  = "neel";
  inputs."neel-v0_2_6".type  = "github";
  inputs."neel-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_2_7".dir   = "v0_2_7";
  inputs."neel-v0_2_7".owner = "nim-nix-pkgs";
  inputs."neel-v0_2_7".ref   = "master";
  inputs."neel-v0_2_7".repo  = "neel";
  inputs."neel-v0_2_7".type  = "github";
  inputs."neel-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_3_0".dir   = "v0_3_0";
  inputs."neel-v0_3_0".owner = "nim-nix-pkgs";
  inputs."neel-v0_3_0".ref   = "master";
  inputs."neel-v0_3_0".repo  = "neel";
  inputs."neel-v0_3_0".type  = "github";
  inputs."neel-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_3_1".dir   = "v0_3_1";
  inputs."neel-v0_3_1".owner = "nim-nix-pkgs";
  inputs."neel-v0_3_1".ref   = "master";
  inputs."neel-v0_3_1".repo  = "neel";
  inputs."neel-v0_3_1".type  = "github";
  inputs."neel-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_3_2".dir   = "v0_3_2";
  inputs."neel-v0_3_2".owner = "nim-nix-pkgs";
  inputs."neel-v0_3_2".ref   = "master";
  inputs."neel-v0_3_2".repo  = "neel";
  inputs."neel-v0_3_2".type  = "github";
  inputs."neel-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neel-v0_4_0".dir   = "v0_4_0";
  inputs."neel-v0_4_0".owner = "nim-nix-pkgs";
  inputs."neel-v0_4_0".ref   = "master";
  inputs."neel-v0_4_0".repo  = "neel";
  inputs."neel-v0_4_0".type  = "github";
  inputs."neel-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neel-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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