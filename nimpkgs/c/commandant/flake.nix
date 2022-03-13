{
  description = ''Commandant is a simple to use library for parsing command line arguments. Commandant is ideal for writing terminal applications, with  support for flags, options, subcommands, and custom exit options.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."commandant-master".dir   = "master";
  inputs."commandant-master".owner = "nim-nix-pkgs";
  inputs."commandant-master".ref   = "master";
  inputs."commandant-master".repo  = "commandant";
  inputs."commandant-master".type  = "github";
  inputs."commandant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_1_0".dir   = "0_1_0";
  inputs."commandant-0_1_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_1_0".ref   = "master";
  inputs."commandant-0_1_0".repo  = "commandant";
  inputs."commandant-0_1_0".type  = "github";
  inputs."commandant-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_1_2".dir   = "0_1_2";
  inputs."commandant-0_1_2".owner = "nim-nix-pkgs";
  inputs."commandant-0_1_2".ref   = "master";
  inputs."commandant-0_1_2".repo  = "commandant";
  inputs."commandant-0_1_2".type  = "github";
  inputs."commandant-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_2".dir   = "0_10_2";
  inputs."commandant-0_10_2".owner = "nim-nix-pkgs";
  inputs."commandant-0_10_2".ref   = "master";
  inputs."commandant-0_10_2".repo  = "commandant";
  inputs."commandant-0_10_2".type  = "github";
  inputs."commandant-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_3".dir   = "0_10_3";
  inputs."commandant-0_10_3".owner = "nim-nix-pkgs";
  inputs."commandant-0_10_3".ref   = "master";
  inputs."commandant-0_10_3".repo  = "commandant";
  inputs."commandant-0_10_3".type  = "github";
  inputs."commandant-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_4".dir   = "0_10_4";
  inputs."commandant-0_10_4".owner = "nim-nix-pkgs";
  inputs."commandant-0_10_4".ref   = "master";
  inputs."commandant-0_10_4".repo  = "commandant";
  inputs."commandant-0_10_4".type  = "github";
  inputs."commandant-0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_10_5".dir   = "0_10_5";
  inputs."commandant-0_10_5".owner = "nim-nix-pkgs";
  inputs."commandant-0_10_5".ref   = "master";
  inputs."commandant-0_10_5".repo  = "commandant";
  inputs."commandant-0_10_5".type  = "github";
  inputs."commandant-0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_11_0".dir   = "0_11_0";
  inputs."commandant-0_11_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_11_0".ref   = "master";
  inputs."commandant-0_11_0".repo  = "commandant";
  inputs."commandant-0_11_0".type  = "github";
  inputs."commandant-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_12_0".dir   = "0_12_0";
  inputs."commandant-0_12_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_12_0".ref   = "master";
  inputs."commandant-0_12_0".repo  = "commandant";
  inputs."commandant-0_12_0".type  = "github";
  inputs."commandant-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_12_1".dir   = "0_12_1";
  inputs."commandant-0_12_1".owner = "nim-nix-pkgs";
  inputs."commandant-0_12_1".ref   = "master";
  inputs."commandant-0_12_1".repo  = "commandant";
  inputs."commandant-0_12_1".type  = "github";
  inputs."commandant-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_12_3".dir   = "0_12_3";
  inputs."commandant-0_12_3".owner = "nim-nix-pkgs";
  inputs."commandant-0_12_3".ref   = "master";
  inputs."commandant-0_12_3".repo  = "commandant";
  inputs."commandant-0_12_3".type  = "github";
  inputs."commandant-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_13_0".dir   = "0_13_0";
  inputs."commandant-0_13_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_13_0".ref   = "master";
  inputs."commandant-0_13_0".repo  = "commandant";
  inputs."commandant-0_13_0".type  = "github";
  inputs."commandant-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_14_0".dir   = "0_14_0";
  inputs."commandant-0_14_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_14_0".ref   = "master";
  inputs."commandant-0_14_0".repo  = "commandant";
  inputs."commandant-0_14_0".type  = "github";
  inputs."commandant-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_15_0".dir   = "0_15_0";
  inputs."commandant-0_15_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_15_0".ref   = "master";
  inputs."commandant-0_15_0".repo  = "commandant";
  inputs."commandant-0_15_0".type  = "github";
  inputs."commandant-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_2_0".dir   = "0_2_0";
  inputs."commandant-0_2_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_2_0".ref   = "master";
  inputs."commandant-0_2_0".repo  = "commandant";
  inputs."commandant-0_2_0".type  = "github";
  inputs."commandant-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_3_0".dir   = "0_3_0";
  inputs."commandant-0_3_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_3_0".ref   = "master";
  inputs."commandant-0_3_0".repo  = "commandant";
  inputs."commandant-0_3_0".type  = "github";
  inputs."commandant-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_3_1".dir   = "0_3_1";
  inputs."commandant-0_3_1".owner = "nim-nix-pkgs";
  inputs."commandant-0_3_1".ref   = "master";
  inputs."commandant-0_3_1".repo  = "commandant";
  inputs."commandant-0_3_1".type  = "github";
  inputs."commandant-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_4_0".dir   = "0_4_0";
  inputs."commandant-0_4_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_4_0".ref   = "master";
  inputs."commandant-0_4_0".repo  = "commandant";
  inputs."commandant-0_4_0".type  = "github";
  inputs."commandant-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_5_0".dir   = "0_5_0";
  inputs."commandant-0_5_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_5_0".ref   = "master";
  inputs."commandant-0_5_0".repo  = "commandant";
  inputs."commandant-0_5_0".type  = "github";
  inputs."commandant-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_6_0".dir   = "0_6_0";
  inputs."commandant-0_6_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_6_0".ref   = "master";
  inputs."commandant-0_6_0".repo  = "commandant";
  inputs."commandant-0_6_0".type  = "github";
  inputs."commandant-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_7_0".dir   = "0_7_0";
  inputs."commandant-0_7_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_7_0".ref   = "master";
  inputs."commandant-0_7_0".repo  = "commandant";
  inputs."commandant-0_7_0".type  = "github";
  inputs."commandant-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_8_0".dir   = "0_8_0";
  inputs."commandant-0_8_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_8_0".ref   = "master";
  inputs."commandant-0_8_0".repo  = "commandant";
  inputs."commandant-0_8_0".type  = "github";
  inputs."commandant-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_9_0".dir   = "0_9_0";
  inputs."commandant-0_9_0".owner = "nim-nix-pkgs";
  inputs."commandant-0_9_0".ref   = "master";
  inputs."commandant-0_9_0".repo  = "commandant";
  inputs."commandant-0_9_0".type  = "github";
  inputs."commandant-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandant-0_9_1".dir   = "0_9_1";
  inputs."commandant-0_9_1".owner = "nim-nix-pkgs";
  inputs."commandant-0_9_1".ref   = "master";
  inputs."commandant-0_9_1".repo  = "commandant";
  inputs."commandant-0_9_1".type  = "github";
  inputs."commandant-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandant-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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