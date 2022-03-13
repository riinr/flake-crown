{
  description = ''Image manipulation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imageman-master".dir   = "master";
  inputs."imageman-master".owner = "nim-nix-pkgs";
  inputs."imageman-master".ref   = "master";
  inputs."imageman-master".repo  = "imageman";
  inputs."imageman-master".type  = "github";
  inputs."imageman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_1_0".dir   = "v0_1_0";
  inputs."imageman-v0_1_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_1_0".ref   = "master";
  inputs."imageman-v0_1_0".repo  = "imageman";
  inputs."imageman-v0_1_0".type  = "github";
  inputs."imageman-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_2_0".dir   = "v0_2_0";
  inputs."imageman-v0_2_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_2_0".ref   = "master";
  inputs."imageman-v0_2_0".repo  = "imageman";
  inputs."imageman-v0_2_0".type  = "github";
  inputs."imageman-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_2_1".dir   = "v0_2_1";
  inputs."imageman-v0_2_1".owner = "nim-nix-pkgs";
  inputs."imageman-v0_2_1".ref   = "master";
  inputs."imageman-v0_2_1".repo  = "imageman";
  inputs."imageman-v0_2_1".type  = "github";
  inputs."imageman-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_2_2".dir   = "v0_2_2";
  inputs."imageman-v0_2_2".owner = "nim-nix-pkgs";
  inputs."imageman-v0_2_2".ref   = "master";
  inputs."imageman-v0_2_2".repo  = "imageman";
  inputs."imageman-v0_2_2".type  = "github";
  inputs."imageman-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_3_0".dir   = "v0_3_0";
  inputs."imageman-v0_3_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_3_0".ref   = "master";
  inputs."imageman-v0_3_0".repo  = "imageman";
  inputs."imageman-v0_3_0".type  = "github";
  inputs."imageman-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_4_0".dir   = "v0_4_0";
  inputs."imageman-v0_4_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_4_0".ref   = "master";
  inputs."imageman-v0_4_0".repo  = "imageman";
  inputs."imageman-v0_4_0".type  = "github";
  inputs."imageman-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_5_0".dir   = "v0_5_0";
  inputs."imageman-v0_5_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_5_0".ref   = "master";
  inputs."imageman-v0_5_0".repo  = "imageman";
  inputs."imageman-v0_5_0".type  = "github";
  inputs."imageman-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_5_1".dir   = "v0_5_1";
  inputs."imageman-v0_5_1".owner = "nim-nix-pkgs";
  inputs."imageman-v0_5_1".ref   = "master";
  inputs."imageman-v0_5_1".repo  = "imageman";
  inputs."imageman-v0_5_1".type  = "github";
  inputs."imageman-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_0".dir   = "v0_6_0";
  inputs."imageman-v0_6_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_6_0".ref   = "master";
  inputs."imageman-v0_6_0".repo  = "imageman";
  inputs."imageman-v0_6_0".type  = "github";
  inputs."imageman-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_1".dir   = "v0_6_1";
  inputs."imageman-v0_6_1".owner = "nim-nix-pkgs";
  inputs."imageman-v0_6_1".ref   = "master";
  inputs."imageman-v0_6_1".repo  = "imageman";
  inputs."imageman-v0_6_1".type  = "github";
  inputs."imageman-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_2".dir   = "v0_6_2";
  inputs."imageman-v0_6_2".owner = "nim-nix-pkgs";
  inputs."imageman-v0_6_2".ref   = "master";
  inputs."imageman-v0_6_2".repo  = "imageman";
  inputs."imageman-v0_6_2".type  = "github";
  inputs."imageman-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_3".dir   = "v0_6_3";
  inputs."imageman-v0_6_3".owner = "nim-nix-pkgs";
  inputs."imageman-v0_6_3".ref   = "master";
  inputs."imageman-v0_6_3".repo  = "imageman";
  inputs."imageman-v0_6_3".type  = "github";
  inputs."imageman-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_4".dir   = "v0_6_4";
  inputs."imageman-v0_6_4".owner = "nim-nix-pkgs";
  inputs."imageman-v0_6_4".ref   = "master";
  inputs."imageman-v0_6_4".repo  = "imageman";
  inputs."imageman-v0_6_4".type  = "github";
  inputs."imageman-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_5".dir   = "v0_6_5";
  inputs."imageman-v0_6_5".owner = "nim-nix-pkgs";
  inputs."imageman-v0_6_5".ref   = "master";
  inputs."imageman-v0_6_5".repo  = "imageman";
  inputs."imageman-v0_6_5".type  = "github";
  inputs."imageman-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_0".dir   = "v0_7_0";
  inputs."imageman-v0_7_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_0".ref   = "master";
  inputs."imageman-v0_7_0".repo  = "imageman";
  inputs."imageman-v0_7_0".type  = "github";
  inputs."imageman-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_1".dir   = "v0_7_1";
  inputs."imageman-v0_7_1".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_1".ref   = "master";
  inputs."imageman-v0_7_1".repo  = "imageman";
  inputs."imageman-v0_7_1".type  = "github";
  inputs."imageman-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_2".dir   = "v0_7_2";
  inputs."imageman-v0_7_2".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_2".ref   = "master";
  inputs."imageman-v0_7_2".repo  = "imageman";
  inputs."imageman-v0_7_2".type  = "github";
  inputs."imageman-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_3".dir   = "v0_7_3";
  inputs."imageman-v0_7_3".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_3".ref   = "master";
  inputs."imageman-v0_7_3".repo  = "imageman";
  inputs."imageman-v0_7_3".type  = "github";
  inputs."imageman-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_4".dir   = "v0_7_4";
  inputs."imageman-v0_7_4".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_4".ref   = "master";
  inputs."imageman-v0_7_4".repo  = "imageman";
  inputs."imageman-v0_7_4".type  = "github";
  inputs."imageman-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_5".dir   = "v0_7_5";
  inputs."imageman-v0_7_5".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_5".ref   = "master";
  inputs."imageman-v0_7_5".repo  = "imageman";
  inputs."imageman-v0_7_5".type  = "github";
  inputs."imageman-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_6".dir   = "v0_7_6";
  inputs."imageman-v0_7_6".owner = "nim-nix-pkgs";
  inputs."imageman-v0_7_6".ref   = "master";
  inputs."imageman-v0_7_6".repo  = "imageman";
  inputs."imageman-v0_7_6".type  = "github";
  inputs."imageman-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_8_0".dir   = "v0_8_0";
  inputs."imageman-v0_8_0".owner = "nim-nix-pkgs";
  inputs."imageman-v0_8_0".ref   = "master";
  inputs."imageman-v0_8_0".repo  = "imageman";
  inputs."imageman-v0_8_0".type  = "github";
  inputs."imageman-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_8_1".dir   = "v0_8_1";
  inputs."imageman-v0_8_1".owner = "nim-nix-pkgs";
  inputs."imageman-v0_8_1".ref   = "master";
  inputs."imageman-v0_8_1".repo  = "imageman";
  inputs."imageman-v0_8_1".type  = "github";
  inputs."imageman-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_8_2".dir   = "v0_8_2";
  inputs."imageman-v0_8_2".owner = "nim-nix-pkgs";
  inputs."imageman-v0_8_2".ref   = "master";
  inputs."imageman-v0_8_2".repo  = "imageman";
  inputs."imageman-v0_8_2".type  = "github";
  inputs."imageman-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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