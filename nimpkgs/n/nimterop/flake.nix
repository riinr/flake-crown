{
  description = ''Nimterop makes C/C++ interop within Nim seamless'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimterop-master".dir   = "master";
  inputs."nimterop-master".owner = "nim-nix-pkgs";
  inputs."nimterop-master".ref   = "master";
  inputs."nimterop-master".repo  = "nimterop";
  inputs."nimterop-master".type  = "github";
  inputs."nimterop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_1_0".dir   = "v0_1_0";
  inputs."nimterop-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_1_0".ref   = "master";
  inputs."nimterop-v0_1_0".repo  = "nimterop";
  inputs."nimterop-v0_1_0".type  = "github";
  inputs."nimterop-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_2_0".dir   = "v0_2_0";
  inputs."nimterop-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_2_0".ref   = "master";
  inputs."nimterop-v0_2_0".repo  = "nimterop";
  inputs."nimterop-v0_2_0".type  = "github";
  inputs."nimterop-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_2_1".dir   = "v0_2_1";
  inputs."nimterop-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_2_1".ref   = "master";
  inputs."nimterop-v0_2_1".repo  = "nimterop";
  inputs."nimterop-v0_2_1".type  = "github";
  inputs."nimterop-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_0".dir   = "v0_3_0";
  inputs."nimterop-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_0".ref   = "master";
  inputs."nimterop-v0_3_0".repo  = "nimterop";
  inputs."nimterop-v0_3_0".type  = "github";
  inputs."nimterop-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_1".dir   = "v0_3_1";
  inputs."nimterop-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_1".ref   = "master";
  inputs."nimterop-v0_3_1".repo  = "nimterop";
  inputs."nimterop-v0_3_1".type  = "github";
  inputs."nimterop-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_2".dir   = "v0_3_2";
  inputs."nimterop-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_2".ref   = "master";
  inputs."nimterop-v0_3_2".repo  = "nimterop";
  inputs."nimterop-v0_3_2".type  = "github";
  inputs."nimterop-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_3".dir   = "v0_3_3";
  inputs."nimterop-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_3".ref   = "master";
  inputs."nimterop-v0_3_3".repo  = "nimterop";
  inputs."nimterop-v0_3_3".type  = "github";
  inputs."nimterop-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_4".dir   = "v0_3_4";
  inputs."nimterop-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_4".ref   = "master";
  inputs."nimterop-v0_3_4".repo  = "nimterop";
  inputs."nimterop-v0_3_4".type  = "github";
  inputs."nimterop-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_5".dir   = "v0_3_5";
  inputs."nimterop-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_5".ref   = "master";
  inputs."nimterop-v0_3_5".repo  = "nimterop";
  inputs."nimterop-v0_3_5".type  = "github";
  inputs."nimterop-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_6".dir   = "v0_3_6";
  inputs."nimterop-v0_3_6".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_6".ref   = "master";
  inputs."nimterop-v0_3_6".repo  = "nimterop";
  inputs."nimterop-v0_3_6".type  = "github";
  inputs."nimterop-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_0".dir   = "v0_4_0";
  inputs."nimterop-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_0".ref   = "master";
  inputs."nimterop-v0_4_0".repo  = "nimterop";
  inputs."nimterop-v0_4_0".type  = "github";
  inputs."nimterop-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_1".dir   = "v0_4_1";
  inputs."nimterop-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_1".ref   = "master";
  inputs."nimterop-v0_4_1".repo  = "nimterop";
  inputs."nimterop-v0_4_1".type  = "github";
  inputs."nimterop-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_2".dir   = "v0_4_2";
  inputs."nimterop-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_2".ref   = "master";
  inputs."nimterop-v0_4_2".repo  = "nimterop";
  inputs."nimterop-v0_4_2".type  = "github";
  inputs."nimterop-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_3".dir   = "v0_4_3";
  inputs."nimterop-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_3".ref   = "master";
  inputs."nimterop-v0_4_3".repo  = "nimterop";
  inputs."nimterop-v0_4_3".type  = "github";
  inputs."nimterop-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_4".dir   = "v0_4_4";
  inputs."nimterop-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_4".ref   = "master";
  inputs."nimterop-v0_4_4".repo  = "nimterop";
  inputs."nimterop-v0_4_4".type  = "github";
  inputs."nimterop-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_0".dir   = "v0_5_0";
  inputs."nimterop-v0_5_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_0".ref   = "master";
  inputs."nimterop-v0_5_0".repo  = "nimterop";
  inputs."nimterop-v0_5_0".type  = "github";
  inputs."nimterop-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_1".dir   = "v0_5_1";
  inputs."nimterop-v0_5_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_1".ref   = "master";
  inputs."nimterop-v0_5_1".repo  = "nimterop";
  inputs."nimterop-v0_5_1".type  = "github";
  inputs."nimterop-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_2".dir   = "v0_5_2";
  inputs."nimterop-v0_5_2".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_2".ref   = "master";
  inputs."nimterop-v0_5_2".repo  = "nimterop";
  inputs."nimterop-v0_5_2".type  = "github";
  inputs."nimterop-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_3".dir   = "v0_5_3";
  inputs."nimterop-v0_5_3".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_3".ref   = "master";
  inputs."nimterop-v0_5_3".repo  = "nimterop";
  inputs."nimterop-v0_5_3".type  = "github";
  inputs."nimterop-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_4".dir   = "v0_5_4";
  inputs."nimterop-v0_5_4".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_4".ref   = "master";
  inputs."nimterop-v0_5_4".repo  = "nimterop";
  inputs."nimterop-v0_5_4".type  = "github";
  inputs."nimterop-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_5".dir   = "v0_5_5";
  inputs."nimterop-v0_5_5".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_5".ref   = "master";
  inputs."nimterop-v0_5_5".repo  = "nimterop";
  inputs."nimterop-v0_5_5".type  = "github";
  inputs."nimterop-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_6".dir   = "v0_5_6";
  inputs."nimterop-v0_5_6".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_6".ref   = "master";
  inputs."nimterop-v0_5_6".repo  = "nimterop";
  inputs."nimterop-v0_5_6".type  = "github";
  inputs."nimterop-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_7".dir   = "v0_5_7";
  inputs."nimterop-v0_5_7".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_7".ref   = "master";
  inputs."nimterop-v0_5_7".repo  = "nimterop";
  inputs."nimterop-v0_5_7".type  = "github";
  inputs."nimterop-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_8".dir   = "v0_5_8";
  inputs."nimterop-v0_5_8".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_8".ref   = "master";
  inputs."nimterop-v0_5_8".repo  = "nimterop";
  inputs."nimterop-v0_5_8".type  = "github";
  inputs."nimterop-v0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_5_9".dir   = "v0_5_9";
  inputs."nimterop-v0_5_9".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_5_9".ref   = "master";
  inputs."nimterop-v0_5_9".repo  = "nimterop";
  inputs."nimterop-v0_5_9".type  = "github";
  inputs."nimterop-v0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_0".dir   = "v0_6_0";
  inputs."nimterop-v0_6_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_0".ref   = "master";
  inputs."nimterop-v0_6_0".repo  = "nimterop";
  inputs."nimterop-v0_6_0".type  = "github";
  inputs."nimterop-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_1".dir   = "v0_6_1";
  inputs."nimterop-v0_6_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_1".ref   = "master";
  inputs."nimterop-v0_6_1".repo  = "nimterop";
  inputs."nimterop-v0_6_1".type  = "github";
  inputs."nimterop-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_10".dir   = "v0_6_10";
  inputs."nimterop-v0_6_10".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_10".ref   = "master";
  inputs."nimterop-v0_6_10".repo  = "nimterop";
  inputs."nimterop-v0_6_10".type  = "github";
  inputs."nimterop-v0_6_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_11".dir   = "v0_6_11";
  inputs."nimterop-v0_6_11".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_11".ref   = "master";
  inputs."nimterop-v0_6_11".repo  = "nimterop";
  inputs."nimterop-v0_6_11".type  = "github";
  inputs."nimterop-v0_6_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_12".dir   = "v0_6_12";
  inputs."nimterop-v0_6_12".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_12".ref   = "master";
  inputs."nimterop-v0_6_12".repo  = "nimterop";
  inputs."nimterop-v0_6_12".type  = "github";
  inputs."nimterop-v0_6_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_13".dir   = "v0_6_13";
  inputs."nimterop-v0_6_13".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_13".ref   = "master";
  inputs."nimterop-v0_6_13".repo  = "nimterop";
  inputs."nimterop-v0_6_13".type  = "github";
  inputs."nimterop-v0_6_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_2".dir   = "v0_6_2";
  inputs."nimterop-v0_6_2".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_2".ref   = "master";
  inputs."nimterop-v0_6_2".repo  = "nimterop";
  inputs."nimterop-v0_6_2".type  = "github";
  inputs."nimterop-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_3".dir   = "v0_6_3";
  inputs."nimterop-v0_6_3".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_3".ref   = "master";
  inputs."nimterop-v0_6_3".repo  = "nimterop";
  inputs."nimterop-v0_6_3".type  = "github";
  inputs."nimterop-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_4".dir   = "v0_6_4";
  inputs."nimterop-v0_6_4".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_4".ref   = "master";
  inputs."nimterop-v0_6_4".repo  = "nimterop";
  inputs."nimterop-v0_6_4".type  = "github";
  inputs."nimterop-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_5".dir   = "v0_6_5";
  inputs."nimterop-v0_6_5".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_5".ref   = "master";
  inputs."nimterop-v0_6_5".repo  = "nimterop";
  inputs."nimterop-v0_6_5".type  = "github";
  inputs."nimterop-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_6".dir   = "v0_6_6";
  inputs."nimterop-v0_6_6".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_6".ref   = "master";
  inputs."nimterop-v0_6_6".repo  = "nimterop";
  inputs."nimterop-v0_6_6".type  = "github";
  inputs."nimterop-v0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_7".dir   = "v0_6_7";
  inputs."nimterop-v0_6_7".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_7".ref   = "master";
  inputs."nimterop-v0_6_7".repo  = "nimterop";
  inputs."nimterop-v0_6_7".type  = "github";
  inputs."nimterop-v0_6_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_8".dir   = "v0_6_8";
  inputs."nimterop-v0_6_8".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_8".ref   = "master";
  inputs."nimterop-v0_6_8".repo  = "nimterop";
  inputs."nimterop-v0_6_8".type  = "github";
  inputs."nimterop-v0_6_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_6_9".dir   = "v0_6_9";
  inputs."nimterop-v0_6_9".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_6_9".ref   = "master";
  inputs."nimterop-v0_6_9".repo  = "nimterop";
  inputs."nimterop-v0_6_9".type  = "github";
  inputs."nimterop-v0_6_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_6_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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