{
  description = ''A dataframe library with a dplyr like API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."datamancer-master".dir   = "master";
  inputs."datamancer-master".owner = "nim-nix-pkgs";
  inputs."datamancer-master".ref   = "master";
  inputs."datamancer-master".repo  = "datamancer";
  inputs."datamancer-master".type  = "github";
  inputs."datamancer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_0".dir   = "v0_1_0";
  inputs."datamancer-v0_1_0".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_0".ref   = "master";
  inputs."datamancer-v0_1_0".repo  = "datamancer";
  inputs."datamancer-v0_1_0".type  = "github";
  inputs."datamancer-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_1".dir   = "v0_1_1";
  inputs."datamancer-v0_1_1".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_1".ref   = "master";
  inputs."datamancer-v0_1_1".repo  = "datamancer";
  inputs."datamancer-v0_1_1".type  = "github";
  inputs."datamancer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_10".dir   = "v0_1_10";
  inputs."datamancer-v0_1_10".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_10".ref   = "master";
  inputs."datamancer-v0_1_10".repo  = "datamancer";
  inputs."datamancer-v0_1_10".type  = "github";
  inputs."datamancer-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_11".dir   = "v0_1_11";
  inputs."datamancer-v0_1_11".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_11".ref   = "master";
  inputs."datamancer-v0_1_11".repo  = "datamancer";
  inputs."datamancer-v0_1_11".type  = "github";
  inputs."datamancer-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_2".dir   = "v0_1_2";
  inputs."datamancer-v0_1_2".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_2".ref   = "master";
  inputs."datamancer-v0_1_2".repo  = "datamancer";
  inputs."datamancer-v0_1_2".type  = "github";
  inputs."datamancer-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_3".dir   = "v0_1_3";
  inputs."datamancer-v0_1_3".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_3".ref   = "master";
  inputs."datamancer-v0_1_3".repo  = "datamancer";
  inputs."datamancer-v0_1_3".type  = "github";
  inputs."datamancer-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_4".dir   = "v0_1_4";
  inputs."datamancer-v0_1_4".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_4".ref   = "master";
  inputs."datamancer-v0_1_4".repo  = "datamancer";
  inputs."datamancer-v0_1_4".type  = "github";
  inputs."datamancer-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_5".dir   = "v0_1_5";
  inputs."datamancer-v0_1_5".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_5".ref   = "master";
  inputs."datamancer-v0_1_5".repo  = "datamancer";
  inputs."datamancer-v0_1_5".type  = "github";
  inputs."datamancer-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_6".dir   = "v0_1_6";
  inputs."datamancer-v0_1_6".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_6".ref   = "master";
  inputs."datamancer-v0_1_6".repo  = "datamancer";
  inputs."datamancer-v0_1_6".type  = "github";
  inputs."datamancer-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_7".dir   = "v0_1_7";
  inputs."datamancer-v0_1_7".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_7".ref   = "master";
  inputs."datamancer-v0_1_7".repo  = "datamancer";
  inputs."datamancer-v0_1_7".type  = "github";
  inputs."datamancer-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_1_8".dir   = "v0_1_8";
  inputs."datamancer-v0_1_8".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_1_8".ref   = "master";
  inputs."datamancer-v0_1_8".repo  = "datamancer";
  inputs."datamancer-v0_1_8".type  = "github";
  inputs."datamancer-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_0".dir   = "v0_2_0";
  inputs."datamancer-v0_2_0".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_0".ref   = "master";
  inputs."datamancer-v0_2_0".repo  = "datamancer";
  inputs."datamancer-v0_2_0".type  = "github";
  inputs."datamancer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_1".dir   = "v0_2_1";
  inputs."datamancer-v0_2_1".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_1".ref   = "master";
  inputs."datamancer-v0_2_1".repo  = "datamancer";
  inputs."datamancer-v0_2_1".type  = "github";
  inputs."datamancer-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_2".dir   = "v0_2_2";
  inputs."datamancer-v0_2_2".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_2".ref   = "master";
  inputs."datamancer-v0_2_2".repo  = "datamancer";
  inputs."datamancer-v0_2_2".type  = "github";
  inputs."datamancer-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_3".dir   = "v0_2_3";
  inputs."datamancer-v0_2_3".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_3".ref   = "master";
  inputs."datamancer-v0_2_3".repo  = "datamancer";
  inputs."datamancer-v0_2_3".type  = "github";
  inputs."datamancer-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_4".dir   = "v0_2_4";
  inputs."datamancer-v0_2_4".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_4".ref   = "master";
  inputs."datamancer-v0_2_4".repo  = "datamancer";
  inputs."datamancer-v0_2_4".type  = "github";
  inputs."datamancer-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_5".dir   = "v0_2_5";
  inputs."datamancer-v0_2_5".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_5".ref   = "master";
  inputs."datamancer-v0_2_5".repo  = "datamancer";
  inputs."datamancer-v0_2_5".type  = "github";
  inputs."datamancer-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_6".dir   = "v0_2_6";
  inputs."datamancer-v0_2_6".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_6".ref   = "master";
  inputs."datamancer-v0_2_6".repo  = "datamancer";
  inputs."datamancer-v0_2_6".type  = "github";
  inputs."datamancer-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_7".dir   = "v0_2_7";
  inputs."datamancer-v0_2_7".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_7".ref   = "master";
  inputs."datamancer-v0_2_7".repo  = "datamancer";
  inputs."datamancer-v0_2_7".type  = "github";
  inputs."datamancer-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_8".dir   = "v0_2_8";
  inputs."datamancer-v0_2_8".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_8".ref   = "master";
  inputs."datamancer-v0_2_8".repo  = "datamancer";
  inputs."datamancer-v0_2_8".type  = "github";
  inputs."datamancer-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_2_9".dir   = "v0_2_9";
  inputs."datamancer-v0_2_9".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_2_9".ref   = "master";
  inputs."datamancer-v0_2_9".repo  = "datamancer";
  inputs."datamancer-v0_2_9".type  = "github";
  inputs."datamancer-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_3_0".dir   = "v0_3_0";
  inputs."datamancer-v0_3_0".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_3_0".ref   = "master";
  inputs."datamancer-v0_3_0".repo  = "datamancer";
  inputs."datamancer-v0_3_0".type  = "github";
  inputs."datamancer-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_3_1".dir   = "v0_3_1";
  inputs."datamancer-v0_3_1".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_3_1".ref   = "master";
  inputs."datamancer-v0_3_1".repo  = "datamancer";
  inputs."datamancer-v0_3_1".type  = "github";
  inputs."datamancer-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_3_2".dir   = "v0_3_2";
  inputs."datamancer-v0_3_2".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_3_2".ref   = "master";
  inputs."datamancer-v0_3_2".repo  = "datamancer";
  inputs."datamancer-v0_3_2".type  = "github";
  inputs."datamancer-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_3_3".dir   = "v0_3_3";
  inputs."datamancer-v0_3_3".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_3_3".ref   = "master";
  inputs."datamancer-v0_3_3".repo  = "datamancer";
  inputs."datamancer-v0_3_3".type  = "github";
  inputs."datamancer-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer-v0_3_4".dir   = "v0_3_4";
  inputs."datamancer-v0_3_4".owner = "nim-nix-pkgs";
  inputs."datamancer-v0_3_4".ref   = "master";
  inputs."datamancer-v0_3_4".repo  = "datamancer";
  inputs."datamancer-v0_3_4".type  = "github";
  inputs."datamancer-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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