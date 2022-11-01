{
  description = ''Simple command line tool to make git more intuitive, along with useful GitHub addons.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fugitive-master".dir   = "master";
  inputs."fugitive-master".owner = "nim-nix-pkgs";
  inputs."fugitive-master".ref   = "master";
  inputs."fugitive-master".repo  = "fugitive";
  inputs."fugitive-master".type  = "github";
  inputs."fugitive-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_1_0".dir   = "v0_1_0";
  inputs."fugitive-v0_1_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_1_0".ref   = "master";
  inputs."fugitive-v0_1_0".repo  = "fugitive";
  inputs."fugitive-v0_1_0".type  = "github";
  inputs."fugitive-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_1_1".dir   = "v0_1_1";
  inputs."fugitive-v0_1_1".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_1_1".ref   = "master";
  inputs."fugitive-v0_1_1".repo  = "fugitive";
  inputs."fugitive-v0_1_1".type  = "github";
  inputs."fugitive-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_1_2".dir   = "v0_1_2";
  inputs."fugitive-v0_1_2".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_1_2".ref   = "master";
  inputs."fugitive-v0_1_2".repo  = "fugitive";
  inputs."fugitive-v0_1_2".type  = "github";
  inputs."fugitive-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_10_0".dir   = "v0_10_0";
  inputs."fugitive-v0_10_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_10_0".ref   = "master";
  inputs."fugitive-v0_10_0".repo  = "fugitive";
  inputs."fugitive-v0_10_0".type  = "github";
  inputs."fugitive-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_10_1".dir   = "v0_10_1";
  inputs."fugitive-v0_10_1".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_10_1".ref   = "master";
  inputs."fugitive-v0_10_1".repo  = "fugitive";
  inputs."fugitive-v0_10_1".type  = "github";
  inputs."fugitive-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_11_0".dir   = "v0_11_0";
  inputs."fugitive-v0_11_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_11_0".ref   = "master";
  inputs."fugitive-v0_11_0".repo  = "fugitive";
  inputs."fugitive-v0_11_0".type  = "github";
  inputs."fugitive-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_11_1".dir   = "v0_11_1";
  inputs."fugitive-v0_11_1".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_11_1".ref   = "master";
  inputs."fugitive-v0_11_1".repo  = "fugitive";
  inputs."fugitive-v0_11_1".type  = "github";
  inputs."fugitive-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_11_2".dir   = "v0_11_2";
  inputs."fugitive-v0_11_2".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_11_2".ref   = "master";
  inputs."fugitive-v0_11_2".repo  = "fugitive";
  inputs."fugitive-v0_11_2".type  = "github";
  inputs."fugitive-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_11_3".dir   = "v0_11_3";
  inputs."fugitive-v0_11_3".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_11_3".ref   = "master";
  inputs."fugitive-v0_11_3".repo  = "fugitive";
  inputs."fugitive-v0_11_3".type  = "github";
  inputs."fugitive-v0_11_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_11_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_2_0".dir   = "v0_2_0";
  inputs."fugitive-v0_2_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_2_0".ref   = "master";
  inputs."fugitive-v0_2_0".repo  = "fugitive";
  inputs."fugitive-v0_2_0".type  = "github";
  inputs."fugitive-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_3_0".dir   = "v0_3_0";
  inputs."fugitive-v0_3_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_3_0".ref   = "master";
  inputs."fugitive-v0_3_0".repo  = "fugitive";
  inputs."fugitive-v0_3_0".type  = "github";
  inputs."fugitive-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_3_1".dir   = "v0_3_1";
  inputs."fugitive-v0_3_1".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_3_1".ref   = "master";
  inputs."fugitive-v0_3_1".repo  = "fugitive";
  inputs."fugitive-v0_3_1".type  = "github";
  inputs."fugitive-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_4_0".dir   = "v0_4_0";
  inputs."fugitive-v0_4_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_4_0".ref   = "master";
  inputs."fugitive-v0_4_0".repo  = "fugitive";
  inputs."fugitive-v0_4_0".type  = "github";
  inputs."fugitive-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_5_0".dir   = "v0_5_0";
  inputs."fugitive-v0_5_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_5_0".ref   = "master";
  inputs."fugitive-v0_5_0".repo  = "fugitive";
  inputs."fugitive-v0_5_0".type  = "github";
  inputs."fugitive-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_6_0".dir   = "v0_6_0";
  inputs."fugitive-v0_6_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_6_0".ref   = "master";
  inputs."fugitive-v0_6_0".repo  = "fugitive";
  inputs."fugitive-v0_6_0".type  = "github";
  inputs."fugitive-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_7_0".dir   = "v0_7_0";
  inputs."fugitive-v0_7_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_7_0".ref   = "master";
  inputs."fugitive-v0_7_0".repo  = "fugitive";
  inputs."fugitive-v0_7_0".type  = "github";
  inputs."fugitive-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_7_1".dir   = "v0_7_1";
  inputs."fugitive-v0_7_1".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_7_1".ref   = "master";
  inputs."fugitive-v0_7_1".repo  = "fugitive";
  inputs."fugitive-v0_7_1".type  = "github";
  inputs."fugitive-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_7_2".dir   = "v0_7_2";
  inputs."fugitive-v0_7_2".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_7_2".ref   = "master";
  inputs."fugitive-v0_7_2".repo  = "fugitive";
  inputs."fugitive-v0_7_2".type  = "github";
  inputs."fugitive-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_8_0".dir   = "v0_8_0";
  inputs."fugitive-v0_8_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_8_0".ref   = "master";
  inputs."fugitive-v0_8_0".repo  = "fugitive";
  inputs."fugitive-v0_8_0".type  = "github";
  inputs."fugitive-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fugitive-v0_9_0".dir   = "v0_9_0";
  inputs."fugitive-v0_9_0".owner = "nim-nix-pkgs";
  inputs."fugitive-v0_9_0".ref   = "master";
  inputs."fugitive-v0_9_0".repo  = "fugitive";
  inputs."fugitive-v0_9_0".type  = "github";
  inputs."fugitive-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fugitive-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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