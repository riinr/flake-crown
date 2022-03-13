{
  description = ''Library for finding the differences between two sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."diff-master".dir   = "master";
  inputs."diff-master".owner = "nim-nix-pkgs";
  inputs."diff-master".ref   = "master";
  inputs."diff-master".repo  = "diff";
  inputs."diff-master".type  = "github";
  inputs."diff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_1_0".dir   = "0_1_0";
  inputs."diff-0_1_0".owner = "nim-nix-pkgs";
  inputs."diff-0_1_0".ref   = "master";
  inputs."diff-0_1_0".repo  = "diff";
  inputs."diff-0_1_0".type  = "github";
  inputs."diff-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_2_0".dir   = "0_2_0";
  inputs."diff-0_2_0".owner = "nim-nix-pkgs";
  inputs."diff-0_2_0".ref   = "master";
  inputs."diff-0_2_0".repo  = "diff";
  inputs."diff-0_2_0".type  = "github";
  inputs."diff-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_2_1".dir   = "0_2_1";
  inputs."diff-0_2_1".owner = "nim-nix-pkgs";
  inputs."diff-0_2_1".ref   = "master";
  inputs."diff-0_2_1".repo  = "diff";
  inputs."diff-0_2_1".type  = "github";
  inputs."diff-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_3_0".dir   = "0_3_0";
  inputs."diff-0_3_0".owner = "nim-nix-pkgs";
  inputs."diff-0_3_0".ref   = "master";
  inputs."diff-0_3_0".repo  = "diff";
  inputs."diff-0_3_0".type  = "github";
  inputs."diff-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_4_0".dir   = "0_4_0";
  inputs."diff-0_4_0".owner = "nim-nix-pkgs";
  inputs."diff-0_4_0".ref   = "master";
  inputs."diff-0_4_0".repo  = "diff";
  inputs."diff-0_4_0".type  = "github";
  inputs."diff-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."diff-0_5_0".dir   = "0_5_0";
  inputs."diff-0_5_0".owner = "nim-nix-pkgs";
  inputs."diff-0_5_0".ref   = "master";
  inputs."diff-0_5_0".repo  = "diff";
  inputs."diff-0_5_0".type  = "github";
  inputs."diff-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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