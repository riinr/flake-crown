{
  description = ''A low-level Nim wrapper for Notcurses: blingful TUIs and character graphics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notcurses-master".dir   = "master";
  inputs."notcurses-master".owner = "nim-nix-pkgs";
  inputs."notcurses-master".ref   = "master";
  inputs."notcurses-master".repo  = "notcurses";
  inputs."notcurses-master".type  = "github";
  inputs."notcurses-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_13".dir   = "v2_3_13";
  inputs."notcurses-v2_3_13".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_3_13".ref   = "master";
  inputs."notcurses-v2_3_13".repo  = "notcurses";
  inputs."notcurses-v2_3_13".type  = "github";
  inputs."notcurses-v2_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_14".dir   = "v2_3_14";
  inputs."notcurses-v2_3_14".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_3_14".ref   = "master";
  inputs."notcurses-v2_3_14".repo  = "notcurses";
  inputs."notcurses-v2_3_14".type  = "github";
  inputs."notcurses-v2_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_15".dir   = "v2_3_15";
  inputs."notcurses-v2_3_15".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_3_15".ref   = "master";
  inputs."notcurses-v2_3_15".repo  = "notcurses";
  inputs."notcurses-v2_3_15".type  = "github";
  inputs."notcurses-v2_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_16".dir   = "v2_3_16";
  inputs."notcurses-v2_3_16".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_3_16".ref   = "master";
  inputs."notcurses-v2_3_16".repo  = "notcurses";
  inputs."notcurses-v2_3_16".type  = "github";
  inputs."notcurses-v2_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_17".dir   = "v2_3_17";
  inputs."notcurses-v2_3_17".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_3_17".ref   = "master";
  inputs."notcurses-v2_3_17".repo  = "notcurses";
  inputs."notcurses-v2_3_17".type  = "github";
  inputs."notcurses-v2_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_3_18".dir   = "v2_3_18";
  inputs."notcurses-v2_3_18".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_3_18".ref   = "master";
  inputs."notcurses-v2_3_18".repo  = "notcurses";
  inputs."notcurses-v2_3_18".type  = "github";
  inputs."notcurses-v2_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_0".dir   = "v2_4_0";
  inputs."notcurses-v2_4_0".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_0".ref   = "master";
  inputs."notcurses-v2_4_0".repo  = "notcurses";
  inputs."notcurses-v2_4_0".type  = "github";
  inputs."notcurses-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_1".dir   = "v2_4_1";
  inputs."notcurses-v2_4_1".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_1".ref   = "master";
  inputs."notcurses-v2_4_1".repo  = "notcurses";
  inputs."notcurses-v2_4_1".type  = "github";
  inputs."notcurses-v2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_2".dir   = "v2_4_2";
  inputs."notcurses-v2_4_2".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_2".ref   = "master";
  inputs."notcurses-v2_4_2".repo  = "notcurses";
  inputs."notcurses-v2_4_2".type  = "github";
  inputs."notcurses-v2_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_3".dir   = "v2_4_3";
  inputs."notcurses-v2_4_3".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_3".ref   = "master";
  inputs."notcurses-v2_4_3".repo  = "notcurses";
  inputs."notcurses-v2_4_3".type  = "github";
  inputs."notcurses-v2_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_4".dir   = "v2_4_4";
  inputs."notcurses-v2_4_4".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_4".ref   = "master";
  inputs."notcurses-v2_4_4".repo  = "notcurses";
  inputs."notcurses-v2_4_4".type  = "github";
  inputs."notcurses-v2_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_5".dir   = "v2_4_5";
  inputs."notcurses-v2_4_5".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_5".ref   = "master";
  inputs."notcurses-v2_4_5".repo  = "notcurses";
  inputs."notcurses-v2_4_5".type  = "github";
  inputs."notcurses-v2_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_6".dir   = "v2_4_6";
  inputs."notcurses-v2_4_6".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_6".ref   = "master";
  inputs."notcurses-v2_4_6".repo  = "notcurses";
  inputs."notcurses-v2_4_6".type  = "github";
  inputs."notcurses-v2_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_7".dir   = "v2_4_7";
  inputs."notcurses-v2_4_7".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_7".ref   = "master";
  inputs."notcurses-v2_4_7".repo  = "notcurses";
  inputs."notcurses-v2_4_7".type  = "github";
  inputs."notcurses-v2_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_8".dir   = "v2_4_8";
  inputs."notcurses-v2_4_8".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_8".ref   = "master";
  inputs."notcurses-v2_4_8".repo  = "notcurses";
  inputs."notcurses-v2_4_8".type  = "github";
  inputs."notcurses-v2_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v2_4_9".dir   = "v2_4_9";
  inputs."notcurses-v2_4_9".owner = "nim-nix-pkgs";
  inputs."notcurses-v2_4_9".ref   = "master";
  inputs."notcurses-v2_4_9".repo  = "notcurses";
  inputs."notcurses-v2_4_9".type  = "github";
  inputs."notcurses-v2_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v2_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_0".dir   = "v3_0_0";
  inputs."notcurses-v3_0_0".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_0".ref   = "master";
  inputs."notcurses-v3_0_0".repo  = "notcurses";
  inputs."notcurses-v3_0_0".type  = "github";
  inputs."notcurses-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_1".dir   = "v3_0_1";
  inputs."notcurses-v3_0_1".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_1".ref   = "master";
  inputs."notcurses-v3_0_1".repo  = "notcurses";
  inputs."notcurses-v3_0_1".type  = "github";
  inputs."notcurses-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_2".dir   = "v3_0_2";
  inputs."notcurses-v3_0_2".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_2".ref   = "master";
  inputs."notcurses-v3_0_2".repo  = "notcurses";
  inputs."notcurses-v3_0_2".type  = "github";
  inputs."notcurses-v3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_3".dir   = "v3_0_3";
  inputs."notcurses-v3_0_3".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_3".ref   = "master";
  inputs."notcurses-v3_0_3".repo  = "notcurses";
  inputs."notcurses-v3_0_3".type  = "github";
  inputs."notcurses-v3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_4".dir   = "v3_0_4";
  inputs."notcurses-v3_0_4".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_4".ref   = "master";
  inputs."notcurses-v3_0_4".repo  = "notcurses";
  inputs."notcurses-v3_0_4".type  = "github";
  inputs."notcurses-v3_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_5".dir   = "v3_0_5";
  inputs."notcurses-v3_0_5".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_5".ref   = "master";
  inputs."notcurses-v3_0_5".repo  = "notcurses";
  inputs."notcurses-v3_0_5".type  = "github";
  inputs."notcurses-v3_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_6".dir   = "v3_0_6";
  inputs."notcurses-v3_0_6".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_6".ref   = "master";
  inputs."notcurses-v3_0_6".repo  = "notcurses";
  inputs."notcurses-v3_0_6".type  = "github";
  inputs."notcurses-v3_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notcurses-v3_0_7".dir   = "v3_0_7";
  inputs."notcurses-v3_0_7".owner = "nim-nix-pkgs";
  inputs."notcurses-v3_0_7".ref   = "master";
  inputs."notcurses-v3_0_7".repo  = "notcurses";
  inputs."notcurses-v3_0_7".type  = "github";
  inputs."notcurses-v3_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notcurses-v3_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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