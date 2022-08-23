{
  description = ''Fonts, Typesetting and Rasterization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."typography-master".dir   = "master";
  inputs."typography-master".owner = "nim-nix-pkgs";
  inputs."typography-master".ref   = "master";
  inputs."typography-master".repo  = "typography";
  inputs."typography-master".type  = "github";
  inputs."typography-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_0".dir   = "0_2_0";
  inputs."typography-0_2_0".owner = "nim-nix-pkgs";
  inputs."typography-0_2_0".ref   = "master";
  inputs."typography-0_2_0".repo  = "typography";
  inputs."typography-0_2_0".type  = "github";
  inputs."typography-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_1".dir   = "0_2_1";
  inputs."typography-0_2_1".owner = "nim-nix-pkgs";
  inputs."typography-0_2_1".ref   = "master";
  inputs."typography-0_2_1".repo  = "typography";
  inputs."typography-0_2_1".type  = "github";
  inputs."typography-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_2".dir   = "0_2_2";
  inputs."typography-0_2_2".owner = "nim-nix-pkgs";
  inputs."typography-0_2_2".ref   = "master";
  inputs."typography-0_2_2".repo  = "typography";
  inputs."typography-0_2_2".type  = "github";
  inputs."typography-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_3".dir   = "0_2_3";
  inputs."typography-0_2_3".owner = "nim-nix-pkgs";
  inputs."typography-0_2_3".ref   = "master";
  inputs."typography-0_2_3".repo  = "typography";
  inputs."typography-0_2_3".type  = "github";
  inputs."typography-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_0".dir   = "0_3_0";
  inputs."typography-0_3_0".owner = "nim-nix-pkgs";
  inputs."typography-0_3_0".ref   = "master";
  inputs."typography-0_3_0".repo  = "typography";
  inputs."typography-0_3_0".type  = "github";
  inputs."typography-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_1".dir   = "0_3_1";
  inputs."typography-0_3_1".owner = "nim-nix-pkgs";
  inputs."typography-0_3_1".ref   = "master";
  inputs."typography-0_3_1".repo  = "typography";
  inputs."typography-0_3_1".type  = "github";
  inputs."typography-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_2".dir   = "0_3_2";
  inputs."typography-0_3_2".owner = "nim-nix-pkgs";
  inputs."typography-0_3_2".ref   = "master";
  inputs."typography-0_3_2".repo  = "typography";
  inputs."typography-0_3_2".type  = "github";
  inputs."typography-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_3".dir   = "0_3_3";
  inputs."typography-0_3_3".owner = "nim-nix-pkgs";
  inputs."typography-0_3_3".ref   = "master";
  inputs."typography-0_3_3".repo  = "typography";
  inputs."typography-0_3_3".type  = "github";
  inputs."typography-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_6_0".dir   = "0_6_0";
  inputs."typography-0_6_0".owner = "nim-nix-pkgs";
  inputs."typography-0_6_0".ref   = "master";
  inputs."typography-0_6_0".repo  = "typography";
  inputs."typography-0_6_0".type  = "github";
  inputs."typography-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_0".dir   = "0_7_0";
  inputs."typography-0_7_0".owner = "nim-nix-pkgs";
  inputs."typography-0_7_0".ref   = "master";
  inputs."typography-0_7_0".repo  = "typography";
  inputs."typography-0_7_0".type  = "github";
  inputs."typography-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_1".dir   = "0_7_1";
  inputs."typography-0_7_1".owner = "nim-nix-pkgs";
  inputs."typography-0_7_1".ref   = "master";
  inputs."typography-0_7_1".repo  = "typography";
  inputs."typography-0_7_1".type  = "github";
  inputs."typography-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_10".dir   = "0_7_10";
  inputs."typography-0_7_10".owner = "nim-nix-pkgs";
  inputs."typography-0_7_10".ref   = "master";
  inputs."typography-0_7_10".repo  = "typography";
  inputs."typography-0_7_10".type  = "github";
  inputs."typography-0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_11".dir   = "0_7_11";
  inputs."typography-0_7_11".owner = "nim-nix-pkgs";
  inputs."typography-0_7_11".ref   = "master";
  inputs."typography-0_7_11".repo  = "typography";
  inputs."typography-0_7_11".type  = "github";
  inputs."typography-0_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_12".dir   = "0_7_12";
  inputs."typography-0_7_12".owner = "nim-nix-pkgs";
  inputs."typography-0_7_12".ref   = "master";
  inputs."typography-0_7_12".repo  = "typography";
  inputs."typography-0_7_12".type  = "github";
  inputs."typography-0_7_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_13".dir   = "0_7_13";
  inputs."typography-0_7_13".owner = "nim-nix-pkgs";
  inputs."typography-0_7_13".ref   = "master";
  inputs."typography-0_7_13".repo  = "typography";
  inputs."typography-0_7_13".type  = "github";
  inputs."typography-0_7_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_14".dir   = "0_7_14";
  inputs."typography-0_7_14".owner = "nim-nix-pkgs";
  inputs."typography-0_7_14".ref   = "master";
  inputs."typography-0_7_14".repo  = "typography";
  inputs."typography-0_7_14".type  = "github";
  inputs."typography-0_7_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_2".dir   = "0_7_2";
  inputs."typography-0_7_2".owner = "nim-nix-pkgs";
  inputs."typography-0_7_2".ref   = "master";
  inputs."typography-0_7_2".repo  = "typography";
  inputs."typography-0_7_2".type  = "github";
  inputs."typography-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_3".dir   = "0_7_3";
  inputs."typography-0_7_3".owner = "nim-nix-pkgs";
  inputs."typography-0_7_3".ref   = "master";
  inputs."typography-0_7_3".repo  = "typography";
  inputs."typography-0_7_3".type  = "github";
  inputs."typography-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_4".dir   = "0_7_4";
  inputs."typography-0_7_4".owner = "nim-nix-pkgs";
  inputs."typography-0_7_4".ref   = "master";
  inputs."typography-0_7_4".repo  = "typography";
  inputs."typography-0_7_4".type  = "github";
  inputs."typography-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_5".dir   = "0_7_5";
  inputs."typography-0_7_5".owner = "nim-nix-pkgs";
  inputs."typography-0_7_5".ref   = "master";
  inputs."typography-0_7_5".repo  = "typography";
  inputs."typography-0_7_5".type  = "github";
  inputs."typography-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_6".dir   = "0_7_6";
  inputs."typography-0_7_6".owner = "nim-nix-pkgs";
  inputs."typography-0_7_6".ref   = "master";
  inputs."typography-0_7_6".repo  = "typography";
  inputs."typography-0_7_6".type  = "github";
  inputs."typography-0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_7".dir   = "0_7_7";
  inputs."typography-0_7_7".owner = "nim-nix-pkgs";
  inputs."typography-0_7_7".ref   = "master";
  inputs."typography-0_7_7".repo  = "typography";
  inputs."typography-0_7_7".type  = "github";
  inputs."typography-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_8".dir   = "0_7_8";
  inputs."typography-0_7_8".owner = "nim-nix-pkgs";
  inputs."typography-0_7_8".ref   = "master";
  inputs."typography-0_7_8".repo  = "typography";
  inputs."typography-0_7_8".type  = "github";
  inputs."typography-0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_9".dir   = "0_7_9";
  inputs."typography-0_7_9".owner = "nim-nix-pkgs";
  inputs."typography-0_7_9".ref   = "master";
  inputs."typography-0_7_9".repo  = "typography";
  inputs."typography-0_7_9".type  = "github";
  inputs."typography-0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-v0_2_3".dir   = "v0_2_3";
  inputs."typography-v0_2_3".owner = "nim-nix-pkgs";
  inputs."typography-v0_2_3".ref   = "master";
  inputs."typography-v0_2_3".repo  = "typography";
  inputs."typography-v0_2_3".type  = "github";
  inputs."typography-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-v0_2_4".dir   = "v0_2_4";
  inputs."typography-v0_2_4".owner = "nim-nix-pkgs";
  inputs."typography-v0_2_4".ref   = "master";
  inputs."typography-v0_2_4".repo  = "typography";
  inputs."typography-v0_2_4".type  = "github";
  inputs."typography-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-v0_3_0".dir   = "v0_3_0";
  inputs."typography-v0_3_0".owner = "nim-nix-pkgs";
  inputs."typography-v0_3_0".ref   = "master";
  inputs."typography-v0_3_0".repo  = "typography";
  inputs."typography-v0_3_0".type  = "github";
  inputs."typography-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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