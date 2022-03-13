{
  description = ''Mustache templating for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."moustachu-master".dir   = "master";
  inputs."moustachu-master".owner = "nim-nix-pkgs";
  inputs."moustachu-master".ref   = "master";
  inputs."moustachu-master".repo  = "moustachu";
  inputs."moustachu-master".type  = "github";
  inputs."moustachu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_10_0".dir   = "0_10_0";
  inputs."moustachu-0_10_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_10_0".ref   = "master";
  inputs."moustachu-0_10_0".repo  = "moustachu";
  inputs."moustachu-0_10_0".type  = "github";
  inputs."moustachu-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_10_1".dir   = "0_10_1";
  inputs."moustachu-0_10_1".owner = "nim-nix-pkgs";
  inputs."moustachu-0_10_1".ref   = "master";
  inputs."moustachu-0_10_1".repo  = "moustachu";
  inputs."moustachu-0_10_1".type  = "github";
  inputs."moustachu-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_10_2".dir   = "0_10_2";
  inputs."moustachu-0_10_2".owner = "nim-nix-pkgs";
  inputs."moustachu-0_10_2".ref   = "master";
  inputs."moustachu-0_10_2".repo  = "moustachu";
  inputs."moustachu-0_10_2".type  = "github";
  inputs."moustachu-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_10_3".dir   = "0_10_3";
  inputs."moustachu-0_10_3".owner = "nim-nix-pkgs";
  inputs."moustachu-0_10_3".ref   = "master";
  inputs."moustachu-0_10_3".repo  = "moustachu";
  inputs."moustachu-0_10_3".type  = "github";
  inputs."moustachu-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_11_1".dir   = "0_11_1";
  inputs."moustachu-0_11_1".owner = "nim-nix-pkgs";
  inputs."moustachu-0_11_1".ref   = "master";
  inputs."moustachu-0_11_1".repo  = "moustachu";
  inputs."moustachu-0_11_1".type  = "github";
  inputs."moustachu-0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_12_0".dir   = "0_12_0";
  inputs."moustachu-0_12_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_12_0".ref   = "master";
  inputs."moustachu-0_12_0".repo  = "moustachu";
  inputs."moustachu-0_12_0".type  = "github";
  inputs."moustachu-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_13_0".dir   = "0_13_0";
  inputs."moustachu-0_13_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_13_0".ref   = "master";
  inputs."moustachu-0_13_0".repo  = "moustachu";
  inputs."moustachu-0_13_0".type  = "github";
  inputs."moustachu-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_14_0".dir   = "0_14_0";
  inputs."moustachu-0_14_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_14_0".ref   = "master";
  inputs."moustachu-0_14_0".repo  = "moustachu";
  inputs."moustachu-0_14_0".type  = "github";
  inputs."moustachu-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_2_0".dir   = "0_2_0";
  inputs."moustachu-0_2_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_2_0".ref   = "master";
  inputs."moustachu-0_2_0".repo  = "moustachu";
  inputs."moustachu-0_2_0".type  = "github";
  inputs."moustachu-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_3_0".dir   = "0_3_0";
  inputs."moustachu-0_3_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_3_0".ref   = "master";
  inputs."moustachu-0_3_0".repo  = "moustachu";
  inputs."moustachu-0_3_0".type  = "github";
  inputs."moustachu-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_3_3".dir   = "0_3_3";
  inputs."moustachu-0_3_3".owner = "nim-nix-pkgs";
  inputs."moustachu-0_3_3".ref   = "master";
  inputs."moustachu-0_3_3".repo  = "moustachu";
  inputs."moustachu-0_3_3".type  = "github";
  inputs."moustachu-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_4_0".dir   = "0_4_0";
  inputs."moustachu-0_4_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_4_0".ref   = "master";
  inputs."moustachu-0_4_0".repo  = "moustachu";
  inputs."moustachu-0_4_0".type  = "github";
  inputs."moustachu-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_6_0".dir   = "0_6_0";
  inputs."moustachu-0_6_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_6_0".ref   = "master";
  inputs."moustachu-0_6_0".repo  = "moustachu";
  inputs."moustachu-0_6_0".type  = "github";
  inputs."moustachu-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_7_0".dir   = "0_7_0";
  inputs."moustachu-0_7_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_7_0".ref   = "master";
  inputs."moustachu-0_7_0".repo  = "moustachu";
  inputs."moustachu-0_7_0".type  = "github";
  inputs."moustachu-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_8_0".dir   = "0_8_0";
  inputs."moustachu-0_8_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_8_0".ref   = "master";
  inputs."moustachu-0_8_0".repo  = "moustachu";
  inputs."moustachu-0_8_0".type  = "github";
  inputs."moustachu-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_8_1".dir   = "0_8_1";
  inputs."moustachu-0_8_1".owner = "nim-nix-pkgs";
  inputs."moustachu-0_8_1".ref   = "master";
  inputs."moustachu-0_8_1".repo  = "moustachu";
  inputs."moustachu-0_8_1".type  = "github";
  inputs."moustachu-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_9_0".dir   = "0_9_0";
  inputs."moustachu-0_9_0".owner = "nim-nix-pkgs";
  inputs."moustachu-0_9_0".ref   = "master";
  inputs."moustachu-0_9_0".repo  = "moustachu";
  inputs."moustachu-0_9_0".type  = "github";
  inputs."moustachu-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu-0_9_1".dir   = "0_9_1";
  inputs."moustachu-0_9_1".owner = "nim-nix-pkgs";
  inputs."moustachu-0_9_1".ref   = "master";
  inputs."moustachu-0_9_1".repo  = "moustachu";
  inputs."moustachu-0_9_1".type  = "github";
  inputs."moustachu-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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