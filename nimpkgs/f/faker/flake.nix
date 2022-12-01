{
  description = ''faker is a Nim package that generates fake data for you.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."faker-develop".dir   = "develop";
  inputs."faker-develop".owner = "nim-nix-pkgs";
  inputs."faker-develop".ref   = "master";
  inputs."faker-develop".repo  = "faker";
  inputs."faker-develop".type  = "github";
  inputs."faker-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-master".dir   = "master";
  inputs."faker-master".owner = "nim-nix-pkgs";
  inputs."faker-master".ref   = "master";
  inputs."faker-master".repo  = "faker";
  inputs."faker-master".type  = "github";
  inputs."faker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_10_0".dir   = "v0_10_0";
  inputs."faker-v0_10_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_10_0".ref   = "master";
  inputs."faker-v0_10_0".repo  = "faker";
  inputs."faker-v0_10_0".type  = "github";
  inputs."faker-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_11_0".dir   = "v0_11_0";
  inputs."faker-v0_11_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_11_0".ref   = "master";
  inputs."faker-v0_11_0".repo  = "faker";
  inputs."faker-v0_11_0".type  = "github";
  inputs."faker-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_11_1".dir   = "v0_11_1";
  inputs."faker-v0_11_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_11_1".ref   = "master";
  inputs."faker-v0_11_1".repo  = "faker";
  inputs."faker-v0_11_1".type  = "github";
  inputs."faker-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_11_2".dir   = "v0_11_2";
  inputs."faker-v0_11_2".owner = "nim-nix-pkgs";
  inputs."faker-v0_11_2".ref   = "master";
  inputs."faker-v0_11_2".repo  = "faker";
  inputs."faker-v0_11_2".type  = "github";
  inputs."faker-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_12_0".dir   = "v0_12_0";
  inputs."faker-v0_12_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_12_0".ref   = "master";
  inputs."faker-v0_12_0".repo  = "faker";
  inputs."faker-v0_12_0".type  = "github";
  inputs."faker-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_12_1".dir   = "v0_12_1";
  inputs."faker-v0_12_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_12_1".ref   = "master";
  inputs."faker-v0_12_1".repo  = "faker";
  inputs."faker-v0_12_1".type  = "github";
  inputs."faker-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_13_0".dir   = "v0_13_0";
  inputs."faker-v0_13_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_13_0".ref   = "master";
  inputs."faker-v0_13_0".repo  = "faker";
  inputs."faker-v0_13_0".type  = "github";
  inputs."faker-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_13_1".dir   = "v0_13_1";
  inputs."faker-v0_13_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_13_1".ref   = "master";
  inputs."faker-v0_13_1".repo  = "faker";
  inputs."faker-v0_13_1".type  = "github";
  inputs."faker-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_13_2".dir   = "v0_13_2";
  inputs."faker-v0_13_2".owner = "nim-nix-pkgs";
  inputs."faker-v0_13_2".ref   = "master";
  inputs."faker-v0_13_2".repo  = "faker";
  inputs."faker-v0_13_2".type  = "github";
  inputs."faker-v0_13_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_13_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_14_0".dir   = "v0_14_0";
  inputs."faker-v0_14_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_14_0".ref   = "master";
  inputs."faker-v0_14_0".repo  = "faker";
  inputs."faker-v0_14_0".type  = "github";
  inputs."faker-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_15_0".dir   = "v0_15_0";
  inputs."faker-v0_15_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_15_0".ref   = "master";
  inputs."faker-v0_15_0".repo  = "faker";
  inputs."faker-v0_15_0".type  = "github";
  inputs."faker-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_15_1".dir   = "v0_15_1";
  inputs."faker-v0_15_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_15_1".ref   = "master";
  inputs."faker-v0_15_1".repo  = "faker";
  inputs."faker-v0_15_1".type  = "github";
  inputs."faker-v0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_15_2".dir   = "v0_15_2";
  inputs."faker-v0_15_2".owner = "nim-nix-pkgs";
  inputs."faker-v0_15_2".ref   = "master";
  inputs."faker-v0_15_2".repo  = "faker";
  inputs."faker-v0_15_2".type  = "github";
  inputs."faker-v0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_16_0".dir   = "v0_16_0";
  inputs."faker-v0_16_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_16_0".ref   = "master";
  inputs."faker-v0_16_0".repo  = "faker";
  inputs."faker-v0_16_0".type  = "github";
  inputs."faker-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_2_1".dir   = "v0_2_1";
  inputs."faker-v0_2_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_2_1".ref   = "master";
  inputs."faker-v0_2_1".repo  = "faker";
  inputs."faker-v0_2_1".type  = "github";
  inputs."faker-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_3_0".dir   = "v0_3_0";
  inputs."faker-v0_3_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_3_0".ref   = "master";
  inputs."faker-v0_3_0".repo  = "faker";
  inputs."faker-v0_3_0".type  = "github";
  inputs."faker-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_3_1".dir   = "v0_3_1";
  inputs."faker-v0_3_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_3_1".ref   = "master";
  inputs."faker-v0_3_1".repo  = "faker";
  inputs."faker-v0_3_1".type  = "github";
  inputs."faker-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_4_0".dir   = "v0_4_0";
  inputs."faker-v0_4_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_4_0".ref   = "master";
  inputs."faker-v0_4_0".repo  = "faker";
  inputs."faker-v0_4_0".type  = "github";
  inputs."faker-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_5_0".dir   = "v0_5_0";
  inputs."faker-v0_5_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_5_0".ref   = "master";
  inputs."faker-v0_5_0".repo  = "faker";
  inputs."faker-v0_5_0".type  = "github";
  inputs."faker-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_5_1".dir   = "v0_5_1";
  inputs."faker-v0_5_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_5_1".ref   = "master";
  inputs."faker-v0_5_1".repo  = "faker";
  inputs."faker-v0_5_1".type  = "github";
  inputs."faker-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_5_2".dir   = "v0_5_2";
  inputs."faker-v0_5_2".owner = "nim-nix-pkgs";
  inputs."faker-v0_5_2".ref   = "master";
  inputs."faker-v0_5_2".repo  = "faker";
  inputs."faker-v0_5_2".type  = "github";
  inputs."faker-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_6_0".dir   = "v0_6_0";
  inputs."faker-v0_6_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_6_0".ref   = "master";
  inputs."faker-v0_6_0".repo  = "faker";
  inputs."faker-v0_6_0".type  = "github";
  inputs."faker-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_7_0".dir   = "v0_7_0";
  inputs."faker-v0_7_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_7_0".ref   = "master";
  inputs."faker-v0_7_0".repo  = "faker";
  inputs."faker-v0_7_0".type  = "github";
  inputs."faker-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_7_1".dir   = "v0_7_1";
  inputs."faker-v0_7_1".owner = "nim-nix-pkgs";
  inputs."faker-v0_7_1".ref   = "master";
  inputs."faker-v0_7_1".repo  = "faker";
  inputs."faker-v0_7_1".type  = "github";
  inputs."faker-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_7_2".dir   = "v0_7_2";
  inputs."faker-v0_7_2".owner = "nim-nix-pkgs";
  inputs."faker-v0_7_2".ref   = "master";
  inputs."faker-v0_7_2".repo  = "faker";
  inputs."faker-v0_7_2".type  = "github";
  inputs."faker-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_8_0".dir   = "v0_8_0";
  inputs."faker-v0_8_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_8_0".ref   = "master";
  inputs."faker-v0_8_0".repo  = "faker";
  inputs."faker-v0_8_0".type  = "github";
  inputs."faker-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."faker-v0_9_0".dir   = "v0_9_0";
  inputs."faker-v0_9_0".owner = "nim-nix-pkgs";
  inputs."faker-v0_9_0".ref   = "master";
  inputs."faker-v0_9_0".repo  = "faker";
  inputs."faker-v0_9_0".type  = "github";
  inputs."faker-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faker-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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