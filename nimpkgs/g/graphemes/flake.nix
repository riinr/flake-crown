{
  description = ''Grapheme aware string handling (Unicode tr29)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."graphemes-master".dir   = "master";
  inputs."graphemes-master".owner = "nim-nix-pkgs";
  inputs."graphemes-master".ref   = "master";
  inputs."graphemes-master".repo  = "graphemes";
  inputs."graphemes-master".type  = "github";
  inputs."graphemes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_0".dir   = "v0_1_0";
  inputs."graphemes-v0_1_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_1_0".ref   = "master";
  inputs."graphemes-v0_1_0".repo  = "graphemes";
  inputs."graphemes-v0_1_0".type  = "github";
  inputs."graphemes-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_1".dir   = "v0_1_1";
  inputs."graphemes-v0_1_1".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_1_1".ref   = "master";
  inputs."graphemes-v0_1_1".repo  = "graphemes";
  inputs."graphemes-v0_1_1".type  = "github";
  inputs."graphemes-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_2".dir   = "v0_1_2";
  inputs."graphemes-v0_1_2".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_1_2".ref   = "master";
  inputs."graphemes-v0_1_2".repo  = "graphemes";
  inputs."graphemes-v0_1_2".type  = "github";
  inputs."graphemes-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_3".dir   = "v0_1_3";
  inputs."graphemes-v0_1_3".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_1_3".ref   = "master";
  inputs."graphemes-v0_1_3".repo  = "graphemes";
  inputs."graphemes-v0_1_3".type  = "github";
  inputs."graphemes-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_4".dir   = "v0_1_4";
  inputs."graphemes-v0_1_4".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_1_4".ref   = "master";
  inputs."graphemes-v0_1_4".repo  = "graphemes";
  inputs."graphemes-v0_1_4".type  = "github";
  inputs."graphemes-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_1_5".dir   = "v0_1_5";
  inputs."graphemes-v0_1_5".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_1_5".ref   = "master";
  inputs."graphemes-v0_1_5".repo  = "graphemes";
  inputs."graphemes-v0_1_5".type  = "github";
  inputs."graphemes-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_10_0".dir   = "v0_10_0";
  inputs."graphemes-v0_10_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_10_0".ref   = "master";
  inputs."graphemes-v0_10_0".repo  = "graphemes";
  inputs."graphemes-v0_10_0".type  = "github";
  inputs."graphemes-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_2_0".dir   = "v0_2_0";
  inputs."graphemes-v0_2_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_2_0".ref   = "master";
  inputs."graphemes-v0_2_0".repo  = "graphemes";
  inputs."graphemes-v0_2_0".type  = "github";
  inputs."graphemes-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_3_0".dir   = "v0_3_0";
  inputs."graphemes-v0_3_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_3_0".ref   = "master";
  inputs."graphemes-v0_3_0".repo  = "graphemes";
  inputs."graphemes-v0_3_0".type  = "github";
  inputs."graphemes-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_4_0".dir   = "v0_4_0";
  inputs."graphemes-v0_4_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_4_0".ref   = "master";
  inputs."graphemes-v0_4_0".repo  = "graphemes";
  inputs."graphemes-v0_4_0".type  = "github";
  inputs."graphemes-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_4_1".dir   = "v0_4_1";
  inputs."graphemes-v0_4_1".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_4_1".ref   = "master";
  inputs."graphemes-v0_4_1".repo  = "graphemes";
  inputs."graphemes-v0_4_1".type  = "github";
  inputs."graphemes-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_5_0".dir   = "v0_5_0";
  inputs."graphemes-v0_5_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_5_0".ref   = "master";
  inputs."graphemes-v0_5_0".repo  = "graphemes";
  inputs."graphemes-v0_5_0".type  = "github";
  inputs."graphemes-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_6_0".dir   = "v0_6_0";
  inputs."graphemes-v0_6_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_6_0".ref   = "master";
  inputs."graphemes-v0_6_0".repo  = "graphemes";
  inputs."graphemes-v0_6_0".type  = "github";
  inputs."graphemes-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_7_0".dir   = "v0_7_0";
  inputs."graphemes-v0_7_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_7_0".ref   = "master";
  inputs."graphemes-v0_7_0".repo  = "graphemes";
  inputs."graphemes-v0_7_0".type  = "github";
  inputs."graphemes-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes-v0_8_0".dir   = "v0_8_0";
  inputs."graphemes-v0_8_0".owner = "nim-nix-pkgs";
  inputs."graphemes-v0_8_0".ref   = "master";
  inputs."graphemes-v0_8_0".repo  = "graphemes";
  inputs."graphemes-v0_8_0".type  = "github";
  inputs."graphemes-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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