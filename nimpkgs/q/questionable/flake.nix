{
  description = ''Elegant optional types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."questionable-main".dir   = "main";
  inputs."questionable-main".owner = "nim-nix-pkgs";
  inputs."questionable-main".ref   = "master";
  inputs."questionable-main".repo  = "questionable";
  inputs."questionable-main".type  = "github";
  inputs."questionable-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_1_0".dir   = "0_1_0";
  inputs."questionable-0_1_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_1_0".ref   = "master";
  inputs."questionable-0_1_0".repo  = "questionable";
  inputs."questionable-0_1_0".type  = "github";
  inputs."questionable-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_10_0".dir   = "0_10_0";
  inputs."questionable-0_10_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_10_0".ref   = "master";
  inputs."questionable-0_10_0".repo  = "questionable";
  inputs."questionable-0_10_0".type  = "github";
  inputs."questionable-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_10_2".dir   = "0_10_2";
  inputs."questionable-0_10_2".owner = "nim-nix-pkgs";
  inputs."questionable-0_10_2".ref   = "master";
  inputs."questionable-0_10_2".repo  = "questionable";
  inputs."questionable-0_10_2".type  = "github";
  inputs."questionable-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_2_0".dir   = "0_2_0";
  inputs."questionable-0_2_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_2_0".ref   = "master";
  inputs."questionable-0_2_0".repo  = "questionable";
  inputs."questionable-0_2_0".type  = "github";
  inputs."questionable-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_3_0".dir   = "0_3_0";
  inputs."questionable-0_3_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_3_0".ref   = "master";
  inputs."questionable-0_3_0".repo  = "questionable";
  inputs."questionable-0_3_0".type  = "github";
  inputs."questionable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_0".dir   = "0_4_0";
  inputs."questionable-0_4_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_4_0".ref   = "master";
  inputs."questionable-0_4_0".repo  = "questionable";
  inputs."questionable-0_4_0".type  = "github";
  inputs."questionable-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_1".dir   = "0_4_1";
  inputs."questionable-0_4_1".owner = "nim-nix-pkgs";
  inputs."questionable-0_4_1".ref   = "master";
  inputs."questionable-0_4_1".repo  = "questionable";
  inputs."questionable-0_4_1".type  = "github";
  inputs."questionable-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_2".dir   = "0_4_2";
  inputs."questionable-0_4_2".owner = "nim-nix-pkgs";
  inputs."questionable-0_4_2".ref   = "master";
  inputs."questionable-0_4_2".repo  = "questionable";
  inputs."questionable-0_4_2".type  = "github";
  inputs."questionable-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_3".dir   = "0_4_3";
  inputs."questionable-0_4_3".owner = "nim-nix-pkgs";
  inputs."questionable-0_4_3".ref   = "master";
  inputs."questionable-0_4_3".repo  = "questionable";
  inputs."questionable-0_4_3".type  = "github";
  inputs."questionable-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_5_0".dir   = "0_5_0";
  inputs."questionable-0_5_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_5_0".ref   = "master";
  inputs."questionable-0_5_0".repo  = "questionable";
  inputs."questionable-0_5_0".type  = "github";
  inputs."questionable-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_0".dir   = "0_6_0";
  inputs."questionable-0_6_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_6_0".ref   = "master";
  inputs."questionable-0_6_0".repo  = "questionable";
  inputs."questionable-0_6_0".type  = "github";
  inputs."questionable-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_1".dir   = "0_6_1";
  inputs."questionable-0_6_1".owner = "nim-nix-pkgs";
  inputs."questionable-0_6_1".ref   = "master";
  inputs."questionable-0_6_1".repo  = "questionable";
  inputs."questionable-0_6_1".type  = "github";
  inputs."questionable-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_2".dir   = "0_6_2";
  inputs."questionable-0_6_2".owner = "nim-nix-pkgs";
  inputs."questionable-0_6_2".ref   = "master";
  inputs."questionable-0_6_2".repo  = "questionable";
  inputs."questionable-0_6_2".type  = "github";
  inputs."questionable-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_3".dir   = "0_6_3";
  inputs."questionable-0_6_3".owner = "nim-nix-pkgs";
  inputs."questionable-0_6_3".ref   = "master";
  inputs."questionable-0_6_3".repo  = "questionable";
  inputs."questionable-0_6_3".type  = "github";
  inputs."questionable-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_7_0".dir   = "0_7_0";
  inputs."questionable-0_7_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_7_0".ref   = "master";
  inputs."questionable-0_7_0".repo  = "questionable";
  inputs."questionable-0_7_0".type  = "github";
  inputs."questionable-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_8_0".dir   = "0_8_0";
  inputs."questionable-0_8_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_8_0".ref   = "master";
  inputs."questionable-0_8_0".repo  = "questionable";
  inputs."questionable-0_8_0".type  = "github";
  inputs."questionable-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_9_0".dir   = "0_9_0";
  inputs."questionable-0_9_0".owner = "nim-nix-pkgs";
  inputs."questionable-0_9_0".ref   = "master";
  inputs."questionable-0_9_0".repo  = "questionable";
  inputs."questionable-0_9_0".type  = "github";
  inputs."questionable-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_9_1".dir   = "0_9_1";
  inputs."questionable-0_9_1".owner = "nim-nix-pkgs";
  inputs."questionable-0_9_1".ref   = "master";
  inputs."questionable-0_9_1".repo  = "questionable";
  inputs."questionable-0_9_1".type  = "github";
  inputs."questionable-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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