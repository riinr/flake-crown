{
  description = ''ISO codes for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."isocodes-master".dir   = "master";
  inputs."isocodes-master".owner = "nim-nix-pkgs";
  inputs."isocodes-master".ref   = "master";
  inputs."isocodes-master".repo  = "isocodes";
  inputs."isocodes-master".type  = "github";
  inputs."isocodes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-0_3_1".dir   = "0_3_1";
  inputs."isocodes-0_3_1".owner = "nim-nix-pkgs";
  inputs."isocodes-0_3_1".ref   = "master";
  inputs."isocodes-0_3_1".repo  = "isocodes";
  inputs."isocodes-0_3_1".type  = "github";
  inputs."isocodes-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_0_0".dir   = "1_0_0";
  inputs."isocodes-1_0_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_0_0".ref   = "master";
  inputs."isocodes-1_0_0".repo  = "isocodes";
  inputs."isocodes-1_0_0".type  = "github";
  inputs."isocodes-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_1_0".dir   = "1_1_0";
  inputs."isocodes-1_1_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_1_0".ref   = "master";
  inputs."isocodes-1_1_0".repo  = "isocodes";
  inputs."isocodes-1_1_0".type  = "github";
  inputs."isocodes-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_1_1".dir   = "1_1_1";
  inputs."isocodes-1_1_1".owner = "nim-nix-pkgs";
  inputs."isocodes-1_1_1".ref   = "master";
  inputs."isocodes-1_1_1".repo  = "isocodes";
  inputs."isocodes-1_1_1".type  = "github";
  inputs."isocodes-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_1_2".dir   = "1_1_2";
  inputs."isocodes-1_1_2".owner = "nim-nix-pkgs";
  inputs."isocodes-1_1_2".ref   = "master";
  inputs."isocodes-1_1_2".repo  = "isocodes";
  inputs."isocodes-1_1_2".type  = "github";
  inputs."isocodes-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_1_3".dir   = "1_1_3";
  inputs."isocodes-1_1_3".owner = "nim-nix-pkgs";
  inputs."isocodes-1_1_3".ref   = "master";
  inputs."isocodes-1_1_3".repo  = "isocodes";
  inputs."isocodes-1_1_3".type  = "github";
  inputs."isocodes-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_1_4".dir   = "1_1_4";
  inputs."isocodes-1_1_4".owner = "nim-nix-pkgs";
  inputs."isocodes-1_1_4".ref   = "master";
  inputs."isocodes-1_1_4".repo  = "isocodes";
  inputs."isocodes-1_1_4".type  = "github";
  inputs."isocodes-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_1_5".dir   = "1_1_5";
  inputs."isocodes-1_1_5".owner = "nim-nix-pkgs";
  inputs."isocodes-1_1_5".ref   = "master";
  inputs."isocodes-1_1_5".repo  = "isocodes";
  inputs."isocodes-1_1_5".type  = "github";
  inputs."isocodes-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_2_0".dir   = "1_2_0";
  inputs."isocodes-1_2_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_2_0".ref   = "master";
  inputs."isocodes-1_2_0".repo  = "isocodes";
  inputs."isocodes-1_2_0".type  = "github";
  inputs."isocodes-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_4_0".dir   = "1_4_0";
  inputs."isocodes-1_4_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_4_0".ref   = "master";
  inputs."isocodes-1_4_0".repo  = "isocodes";
  inputs."isocodes-1_4_0".type  = "github";
  inputs."isocodes-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_4_1".dir   = "1_4_1";
  inputs."isocodes-1_4_1".owner = "nim-nix-pkgs";
  inputs."isocodes-1_4_1".ref   = "master";
  inputs."isocodes-1_4_1".repo  = "isocodes";
  inputs."isocodes-1_4_1".type  = "github";
  inputs."isocodes-1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_5_0".dir   = "1_5_0";
  inputs."isocodes-1_5_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_5_0".ref   = "master";
  inputs."isocodes-1_5_0".repo  = "isocodes";
  inputs."isocodes-1_5_0".type  = "github";
  inputs."isocodes-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_6_0".dir   = "1_6_0";
  inputs."isocodes-1_6_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_6_0".ref   = "master";
  inputs."isocodes-1_6_0".repo  = "isocodes";
  inputs."isocodes-1_6_0".type  = "github";
  inputs."isocodes-1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_6_2".dir   = "1_6_2";
  inputs."isocodes-1_6_2".owner = "nim-nix-pkgs";
  inputs."isocodes-1_6_2".ref   = "master";
  inputs."isocodes-1_6_2".repo  = "isocodes";
  inputs."isocodes-1_6_2".type  = "github";
  inputs."isocodes-1_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_6_3".dir   = "1_6_3";
  inputs."isocodes-1_6_3".owner = "nim-nix-pkgs";
  inputs."isocodes-1_6_3".ref   = "master";
  inputs."isocodes-1_6_3".repo  = "isocodes";
  inputs."isocodes-1_6_3".type  = "github";
  inputs."isocodes-1_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_6_4".dir   = "1_6_4";
  inputs."isocodes-1_6_4".owner = "nim-nix-pkgs";
  inputs."isocodes-1_6_4".ref   = "master";
  inputs."isocodes-1_6_4".repo  = "isocodes";
  inputs."isocodes-1_6_4".type  = "github";
  inputs."isocodes-1_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_7_0".dir   = "1_7_0";
  inputs."isocodes-1_7_0".owner = "nim-nix-pkgs";
  inputs."isocodes-1_7_0".ref   = "master";
  inputs."isocodes-1_7_0".repo  = "isocodes";
  inputs."isocodes-1_7_0".type  = "github";
  inputs."isocodes-1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isocodes-1_7_1".dir   = "1_7_1";
  inputs."isocodes-1_7_1".owner = "nim-nix-pkgs";
  inputs."isocodes-1_7_1".ref   = "master";
  inputs."isocodes-1_7_1".repo  = "isocodes";
  inputs."isocodes-1_7_1".type  = "github";
  inputs."isocodes-1_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isocodes-1_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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