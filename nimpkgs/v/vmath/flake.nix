{
  description = ''Collection of math routines for 2d and 3d graphics.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vmath-master".dir   = "master";
  inputs."vmath-master".owner = "nim-nix-pkgs";
  inputs."vmath-master".ref   = "master";
  inputs."vmath-master".repo  = "vmath";
  inputs."vmath-master".type  = "github";
  inputs."vmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_2_2".dir   = "0_2_2";
  inputs."vmath-0_2_2".owner = "nim-nix-pkgs";
  inputs."vmath-0_2_2".ref   = "master";
  inputs."vmath-0_2_2".repo  = "vmath";
  inputs."vmath-0_2_2".type  = "github";
  inputs."vmath-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_3_0".dir   = "0_3_0";
  inputs."vmath-0_3_0".owner = "nim-nix-pkgs";
  inputs."vmath-0_3_0".ref   = "master";
  inputs."vmath-0_3_0".repo  = "vmath";
  inputs."vmath-0_3_0".type  = "github";
  inputs."vmath-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_3_1".dir   = "0_3_1";
  inputs."vmath-0_3_1".owner = "nim-nix-pkgs";
  inputs."vmath-0_3_1".ref   = "master";
  inputs."vmath-0_3_1".repo  = "vmath";
  inputs."vmath-0_3_1".type  = "github";
  inputs."vmath-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_3_2".dir   = "0_3_2";
  inputs."vmath-0_3_2".owner = "nim-nix-pkgs";
  inputs."vmath-0_3_2".ref   = "master";
  inputs."vmath-0_3_2".repo  = "vmath";
  inputs."vmath-0_3_2".type  = "github";
  inputs."vmath-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_3_3".dir   = "0_3_3";
  inputs."vmath-0_3_3".owner = "nim-nix-pkgs";
  inputs."vmath-0_3_3".ref   = "master";
  inputs."vmath-0_3_3".repo  = "vmath";
  inputs."vmath-0_3_3".type  = "github";
  inputs."vmath-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_4_0".dir   = "0_4_0";
  inputs."vmath-0_4_0".owner = "nim-nix-pkgs";
  inputs."vmath-0_4_0".ref   = "master";
  inputs."vmath-0_4_0".repo  = "vmath";
  inputs."vmath-0_4_0".type  = "github";
  inputs."vmath-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_4_1".dir   = "0_4_1";
  inputs."vmath-0_4_1".owner = "nim-nix-pkgs";
  inputs."vmath-0_4_1".ref   = "master";
  inputs."vmath-0_4_1".repo  = "vmath";
  inputs."vmath-0_4_1".type  = "github";
  inputs."vmath-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-0_5_0".dir   = "0_5_0";
  inputs."vmath-0_5_0".owner = "nim-nix-pkgs";
  inputs."vmath-0_5_0".ref   = "master";
  inputs."vmath-0_5_0".repo  = "vmath";
  inputs."vmath-0_5_0".type  = "github";
  inputs."vmath-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_0".dir   = "1_0_0";
  inputs."vmath-1_0_0".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_0".ref   = "master";
  inputs."vmath-1_0_0".repo  = "vmath";
  inputs."vmath-1_0_0".type  = "github";
  inputs."vmath-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_1".dir   = "1_0_1";
  inputs."vmath-1_0_1".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_1".ref   = "master";
  inputs."vmath-1_0_1".repo  = "vmath";
  inputs."vmath-1_0_1".type  = "github";
  inputs."vmath-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_10".dir   = "1_0_10";
  inputs."vmath-1_0_10".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_10".ref   = "master";
  inputs."vmath-1_0_10".repo  = "vmath";
  inputs."vmath-1_0_10".type  = "github";
  inputs."vmath-1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_11".dir   = "1_0_11";
  inputs."vmath-1_0_11".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_11".ref   = "master";
  inputs."vmath-1_0_11".repo  = "vmath";
  inputs."vmath-1_0_11".type  = "github";
  inputs."vmath-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_2".dir   = "1_0_2";
  inputs."vmath-1_0_2".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_2".ref   = "master";
  inputs."vmath-1_0_2".repo  = "vmath";
  inputs."vmath-1_0_2".type  = "github";
  inputs."vmath-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_3".dir   = "1_0_3";
  inputs."vmath-1_0_3".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_3".ref   = "master";
  inputs."vmath-1_0_3".repo  = "vmath";
  inputs."vmath-1_0_3".type  = "github";
  inputs."vmath-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_4".dir   = "1_0_4";
  inputs."vmath-1_0_4".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_4".ref   = "master";
  inputs."vmath-1_0_4".repo  = "vmath";
  inputs."vmath-1_0_4".type  = "github";
  inputs."vmath-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_5".dir   = "1_0_5";
  inputs."vmath-1_0_5".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_5".ref   = "master";
  inputs."vmath-1_0_5".repo  = "vmath";
  inputs."vmath-1_0_5".type  = "github";
  inputs."vmath-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_6".dir   = "1_0_6";
  inputs."vmath-1_0_6".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_6".ref   = "master";
  inputs."vmath-1_0_6".repo  = "vmath";
  inputs."vmath-1_0_6".type  = "github";
  inputs."vmath-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_7".dir   = "1_0_7";
  inputs."vmath-1_0_7".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_7".ref   = "master";
  inputs."vmath-1_0_7".repo  = "vmath";
  inputs."vmath-1_0_7".type  = "github";
  inputs."vmath-1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_8".dir   = "1_0_8";
  inputs."vmath-1_0_8".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_8".ref   = "master";
  inputs."vmath-1_0_8".repo  = "vmath";
  inputs."vmath-1_0_8".type  = "github";
  inputs."vmath-1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_0_9".dir   = "1_0_9";
  inputs."vmath-1_0_9".owner = "nim-nix-pkgs";
  inputs."vmath-1_0_9".ref   = "master";
  inputs."vmath-1_0_9".repo  = "vmath";
  inputs."vmath-1_0_9".type  = "github";
  inputs."vmath-1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_1_0".dir   = "1_1_0";
  inputs."vmath-1_1_0".owner = "nim-nix-pkgs";
  inputs."vmath-1_1_0".ref   = "master";
  inputs."vmath-1_1_0".repo  = "vmath";
  inputs."vmath-1_1_0".type  = "github";
  inputs."vmath-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_1_1".dir   = "1_1_1";
  inputs."vmath-1_1_1".owner = "nim-nix-pkgs";
  inputs."vmath-1_1_1".ref   = "master";
  inputs."vmath-1_1_1".repo  = "vmath";
  inputs."vmath-1_1_1".type  = "github";
  inputs."vmath-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_1_2".dir   = "1_1_2";
  inputs."vmath-1_1_2".owner = "nim-nix-pkgs";
  inputs."vmath-1_1_2".ref   = "master";
  inputs."vmath-1_1_2".repo  = "vmath";
  inputs."vmath-1_1_2".type  = "github";
  inputs."vmath-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_1_4".dir   = "1_1_4";
  inputs."vmath-1_1_4".owner = "nim-nix-pkgs";
  inputs."vmath-1_1_4".ref   = "master";
  inputs."vmath-1_1_4".repo  = "vmath";
  inputs."vmath-1_1_4".type  = "github";
  inputs."vmath-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-1_2_0".dir   = "1_2_0";
  inputs."vmath-1_2_0".owner = "nim-nix-pkgs";
  inputs."vmath-1_2_0".ref   = "master";
  inputs."vmath-1_2_0".repo  = "vmath";
  inputs."vmath-1_2_0".type  = "github";
  inputs."vmath-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-v0_2_2".dir   = "v0_2_2";
  inputs."vmath-v0_2_2".owner = "nim-nix-pkgs";
  inputs."vmath-v0_2_2".ref   = "master";
  inputs."vmath-v0_2_2".repo  = "vmath";
  inputs."vmath-v0_2_2".type  = "github";
  inputs."vmath-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath-v0_3_0".dir   = "v0_3_0";
  inputs."vmath-v0_3_0".owner = "nim-nix-pkgs";
  inputs."vmath-v0_3_0".ref   = "master";
  inputs."vmath-v0_3_0".repo  = "vmath";
  inputs."vmath-v0_3_0".type  = "github";
  inputs."vmath-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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