{
  description = ''Pure library for matching file paths against Unix style glob patterns.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glob-master".dir   = "master";
  inputs."glob-master".owner = "nim-nix-pkgs";
  inputs."glob-master".ref   = "master";
  inputs."glob-master".repo  = "glob";
  inputs."glob-master".type  = "github";
  inputs."glob-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_1_0".dir   = "v0_1_0";
  inputs."glob-v0_1_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_1_0".ref   = "master";
  inputs."glob-v0_1_0".repo  = "glob";
  inputs."glob-v0_1_0".type  = "github";
  inputs."glob-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_10_0".dir   = "v0_10_0";
  inputs."glob-v0_10_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_10_0".ref   = "master";
  inputs."glob-v0_10_0".repo  = "glob";
  inputs."glob-v0_10_0".type  = "github";
  inputs."glob-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_11_0".dir   = "v0_11_0";
  inputs."glob-v0_11_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_11_0".ref   = "master";
  inputs."glob-v0_11_0".repo  = "glob";
  inputs."glob-v0_11_0".type  = "github";
  inputs."glob-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_11_1".dir   = "v0_11_1";
  inputs."glob-v0_11_1".owner = "nim-nix-pkgs";
  inputs."glob-v0_11_1".ref   = "master";
  inputs."glob-v0_11_1".repo  = "glob";
  inputs."glob-v0_11_1".type  = "github";
  inputs."glob-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_11_2".dir   = "v0_11_2";
  inputs."glob-v0_11_2".owner = "nim-nix-pkgs";
  inputs."glob-v0_11_2".ref   = "master";
  inputs."glob-v0_11_2".repo  = "glob";
  inputs."glob-v0_11_2".type  = "github";
  inputs."glob-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_2_0".dir   = "v0_2_0";
  inputs."glob-v0_2_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_2_0".ref   = "master";
  inputs."glob-v0_2_0".repo  = "glob";
  inputs."glob-v0_2_0".type  = "github";
  inputs."glob-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_3_0".dir   = "v0_3_0";
  inputs."glob-v0_3_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_3_0".ref   = "master";
  inputs."glob-v0_3_0".repo  = "glob";
  inputs."glob-v0_3_0".type  = "github";
  inputs."glob-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_3_1".dir   = "v0_3_1";
  inputs."glob-v0_3_1".owner = "nim-nix-pkgs";
  inputs."glob-v0_3_1".ref   = "master";
  inputs."glob-v0_3_1".repo  = "glob";
  inputs."glob-v0_3_1".type  = "github";
  inputs."glob-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_4_0".dir   = "v0_4_0";
  inputs."glob-v0_4_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_4_0".ref   = "master";
  inputs."glob-v0_4_0".repo  = "glob";
  inputs."glob-v0_4_0".type  = "github";
  inputs."glob-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_5_0".dir   = "v0_5_0";
  inputs."glob-v0_5_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_5_0".ref   = "master";
  inputs."glob-v0_5_0".repo  = "glob";
  inputs."glob-v0_5_0".type  = "github";
  inputs."glob-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_6_0".dir   = "v0_6_0";
  inputs."glob-v0_6_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_6_0".ref   = "master";
  inputs."glob-v0_6_0".repo  = "glob";
  inputs."glob-v0_6_0".type  = "github";
  inputs."glob-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_7_0".dir   = "v0_7_0";
  inputs."glob-v0_7_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_7_0".ref   = "master";
  inputs."glob-v0_7_0".repo  = "glob";
  inputs."glob-v0_7_0".type  = "github";
  inputs."glob-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_8_0".dir   = "v0_8_0";
  inputs."glob-v0_8_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_8_0".ref   = "master";
  inputs."glob-v0_8_0".repo  = "glob";
  inputs."glob-v0_8_0".type  = "github";
  inputs."glob-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_8_1".dir   = "v0_8_1";
  inputs."glob-v0_8_1".owner = "nim-nix-pkgs";
  inputs."glob-v0_8_1".ref   = "master";
  inputs."glob-v0_8_1".repo  = "glob";
  inputs."glob-v0_8_1".type  = "github";
  inputs."glob-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_9_0".dir   = "v0_9_0";
  inputs."glob-v0_9_0".owner = "nim-nix-pkgs";
  inputs."glob-v0_9_0".ref   = "master";
  inputs."glob-v0_9_0".repo  = "glob";
  inputs."glob-v0_9_0".type  = "github";
  inputs."glob-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_9_0-doc".dir   = "v0_9_0-doc";
  inputs."glob-v0_9_0-doc".owner = "nim-nix-pkgs";
  inputs."glob-v0_9_0-doc".ref   = "master";
  inputs."glob-v0_9_0-doc".repo  = "glob";
  inputs."glob-v0_9_0-doc".type  = "github";
  inputs."glob-v0_9_0-doc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_9_0-doc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob-v0_9_1".dir   = "v0_9_1";
  inputs."glob-v0_9_1".owner = "nim-nix-pkgs";
  inputs."glob-v0_9_1".ref   = "master";
  inputs."glob-v0_9_1".repo  = "glob";
  inputs."glob-v0_9_1".type  = "github";
  inputs."glob-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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