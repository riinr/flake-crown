{
  description = ''Nim functional programming library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfp-master".dir   = "master";
  inputs."nimfp-master".owner = "nim-nix-pkgs";
  inputs."nimfp-master".ref   = "master";
  inputs."nimfp-master".repo  = "nimfp";
  inputs."nimfp-master".type  = "github";
  inputs."nimfp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_1".dir   = "v0_0_1";
  inputs."nimfp-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_1".ref   = "master";
  inputs."nimfp-v0_0_1".repo  = "nimfp";
  inputs."nimfp-v0_0_1".type  = "github";
  inputs."nimfp-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_2".dir   = "v0_0_2";
  inputs."nimfp-v0_0_2".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_2".ref   = "master";
  inputs."nimfp-v0_0_2".repo  = "nimfp";
  inputs."nimfp-v0_0_2".type  = "github";
  inputs."nimfp-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_3".dir   = "v0_0_3";
  inputs."nimfp-v0_0_3".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_3".ref   = "master";
  inputs."nimfp-v0_0_3".repo  = "nimfp";
  inputs."nimfp-v0_0_3".type  = "github";
  inputs."nimfp-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_4".dir   = "v0_0_4";
  inputs."nimfp-v0_0_4".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_4".ref   = "master";
  inputs."nimfp-v0_0_4".repo  = "nimfp";
  inputs."nimfp-v0_0_4".type  = "github";
  inputs."nimfp-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_5".dir   = "v0_0_5";
  inputs."nimfp-v0_0_5".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_5".ref   = "master";
  inputs."nimfp-v0_0_5".repo  = "nimfp";
  inputs."nimfp-v0_0_5".type  = "github";
  inputs."nimfp-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_6".dir   = "v0_0_6";
  inputs."nimfp-v0_0_6".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_6".ref   = "master";
  inputs."nimfp-v0_0_6".repo  = "nimfp";
  inputs."nimfp-v0_0_6".type  = "github";
  inputs."nimfp-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_7".dir   = "v0_0_7";
  inputs."nimfp-v0_0_7".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_7".ref   = "master";
  inputs."nimfp-v0_0_7".repo  = "nimfp";
  inputs."nimfp-v0_0_7".type  = "github";
  inputs."nimfp-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_8".dir   = "v0_0_8";
  inputs."nimfp-v0_0_8".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_8".ref   = "master";
  inputs."nimfp-v0_0_8".repo  = "nimfp";
  inputs."nimfp-v0_0_8".type  = "github";
  inputs."nimfp-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_0_9".dir   = "v0_0_9";
  inputs."nimfp-v0_0_9".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_0_9".ref   = "master";
  inputs."nimfp-v0_0_9".repo  = "nimfp";
  inputs."nimfp-v0_0_9".type  = "github";
  inputs."nimfp-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_1_0".dir   = "v0_1_0";
  inputs."nimfp-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_1_0".ref   = "master";
  inputs."nimfp-v0_1_0".repo  = "nimfp";
  inputs."nimfp-v0_1_0".type  = "github";
  inputs."nimfp-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_0".dir   = "v0_2_0";
  inputs."nimfp-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_2_0".ref   = "master";
  inputs."nimfp-v0_2_0".repo  = "nimfp";
  inputs."nimfp-v0_2_0".type  = "github";
  inputs."nimfp-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_1".dir   = "v0_2_1";
  inputs."nimfp-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_2_1".ref   = "master";
  inputs."nimfp-v0_2_1".repo  = "nimfp";
  inputs."nimfp-v0_2_1".type  = "github";
  inputs."nimfp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_2".dir   = "v0_2_2";
  inputs."nimfp-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_2_2".ref   = "master";
  inputs."nimfp-v0_2_2".repo  = "nimfp";
  inputs."nimfp-v0_2_2".type  = "github";
  inputs."nimfp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_3".dir   = "v0_2_3";
  inputs."nimfp-v0_2_3".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_2_3".ref   = "master";
  inputs."nimfp-v0_2_3".repo  = "nimfp";
  inputs."nimfp-v0_2_3".type  = "github";
  inputs."nimfp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_2_4".dir   = "v0_2_4";
  inputs."nimfp-v0_2_4".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_2_4".ref   = "master";
  inputs."nimfp-v0_2_4".repo  = "nimfp";
  inputs."nimfp-v0_2_4".type  = "github";
  inputs."nimfp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_0".dir   = "v0_3_0";
  inputs."nimfp-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_0".ref   = "master";
  inputs."nimfp-v0_3_0".repo  = "nimfp";
  inputs."nimfp-v0_3_0".type  = "github";
  inputs."nimfp-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_1".dir   = "v0_3_1";
  inputs."nimfp-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_1".ref   = "master";
  inputs."nimfp-v0_3_1".repo  = "nimfp";
  inputs."nimfp-v0_3_1".type  = "github";
  inputs."nimfp-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_2".dir   = "v0_3_2";
  inputs."nimfp-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_2".ref   = "master";
  inputs."nimfp-v0_3_2".repo  = "nimfp";
  inputs."nimfp-v0_3_2".type  = "github";
  inputs."nimfp-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_3".dir   = "v0_3_3";
  inputs."nimfp-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_3".ref   = "master";
  inputs."nimfp-v0_3_3".repo  = "nimfp";
  inputs."nimfp-v0_3_3".type  = "github";
  inputs."nimfp-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_4".dir   = "v0_3_4";
  inputs."nimfp-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_4".ref   = "master";
  inputs."nimfp-v0_3_4".repo  = "nimfp";
  inputs."nimfp-v0_3_4".type  = "github";
  inputs."nimfp-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_5".dir   = "v0_3_5";
  inputs."nimfp-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_5".ref   = "master";
  inputs."nimfp-v0_3_5".repo  = "nimfp";
  inputs."nimfp-v0_3_5".type  = "github";
  inputs."nimfp-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_6".dir   = "v0_3_6";
  inputs."nimfp-v0_3_6".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_6".ref   = "master";
  inputs."nimfp-v0_3_6".repo  = "nimfp";
  inputs."nimfp-v0_3_6".type  = "github";
  inputs."nimfp-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_3_7".dir   = "v0_3_7";
  inputs."nimfp-v0_3_7".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_3_7".ref   = "master";
  inputs."nimfp-v0_3_7".repo  = "nimfp";
  inputs."nimfp-v0_3_7".type  = "github";
  inputs."nimfp-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_0".dir   = "v0_4_0";
  inputs."nimfp-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_4_0".ref   = "master";
  inputs."nimfp-v0_4_0".repo  = "nimfp";
  inputs."nimfp-v0_4_0".type  = "github";
  inputs."nimfp-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_1".dir   = "v0_4_1";
  inputs."nimfp-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_4_1".ref   = "master";
  inputs."nimfp-v0_4_1".repo  = "nimfp";
  inputs."nimfp-v0_4_1".type  = "github";
  inputs."nimfp-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_2".dir   = "v0_4_2";
  inputs."nimfp-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_4_2".ref   = "master";
  inputs."nimfp-v0_4_2".repo  = "nimfp";
  inputs."nimfp-v0_4_2".type  = "github";
  inputs."nimfp-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_3".dir   = "v0_4_3";
  inputs."nimfp-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_4_3".ref   = "master";
  inputs."nimfp-v0_4_3".repo  = "nimfp";
  inputs."nimfp-v0_4_3".type  = "github";
  inputs."nimfp-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp-v0_4_4".dir   = "v0_4_4";
  inputs."nimfp-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimfp-v0_4_4".ref   = "master";
  inputs."nimfp-v0_4_4".repo  = "nimfp";
  inputs."nimfp-v0_4_4".type  = "github";
  inputs."nimfp-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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