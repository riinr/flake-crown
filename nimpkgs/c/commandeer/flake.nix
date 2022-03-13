{
  description = ''Provides a small command line parsing DSL (domain specific language)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."commandeer-master".dir   = "master";
  inputs."commandeer-master".owner = "nim-nix-pkgs";
  inputs."commandeer-master".ref   = "master";
  inputs."commandeer-master".repo  = "commandeer";
  inputs."commandeer-master".type  = "github";
  inputs."commandeer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_1_0".dir   = "0_1_0";
  inputs."commandeer-0_1_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_1_0".ref   = "master";
  inputs."commandeer-0_1_0".repo  = "commandeer";
  inputs."commandeer-0_1_0".type  = "github";
  inputs."commandeer-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_1_2".dir   = "0_1_2";
  inputs."commandeer-0_1_2".owner = "nim-nix-pkgs";
  inputs."commandeer-0_1_2".ref   = "master";
  inputs."commandeer-0_1_2".repo  = "commandeer";
  inputs."commandeer-0_1_2".type  = "github";
  inputs."commandeer-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_2".dir   = "0_10_2";
  inputs."commandeer-0_10_2".owner = "nim-nix-pkgs";
  inputs."commandeer-0_10_2".ref   = "master";
  inputs."commandeer-0_10_2".repo  = "commandeer";
  inputs."commandeer-0_10_2".type  = "github";
  inputs."commandeer-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_3".dir   = "0_10_3";
  inputs."commandeer-0_10_3".owner = "nim-nix-pkgs";
  inputs."commandeer-0_10_3".ref   = "master";
  inputs."commandeer-0_10_3".repo  = "commandeer";
  inputs."commandeer-0_10_3".type  = "github";
  inputs."commandeer-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_4".dir   = "0_10_4";
  inputs."commandeer-0_10_4".owner = "nim-nix-pkgs";
  inputs."commandeer-0_10_4".ref   = "master";
  inputs."commandeer-0_10_4".repo  = "commandeer";
  inputs."commandeer-0_10_4".type  = "github";
  inputs."commandeer-0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_5".dir   = "0_10_5";
  inputs."commandeer-0_10_5".owner = "nim-nix-pkgs";
  inputs."commandeer-0_10_5".ref   = "master";
  inputs."commandeer-0_10_5".repo  = "commandeer";
  inputs."commandeer-0_10_5".type  = "github";
  inputs."commandeer-0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_11_0".dir   = "0_11_0";
  inputs."commandeer-0_11_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_11_0".ref   = "master";
  inputs."commandeer-0_11_0".repo  = "commandeer";
  inputs."commandeer-0_11_0".type  = "github";
  inputs."commandeer-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_12_0".dir   = "0_12_0";
  inputs."commandeer-0_12_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_12_0".ref   = "master";
  inputs."commandeer-0_12_0".repo  = "commandeer";
  inputs."commandeer-0_12_0".type  = "github";
  inputs."commandeer-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_12_1".dir   = "0_12_1";
  inputs."commandeer-0_12_1".owner = "nim-nix-pkgs";
  inputs."commandeer-0_12_1".ref   = "master";
  inputs."commandeer-0_12_1".repo  = "commandeer";
  inputs."commandeer-0_12_1".type  = "github";
  inputs."commandeer-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_12_3".dir   = "0_12_3";
  inputs."commandeer-0_12_3".owner = "nim-nix-pkgs";
  inputs."commandeer-0_12_3".ref   = "master";
  inputs."commandeer-0_12_3".repo  = "commandeer";
  inputs."commandeer-0_12_3".type  = "github";
  inputs."commandeer-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_2_0".dir   = "0_2_0";
  inputs."commandeer-0_2_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_2_0".ref   = "master";
  inputs."commandeer-0_2_0".repo  = "commandeer";
  inputs."commandeer-0_2_0".type  = "github";
  inputs."commandeer-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_3_0".dir   = "0_3_0";
  inputs."commandeer-0_3_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_3_0".ref   = "master";
  inputs."commandeer-0_3_0".repo  = "commandeer";
  inputs."commandeer-0_3_0".type  = "github";
  inputs."commandeer-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_3_1".dir   = "0_3_1";
  inputs."commandeer-0_3_1".owner = "nim-nix-pkgs";
  inputs."commandeer-0_3_1".ref   = "master";
  inputs."commandeer-0_3_1".repo  = "commandeer";
  inputs."commandeer-0_3_1".type  = "github";
  inputs."commandeer-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_4_0".dir   = "0_4_0";
  inputs."commandeer-0_4_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_4_0".ref   = "master";
  inputs."commandeer-0_4_0".repo  = "commandeer";
  inputs."commandeer-0_4_0".type  = "github";
  inputs."commandeer-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_5_0".dir   = "0_5_0";
  inputs."commandeer-0_5_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_5_0".ref   = "master";
  inputs."commandeer-0_5_0".repo  = "commandeer";
  inputs."commandeer-0_5_0".type  = "github";
  inputs."commandeer-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_6_0".dir   = "0_6_0";
  inputs."commandeer-0_6_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_6_0".ref   = "master";
  inputs."commandeer-0_6_0".repo  = "commandeer";
  inputs."commandeer-0_6_0".type  = "github";
  inputs."commandeer-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_7_0".dir   = "0_7_0";
  inputs."commandeer-0_7_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_7_0".ref   = "master";
  inputs."commandeer-0_7_0".repo  = "commandeer";
  inputs."commandeer-0_7_0".type  = "github";
  inputs."commandeer-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_8_0".dir   = "0_8_0";
  inputs."commandeer-0_8_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_8_0".ref   = "master";
  inputs."commandeer-0_8_0".repo  = "commandeer";
  inputs."commandeer-0_8_0".type  = "github";
  inputs."commandeer-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_9_0".dir   = "0_9_0";
  inputs."commandeer-0_9_0".owner = "nim-nix-pkgs";
  inputs."commandeer-0_9_0".ref   = "master";
  inputs."commandeer-0_9_0".repo  = "commandeer";
  inputs."commandeer-0_9_0".type  = "github";
  inputs."commandeer-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_9_1".dir   = "0_9_1";
  inputs."commandeer-0_9_1".owner = "nim-nix-pkgs";
  inputs."commandeer-0_9_1".ref   = "master";
  inputs."commandeer-0_9_1".repo  = "commandeer";
  inputs."commandeer-0_9_1".type  = "github";
  inputs."commandeer-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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