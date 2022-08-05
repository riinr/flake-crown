{
  description = ''A Grid (R) like package in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ginger-master".dir   = "master";
  inputs."ginger-master".owner = "nim-nix-pkgs";
  inputs."ginger-master".ref   = "master";
  inputs."ginger-master".repo  = "ginger";
  inputs."ginger-master".type  = "github";
  inputs."ginger-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_1".dir   = "v0_1_1";
  inputs."ginger-v0_1_1".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_1".ref   = "master";
  inputs."ginger-v0_1_1".repo  = "ginger";
  inputs."ginger-v0_1_1".type  = "github";
  inputs."ginger-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_10".dir   = "v0_1_10";
  inputs."ginger-v0_1_10".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_10".ref   = "master";
  inputs."ginger-v0_1_10".repo  = "ginger";
  inputs."ginger-v0_1_10".type  = "github";
  inputs."ginger-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_11".dir   = "v0_1_11";
  inputs."ginger-v0_1_11".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_11".ref   = "master";
  inputs."ginger-v0_1_11".repo  = "ginger";
  inputs."ginger-v0_1_11".type  = "github";
  inputs."ginger-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_12".dir   = "v0_1_12";
  inputs."ginger-v0_1_12".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_12".ref   = "master";
  inputs."ginger-v0_1_12".repo  = "ginger";
  inputs."ginger-v0_1_12".type  = "github";
  inputs."ginger-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_13".dir   = "v0_1_13";
  inputs."ginger-v0_1_13".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_13".ref   = "master";
  inputs."ginger-v0_1_13".repo  = "ginger";
  inputs."ginger-v0_1_13".type  = "github";
  inputs."ginger-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_14".dir   = "v0_1_14";
  inputs."ginger-v0_1_14".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_14".ref   = "master";
  inputs."ginger-v0_1_14".repo  = "ginger";
  inputs."ginger-v0_1_14".type  = "github";
  inputs."ginger-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_15".dir   = "v0_1_15";
  inputs."ginger-v0_1_15".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_15".ref   = "master";
  inputs."ginger-v0_1_15".repo  = "ginger";
  inputs."ginger-v0_1_15".type  = "github";
  inputs."ginger-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_16".dir   = "v0_1_16";
  inputs."ginger-v0_1_16".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_16".ref   = "master";
  inputs."ginger-v0_1_16".repo  = "ginger";
  inputs."ginger-v0_1_16".type  = "github";
  inputs."ginger-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_17".dir   = "v0_1_17";
  inputs."ginger-v0_1_17".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_17".ref   = "master";
  inputs."ginger-v0_1_17".repo  = "ginger";
  inputs."ginger-v0_1_17".type  = "github";
  inputs."ginger-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_2".dir   = "v0_1_2";
  inputs."ginger-v0_1_2".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_2".ref   = "master";
  inputs."ginger-v0_1_2".repo  = "ginger";
  inputs."ginger-v0_1_2".type  = "github";
  inputs."ginger-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_3".dir   = "v0_1_3";
  inputs."ginger-v0_1_3".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_3".ref   = "master";
  inputs."ginger-v0_1_3".repo  = "ginger";
  inputs."ginger-v0_1_3".type  = "github";
  inputs."ginger-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_4".dir   = "v0_1_4";
  inputs."ginger-v0_1_4".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_4".ref   = "master";
  inputs."ginger-v0_1_4".repo  = "ginger";
  inputs."ginger-v0_1_4".type  = "github";
  inputs."ginger-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_5".dir   = "v0_1_5";
  inputs."ginger-v0_1_5".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_5".ref   = "master";
  inputs."ginger-v0_1_5".repo  = "ginger";
  inputs."ginger-v0_1_5".type  = "github";
  inputs."ginger-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_6".dir   = "v0_1_6";
  inputs."ginger-v0_1_6".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_6".ref   = "master";
  inputs."ginger-v0_1_6".repo  = "ginger";
  inputs."ginger-v0_1_6".type  = "github";
  inputs."ginger-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_7".dir   = "v0_1_7";
  inputs."ginger-v0_1_7".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_7".ref   = "master";
  inputs."ginger-v0_1_7".repo  = "ginger";
  inputs."ginger-v0_1_7".type  = "github";
  inputs."ginger-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_8".dir   = "v0_1_8";
  inputs."ginger-v0_1_8".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_8".ref   = "master";
  inputs."ginger-v0_1_8".repo  = "ginger";
  inputs."ginger-v0_1_8".type  = "github";
  inputs."ginger-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_1_9".dir   = "v0_1_9";
  inputs."ginger-v0_1_9".owner = "nim-nix-pkgs";
  inputs."ginger-v0_1_9".ref   = "master";
  inputs."ginger-v0_1_9".repo  = "ginger";
  inputs."ginger-v0_1_9".type  = "github";
  inputs."ginger-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_0".dir   = "v0_2_0";
  inputs."ginger-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_0".ref   = "master";
  inputs."ginger-v0_2_0".repo  = "ginger";
  inputs."ginger-v0_2_0".type  = "github";
  inputs."ginger-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_1".dir   = "v0_2_1";
  inputs."ginger-v0_2_1".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_1".ref   = "master";
  inputs."ginger-v0_2_1".repo  = "ginger";
  inputs."ginger-v0_2_1".type  = "github";
  inputs."ginger-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_10".dir   = "v0_2_10";
  inputs."ginger-v0_2_10".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_10".ref   = "master";
  inputs."ginger-v0_2_10".repo  = "ginger";
  inputs."ginger-v0_2_10".type  = "github";
  inputs."ginger-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_11".dir   = "v0_2_11";
  inputs."ginger-v0_2_11".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_11".ref   = "master";
  inputs."ginger-v0_2_11".repo  = "ginger";
  inputs."ginger-v0_2_11".type  = "github";
  inputs."ginger-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_12".dir   = "v0_2_12";
  inputs."ginger-v0_2_12".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_12".ref   = "master";
  inputs."ginger-v0_2_12".repo  = "ginger";
  inputs."ginger-v0_2_12".type  = "github";
  inputs."ginger-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_2".dir   = "v0_2_2";
  inputs."ginger-v0_2_2".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_2".ref   = "master";
  inputs."ginger-v0_2_2".repo  = "ginger";
  inputs."ginger-v0_2_2".type  = "github";
  inputs."ginger-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_3".dir   = "v0_2_3";
  inputs."ginger-v0_2_3".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_3".ref   = "master";
  inputs."ginger-v0_2_3".repo  = "ginger";
  inputs."ginger-v0_2_3".type  = "github";
  inputs."ginger-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_4".dir   = "v0_2_4";
  inputs."ginger-v0_2_4".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_4".ref   = "master";
  inputs."ginger-v0_2_4".repo  = "ginger";
  inputs."ginger-v0_2_4".type  = "github";
  inputs."ginger-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_5".dir   = "v0_2_5";
  inputs."ginger-v0_2_5".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_5".ref   = "master";
  inputs."ginger-v0_2_5".repo  = "ginger";
  inputs."ginger-v0_2_5".type  = "github";
  inputs."ginger-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_6".dir   = "v0_2_6";
  inputs."ginger-v0_2_6".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_6".ref   = "master";
  inputs."ginger-v0_2_6".repo  = "ginger";
  inputs."ginger-v0_2_6".type  = "github";
  inputs."ginger-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_7".dir   = "v0_2_7";
  inputs."ginger-v0_2_7".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_7".ref   = "master";
  inputs."ginger-v0_2_7".repo  = "ginger";
  inputs."ginger-v0_2_7".type  = "github";
  inputs."ginger-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_2_8".dir   = "v0_2_8";
  inputs."ginger-v0_2_8".owner = "nim-nix-pkgs";
  inputs."ginger-v0_2_8".ref   = "master";
  inputs."ginger-v0_2_8".repo  = "ginger";
  inputs."ginger-v0_2_8".type  = "github";
  inputs."ginger-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_0".dir   = "v0_3_0";
  inputs."ginger-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_0".ref   = "master";
  inputs."ginger-v0_3_0".repo  = "ginger";
  inputs."ginger-v0_3_0".type  = "github";
  inputs."ginger-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_1".dir   = "v0_3_1";
  inputs."ginger-v0_3_1".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_1".ref   = "master";
  inputs."ginger-v0_3_1".repo  = "ginger";
  inputs."ginger-v0_3_1".type  = "github";
  inputs."ginger-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_10".dir   = "v0_3_10";
  inputs."ginger-v0_3_10".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_10".ref   = "master";
  inputs."ginger-v0_3_10".repo  = "ginger";
  inputs."ginger-v0_3_10".type  = "github";
  inputs."ginger-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_11".dir   = "v0_3_11";
  inputs."ginger-v0_3_11".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_11".ref   = "master";
  inputs."ginger-v0_3_11".repo  = "ginger";
  inputs."ginger-v0_3_11".type  = "github";
  inputs."ginger-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_12".dir   = "v0_3_12";
  inputs."ginger-v0_3_12".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_12".ref   = "master";
  inputs."ginger-v0_3_12".repo  = "ginger";
  inputs."ginger-v0_3_12".type  = "github";
  inputs."ginger-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_13".dir   = "v0_3_13";
  inputs."ginger-v0_3_13".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_13".ref   = "master";
  inputs."ginger-v0_3_13".repo  = "ginger";
  inputs."ginger-v0_3_13".type  = "github";
  inputs."ginger-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_2".dir   = "v0_3_2";
  inputs."ginger-v0_3_2".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_2".ref   = "master";
  inputs."ginger-v0_3_2".repo  = "ginger";
  inputs."ginger-v0_3_2".type  = "github";
  inputs."ginger-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_3".dir   = "v0_3_3";
  inputs."ginger-v0_3_3".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_3".ref   = "master";
  inputs."ginger-v0_3_3".repo  = "ginger";
  inputs."ginger-v0_3_3".type  = "github";
  inputs."ginger-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_4".dir   = "v0_3_4";
  inputs."ginger-v0_3_4".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_4".ref   = "master";
  inputs."ginger-v0_3_4".repo  = "ginger";
  inputs."ginger-v0_3_4".type  = "github";
  inputs."ginger-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_5".dir   = "v0_3_5";
  inputs."ginger-v0_3_5".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_5".ref   = "master";
  inputs."ginger-v0_3_5".repo  = "ginger";
  inputs."ginger-v0_3_5".type  = "github";
  inputs."ginger-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_6".dir   = "v0_3_6";
  inputs."ginger-v0_3_6".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_6".ref   = "master";
  inputs."ginger-v0_3_6".repo  = "ginger";
  inputs."ginger-v0_3_6".type  = "github";
  inputs."ginger-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_7".dir   = "v0_3_7";
  inputs."ginger-v0_3_7".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_7".ref   = "master";
  inputs."ginger-v0_3_7".repo  = "ginger";
  inputs."ginger-v0_3_7".type  = "github";
  inputs."ginger-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_8".dir   = "v0_3_8";
  inputs."ginger-v0_3_8".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_8".ref   = "master";
  inputs."ginger-v0_3_8".repo  = "ginger";
  inputs."ginger-v0_3_8".type  = "github";
  inputs."ginger-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ginger-v0_3_9".dir   = "v0_3_9";
  inputs."ginger-v0_3_9".owner = "nim-nix-pkgs";
  inputs."ginger-v0_3_9".ref   = "master";
  inputs."ginger-v0_3_9".repo  = "ginger";
  inputs."ginger-v0_3_9".type  = "github";
  inputs."ginger-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ginger-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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