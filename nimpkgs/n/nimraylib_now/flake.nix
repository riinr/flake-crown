{
  description = ''The Ultimate Raylib gaming library wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimraylib_now-master".dir   = "master";
  inputs."nimraylib_now-master".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-master".ref   = "master";
  inputs."nimraylib_now-master".repo  = "nimraylib_now";
  inputs."nimraylib_now-master".type  = "github";
  inputs."nimraylib_now-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_10_0".dir   = "v0_10_0";
  inputs."nimraylib_now-v0_10_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_10_0".ref   = "master";
  inputs."nimraylib_now-v0_10_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_10_0".type  = "github";
  inputs."nimraylib_now-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_12_0".dir   = "v0_12_0";
  inputs."nimraylib_now-v0_12_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_12_0".ref   = "master";
  inputs."nimraylib_now-v0_12_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_12_0".type  = "github";
  inputs."nimraylib_now-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_12_1".dir   = "v0_12_1";
  inputs."nimraylib_now-v0_12_1".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_12_1".ref   = "master";
  inputs."nimraylib_now-v0_12_1".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_12_1".type  = "github";
  inputs."nimraylib_now-v0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_12_2".dir   = "v0_12_2";
  inputs."nimraylib_now-v0_12_2".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_12_2".ref   = "master";
  inputs."nimraylib_now-v0_12_2".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_12_2".type  = "github";
  inputs."nimraylib_now-v0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_12_3".dir   = "v0_12_3";
  inputs."nimraylib_now-v0_12_3".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_12_3".ref   = "master";
  inputs."nimraylib_now-v0_12_3".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_12_3".type  = "github";
  inputs."nimraylib_now-v0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_12_4".dir   = "v0_12_4";
  inputs."nimraylib_now-v0_12_4".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_12_4".ref   = "master";
  inputs."nimraylib_now-v0_12_4".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_12_4".type  = "github";
  inputs."nimraylib_now-v0_12_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_12_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_12_5".dir   = "v0_12_5";
  inputs."nimraylib_now-v0_12_5".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_12_5".ref   = "master";
  inputs."nimraylib_now-v0_12_5".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_12_5".type  = "github";
  inputs."nimraylib_now-v0_12_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_12_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_13_0".dir   = "v0_13_0";
  inputs."nimraylib_now-v0_13_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_13_0".ref   = "master";
  inputs."nimraylib_now-v0_13_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_13_0".type  = "github";
  inputs."nimraylib_now-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_13_1".dir   = "v0_13_1";
  inputs."nimraylib_now-v0_13_1".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_13_1".ref   = "master";
  inputs."nimraylib_now-v0_13_1".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_13_1".type  = "github";
  inputs."nimraylib_now-v0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_13_2".dir   = "v0_13_2";
  inputs."nimraylib_now-v0_13_2".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_13_2".ref   = "master";
  inputs."nimraylib_now-v0_13_2".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_13_2".type  = "github";
  inputs."nimraylib_now-v0_13_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_13_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_14_0".dir   = "v0_14_0";
  inputs."nimraylib_now-v0_14_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_14_0".ref   = "master";
  inputs."nimraylib_now-v0_14_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_14_0".type  = "github";
  inputs."nimraylib_now-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_14_1".dir   = "v0_14_1";
  inputs."nimraylib_now-v0_14_1".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_14_1".ref   = "master";
  inputs."nimraylib_now-v0_14_1".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_14_1".type  = "github";
  inputs."nimraylib_now-v0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_14_2".dir   = "v0_14_2";
  inputs."nimraylib_now-v0_14_2".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_14_2".ref   = "master";
  inputs."nimraylib_now-v0_14_2".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_14_2".type  = "github";
  inputs."nimraylib_now-v0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_15_0".dir   = "v0_15_0";
  inputs."nimraylib_now-v0_15_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_15_0".ref   = "master";
  inputs."nimraylib_now-v0_15_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_15_0".type  = "github";
  inputs."nimraylib_now-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_3_0".dir   = "v0_3_0";
  inputs."nimraylib_now-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_3_0".ref   = "master";
  inputs."nimraylib_now-v0_3_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_3_0".type  = "github";
  inputs."nimraylib_now-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_4_0".dir   = "v0_4_0";
  inputs."nimraylib_now-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_4_0".ref   = "master";
  inputs."nimraylib_now-v0_4_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_4_0".type  = "github";
  inputs."nimraylib_now-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_5_0".dir   = "v0_5_0";
  inputs."nimraylib_now-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_5_0".ref   = "master";
  inputs."nimraylib_now-v0_5_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_5_0".type  = "github";
  inputs."nimraylib_now-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_6_0".dir   = "v0_6_0";
  inputs."nimraylib_now-v0_6_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_6_0".ref   = "master";
  inputs."nimraylib_now-v0_6_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_6_0".type  = "github";
  inputs."nimraylib_now-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_7_0".dir   = "v0_7_0";
  inputs."nimraylib_now-v0_7_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_7_0".ref   = "master";
  inputs."nimraylib_now-v0_7_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_7_0".type  = "github";
  inputs."nimraylib_now-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_8_0".dir   = "v0_8_0";
  inputs."nimraylib_now-v0_8_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_8_0".ref   = "master";
  inputs."nimraylib_now-v0_8_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_8_0".type  = "github";
  inputs."nimraylib_now-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_9_0".dir   = "v0_9_0";
  inputs."nimraylib_now-v0_9_0".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_9_0".ref   = "master";
  inputs."nimraylib_now-v0_9_0".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_9_0".type  = "github";
  inputs."nimraylib_now-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimraylib_now-v0_9_1".dir   = "v0_9_1";
  inputs."nimraylib_now-v0_9_1".owner = "nim-nix-pkgs";
  inputs."nimraylib_now-v0_9_1".ref   = "master";
  inputs."nimraylib_now-v0_9_1".repo  = "nimraylib_now";
  inputs."nimraylib_now-v0_9_1".type  = "github";
  inputs."nimraylib_now-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimraylib_now-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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