{
  description = ''A tensor (multidimensional array) library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arraymancer-master".dir   = "master";
  inputs."arraymancer-master".owner = "nim-nix-pkgs";
  inputs."arraymancer-master".ref   = "master";
  inputs."arraymancer-master".repo  = "arraymancer";
  inputs."arraymancer-master".type  = "github";
  inputs."arraymancer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_0".dir   = "v0_1_0";
  inputs."arraymancer-v0_1_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_1_0".ref   = "master";
  inputs."arraymancer-v0_1_0".repo  = "arraymancer";
  inputs."arraymancer-v0_1_0".type  = "github";
  inputs."arraymancer-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_1".dir   = "v0_1_1";
  inputs."arraymancer-v0_1_1".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_1_1".ref   = "master";
  inputs."arraymancer-v0_1_1".repo  = "arraymancer";
  inputs."arraymancer-v0_1_1".type  = "github";
  inputs."arraymancer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_2".dir   = "v0_1_2";
  inputs."arraymancer-v0_1_2".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_1_2".ref   = "master";
  inputs."arraymancer-v0_1_2".repo  = "arraymancer";
  inputs."arraymancer-v0_1_2".type  = "github";
  inputs."arraymancer-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_1_3".dir   = "v0_1_3";
  inputs."arraymancer-v0_1_3".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_1_3".ref   = "master";
  inputs."arraymancer-v0_1_3".repo  = "arraymancer";
  inputs."arraymancer-v0_1_3".type  = "github";
  inputs."arraymancer-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_2_0".dir   = "v0_2_0";
  inputs."arraymancer-v0_2_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_2_0".ref   = "master";
  inputs."arraymancer-v0_2_0".repo  = "arraymancer";
  inputs."arraymancer-v0_2_0".type  = "github";
  inputs."arraymancer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_3_0".dir   = "v0_3_0";
  inputs."arraymancer-v0_3_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_3_0".ref   = "master";
  inputs."arraymancer-v0_3_0".repo  = "arraymancer";
  inputs."arraymancer-v0_3_0".type  = "github";
  inputs."arraymancer-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_4_0".dir   = "v0_4_0";
  inputs."arraymancer-v0_4_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_4_0".ref   = "master";
  inputs."arraymancer-v0_4_0".repo  = "arraymancer";
  inputs."arraymancer-v0_4_0".type  = "github";
  inputs."arraymancer-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_5_0".dir   = "v0_5_0";
  inputs."arraymancer-v0_5_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_5_0".ref   = "master";
  inputs."arraymancer-v0_5_0".repo  = "arraymancer";
  inputs."arraymancer-v0_5_0".type  = "github";
  inputs."arraymancer-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_5_1".dir   = "v0_5_1";
  inputs."arraymancer-v0_5_1".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_5_1".ref   = "master";
  inputs."arraymancer-v0_5_1".repo  = "arraymancer";
  inputs."arraymancer-v0_5_1".type  = "github";
  inputs."arraymancer-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_5_2".dir   = "v0_5_2";
  inputs."arraymancer-v0_5_2".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_5_2".ref   = "master";
  inputs."arraymancer-v0_5_2".repo  = "arraymancer";
  inputs."arraymancer-v0_5_2".type  = "github";
  inputs."arraymancer-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_6_0".dir   = "v0_6_0";
  inputs."arraymancer-v0_6_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_6_0".ref   = "master";
  inputs."arraymancer-v0_6_0".repo  = "arraymancer";
  inputs."arraymancer-v0_6_0".type  = "github";
  inputs."arraymancer-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_6_1".dir   = "v0_6_1";
  inputs."arraymancer-v0_6_1".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_6_1".ref   = "master";
  inputs."arraymancer-v0_6_1".repo  = "arraymancer";
  inputs."arraymancer-v0_6_1".type  = "github";
  inputs."arraymancer-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_6_2".dir   = "v0_6_2";
  inputs."arraymancer-v0_6_2".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_6_2".ref   = "master";
  inputs."arraymancer-v0_6_2".repo  = "arraymancer";
  inputs."arraymancer-v0_6_2".type  = "github";
  inputs."arraymancer-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_0".dir   = "v0_7_0";
  inputs."arraymancer-v0_7_0".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_0".ref   = "master";
  inputs."arraymancer-v0_7_0".repo  = "arraymancer";
  inputs."arraymancer-v0_7_0".type  = "github";
  inputs."arraymancer-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_1".dir   = "v0_7_1";
  inputs."arraymancer-v0_7_1".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_1".ref   = "master";
  inputs."arraymancer-v0_7_1".repo  = "arraymancer";
  inputs."arraymancer-v0_7_1".type  = "github";
  inputs."arraymancer-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_10".dir   = "v0_7_10";
  inputs."arraymancer-v0_7_10".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_10".ref   = "master";
  inputs."arraymancer-v0_7_10".repo  = "arraymancer";
  inputs."arraymancer-v0_7_10".type  = "github";
  inputs."arraymancer-v0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_11".dir   = "v0_7_11";
  inputs."arraymancer-v0_7_11".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_11".ref   = "master";
  inputs."arraymancer-v0_7_11".repo  = "arraymancer";
  inputs."arraymancer-v0_7_11".type  = "github";
  inputs."arraymancer-v0_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_12".dir   = "v0_7_12";
  inputs."arraymancer-v0_7_12".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_12".ref   = "master";
  inputs."arraymancer-v0_7_12".repo  = "arraymancer";
  inputs."arraymancer-v0_7_12".type  = "github";
  inputs."arraymancer-v0_7_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_13".dir   = "v0_7_13";
  inputs."arraymancer-v0_7_13".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_13".ref   = "master";
  inputs."arraymancer-v0_7_13".repo  = "arraymancer";
  inputs."arraymancer-v0_7_13".type  = "github";
  inputs."arraymancer-v0_7_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_14".dir   = "v0_7_14";
  inputs."arraymancer-v0_7_14".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_14".ref   = "master";
  inputs."arraymancer-v0_7_14".repo  = "arraymancer";
  inputs."arraymancer-v0_7_14".type  = "github";
  inputs."arraymancer-v0_7_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_15".dir   = "v0_7_15";
  inputs."arraymancer-v0_7_15".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_15".ref   = "master";
  inputs."arraymancer-v0_7_15".repo  = "arraymancer";
  inputs."arraymancer-v0_7_15".type  = "github";
  inputs."arraymancer-v0_7_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_2".dir   = "v0_7_2";
  inputs."arraymancer-v0_7_2".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_2".ref   = "master";
  inputs."arraymancer-v0_7_2".repo  = "arraymancer";
  inputs."arraymancer-v0_7_2".type  = "github";
  inputs."arraymancer-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_3".dir   = "v0_7_3";
  inputs."arraymancer-v0_7_3".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_3".ref   = "master";
  inputs."arraymancer-v0_7_3".repo  = "arraymancer";
  inputs."arraymancer-v0_7_3".type  = "github";
  inputs."arraymancer-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_4".dir   = "v0_7_4";
  inputs."arraymancer-v0_7_4".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_4".ref   = "master";
  inputs."arraymancer-v0_7_4".repo  = "arraymancer";
  inputs."arraymancer-v0_7_4".type  = "github";
  inputs."arraymancer-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_5".dir   = "v0_7_5";
  inputs."arraymancer-v0_7_5".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_5".ref   = "master";
  inputs."arraymancer-v0_7_5".repo  = "arraymancer";
  inputs."arraymancer-v0_7_5".type  = "github";
  inputs."arraymancer-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_6".dir   = "v0_7_6";
  inputs."arraymancer-v0_7_6".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_6".ref   = "master";
  inputs."arraymancer-v0_7_6".repo  = "arraymancer";
  inputs."arraymancer-v0_7_6".type  = "github";
  inputs."arraymancer-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_7".dir   = "v0_7_7";
  inputs."arraymancer-v0_7_7".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_7".ref   = "master";
  inputs."arraymancer-v0_7_7".repo  = "arraymancer";
  inputs."arraymancer-v0_7_7".type  = "github";
  inputs."arraymancer-v0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_8".dir   = "v0_7_8";
  inputs."arraymancer-v0_7_8".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_8".ref   = "master";
  inputs."arraymancer-v0_7_8".repo  = "arraymancer";
  inputs."arraymancer-v0_7_8".type  = "github";
  inputs."arraymancer-v0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer-v0_7_9".dir   = "v0_7_9";
  inputs."arraymancer-v0_7_9".owner = "nim-nix-pkgs";
  inputs."arraymancer-v0_7_9".ref   = "master";
  inputs."arraymancer-v0_7_9".repo  = "arraymancer";
  inputs."arraymancer-v0_7_9".type  = "github";
  inputs."arraymancer-v0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer-v0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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