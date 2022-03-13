{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hastyscribe-master".dir   = "master";
  inputs."hastyscribe-master".owner = "nim-nix-pkgs";
  inputs."hastyscribe-master".ref   = "master";
  inputs."hastyscribe-master".repo  = "hastyscribe";
  inputs."hastyscribe-master".type  = "github";
  inputs."hastyscribe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0".dir   = "v1_0";
  inputs."hastyscribe-v1_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0".ref   = "master";
  inputs."hastyscribe-v1_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0".type  = "github";
  inputs."hastyscribe-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_1".dir   = "v1_0_1";
  inputs."hastyscribe-v1_0_1".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_1".ref   = "master";
  inputs."hastyscribe-v1_0_1".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_1".type  = "github";
  inputs."hastyscribe-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_2".dir   = "v1_0_2";
  inputs."hastyscribe-v1_0_2".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_2".ref   = "master";
  inputs."hastyscribe-v1_0_2".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_2".type  = "github";
  inputs."hastyscribe-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_3".dir   = "v1_0_3";
  inputs."hastyscribe-v1_0_3".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_3".ref   = "master";
  inputs."hastyscribe-v1_0_3".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_3".type  = "github";
  inputs."hastyscribe-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_4".dir   = "v1_0_4";
  inputs."hastyscribe-v1_0_4".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_4".ref   = "master";
  inputs."hastyscribe-v1_0_4".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_4".type  = "github";
  inputs."hastyscribe-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_5".dir   = "v1_0_5";
  inputs."hastyscribe-v1_0_5".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_5".ref   = "master";
  inputs."hastyscribe-v1_0_5".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_5".type  = "github";
  inputs."hastyscribe-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_6".dir   = "v1_0_6";
  inputs."hastyscribe-v1_0_6".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_6".ref   = "master";
  inputs."hastyscribe-v1_0_6".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_6".type  = "github";
  inputs."hastyscribe-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_7".dir   = "v1_0_7";
  inputs."hastyscribe-v1_0_7".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_7".ref   = "master";
  inputs."hastyscribe-v1_0_7".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_7".type  = "github";
  inputs."hastyscribe-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_8".dir   = "v1_0_8";
  inputs."hastyscribe-v1_0_8".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_8".ref   = "master";
  inputs."hastyscribe-v1_0_8".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_8".type  = "github";
  inputs."hastyscribe-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_0_9".dir   = "v1_0_9";
  inputs."hastyscribe-v1_0_9".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_0_9".ref   = "master";
  inputs."hastyscribe-v1_0_9".repo  = "hastyscribe";
  inputs."hastyscribe-v1_0_9".type  = "github";
  inputs."hastyscribe-v1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_1_0".dir   = "v1_1_0";
  inputs."hastyscribe-v1_1_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_1_0".ref   = "master";
  inputs."hastyscribe-v1_1_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_1_0".type  = "github";
  inputs."hastyscribe-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_1_1".dir   = "v1_1_1";
  inputs."hastyscribe-v1_1_1".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_1_1".ref   = "master";
  inputs."hastyscribe-v1_1_1".repo  = "hastyscribe";
  inputs."hastyscribe-v1_1_1".type  = "github";
  inputs."hastyscribe-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_1_2".dir   = "v1_1_2";
  inputs."hastyscribe-v1_1_2".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_1_2".ref   = "master";
  inputs."hastyscribe-v1_1_2".repo  = "hastyscribe";
  inputs."hastyscribe-v1_1_2".type  = "github";
  inputs."hastyscribe-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_1_3".dir   = "v1_1_3";
  inputs."hastyscribe-v1_1_3".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_1_3".ref   = "master";
  inputs."hastyscribe-v1_1_3".repo  = "hastyscribe";
  inputs."hastyscribe-v1_1_3".type  = "github";
  inputs."hastyscribe-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_10_0".dir   = "v1_10_0";
  inputs."hastyscribe-v1_10_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_10_0".ref   = "master";
  inputs."hastyscribe-v1_10_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_10_0".type  = "github";
  inputs."hastyscribe-v1_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_11_0".dir   = "v1_11_0";
  inputs."hastyscribe-v1_11_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_11_0".ref   = "master";
  inputs."hastyscribe-v1_11_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_11_0".type  = "github";
  inputs."hastyscribe-v1_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_12_0".dir   = "v1_12_0";
  inputs."hastyscribe-v1_12_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_12_0".ref   = "master";
  inputs."hastyscribe-v1_12_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_12_0".type  = "github";
  inputs."hastyscribe-v1_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_12_1".dir   = "v1_12_1";
  inputs."hastyscribe-v1_12_1".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_12_1".ref   = "master";
  inputs."hastyscribe-v1_12_1".repo  = "hastyscribe";
  inputs."hastyscribe-v1_12_1".type  = "github";
  inputs."hastyscribe-v1_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_12_2".dir   = "v1_12_2";
  inputs."hastyscribe-v1_12_2".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_12_2".ref   = "master";
  inputs."hastyscribe-v1_12_2".repo  = "hastyscribe";
  inputs."hastyscribe-v1_12_2".type  = "github";
  inputs."hastyscribe-v1_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_12_3".dir   = "v1_12_3";
  inputs."hastyscribe-v1_12_3".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_12_3".ref   = "master";
  inputs."hastyscribe-v1_12_3".repo  = "hastyscribe";
  inputs."hastyscribe-v1_12_3".type  = "github";
  inputs."hastyscribe-v1_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_12_4".dir   = "v1_12_4";
  inputs."hastyscribe-v1_12_4".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_12_4".ref   = "master";
  inputs."hastyscribe-v1_12_4".repo  = "hastyscribe";
  inputs."hastyscribe-v1_12_4".type  = "github";
  inputs."hastyscribe-v1_12_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_12_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_12_5".dir   = "v1_12_5";
  inputs."hastyscribe-v1_12_5".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_12_5".ref   = "master";
  inputs."hastyscribe-v1_12_5".repo  = "hastyscribe";
  inputs."hastyscribe-v1_12_5".type  = "github";
  inputs."hastyscribe-v1_12_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_12_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_2_0".dir   = "v1_2_0";
  inputs."hastyscribe-v1_2_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_2_0".ref   = "master";
  inputs."hastyscribe-v1_2_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_2_0".type  = "github";
  inputs."hastyscribe-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_2_1".dir   = "v1_2_1";
  inputs."hastyscribe-v1_2_1".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_2_1".ref   = "master";
  inputs."hastyscribe-v1_2_1".repo  = "hastyscribe";
  inputs."hastyscribe-v1_2_1".type  = "github";
  inputs."hastyscribe-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_3_0".dir   = "v1_3_0";
  inputs."hastyscribe-v1_3_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_3_0".ref   = "master";
  inputs."hastyscribe-v1_3_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_3_0".type  = "github";
  inputs."hastyscribe-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_4_0".dir   = "v1_4_0";
  inputs."hastyscribe-v1_4_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_4_0".ref   = "master";
  inputs."hastyscribe-v1_4_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_4_0".type  = "github";
  inputs."hastyscribe-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_5_0".dir   = "v1_5_0";
  inputs."hastyscribe-v1_5_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_5_0".ref   = "master";
  inputs."hastyscribe-v1_5_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_5_0".type  = "github";
  inputs."hastyscribe-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_6_0".dir   = "v1_6_0";
  inputs."hastyscribe-v1_6_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_6_0".ref   = "master";
  inputs."hastyscribe-v1_6_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_6_0".type  = "github";
  inputs."hastyscribe-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_7_0".dir   = "v1_7_0";
  inputs."hastyscribe-v1_7_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_7_0".ref   = "master";
  inputs."hastyscribe-v1_7_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_7_0".type  = "github";
  inputs."hastyscribe-v1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_7_1".dir   = "v1_7_1";
  inputs."hastyscribe-v1_7_1".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_7_1".ref   = "master";
  inputs."hastyscribe-v1_7_1".repo  = "hastyscribe";
  inputs."hastyscribe-v1_7_1".type  = "github";
  inputs."hastyscribe-v1_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_8_0".dir   = "v1_8_0";
  inputs."hastyscribe-v1_8_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_8_0".ref   = "master";
  inputs."hastyscribe-v1_8_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_8_0".type  = "github";
  inputs."hastyscribe-v1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastyscribe-v1_9_0".dir   = "v1_9_0";
  inputs."hastyscribe-v1_9_0".owner = "nim-nix-pkgs";
  inputs."hastyscribe-v1_9_0".ref   = "master";
  inputs."hastyscribe-v1_9_0".repo  = "hastyscribe";
  inputs."hastyscribe-v1_9_0".type  = "github";
  inputs."hastyscribe-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastyscribe-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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