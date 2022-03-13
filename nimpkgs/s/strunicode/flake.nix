{
  description = ''Swift-like unicode string handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."strunicode-master".dir   = "master";
  inputs."strunicode-master".owner = "nim-nix-pkgs";
  inputs."strunicode-master".ref   = "master";
  inputs."strunicode-master".repo  = "strunicode";
  inputs."strunicode-master".type  = "github";
  inputs."strunicode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_1".dir   = "v0_1";
  inputs."strunicode-v0_1".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_1".ref   = "master";
  inputs."strunicode-v0_1".repo  = "strunicode";
  inputs."strunicode-v0_1".type  = "github";
  inputs."strunicode-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_2_0".dir   = "v0_2_0";
  inputs."strunicode-v0_2_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_2_0".ref   = "master";
  inputs."strunicode-v0_2_0".repo  = "strunicode";
  inputs."strunicode-v0_2_0".type  = "github";
  inputs."strunicode-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_3_0".dir   = "v0_3_0";
  inputs."strunicode-v0_3_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_3_0".ref   = "master";
  inputs."strunicode-v0_3_0".repo  = "strunicode";
  inputs."strunicode-v0_3_0".type  = "github";
  inputs."strunicode-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_4_0".dir   = "v0_4_0";
  inputs."strunicode-v0_4_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_4_0".ref   = "master";
  inputs."strunicode-v0_4_0".repo  = "strunicode";
  inputs."strunicode-v0_4_0".type  = "github";
  inputs."strunicode-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_5_0".dir   = "v0_5_0";
  inputs."strunicode-v0_5_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_5_0".ref   = "master";
  inputs."strunicode-v0_5_0".repo  = "strunicode";
  inputs."strunicode-v0_5_0".type  = "github";
  inputs."strunicode-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_6_0".dir   = "v0_6_0";
  inputs."strunicode-v0_6_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_6_0".ref   = "master";
  inputs."strunicode-v0_6_0".repo  = "strunicode";
  inputs."strunicode-v0_6_0".type  = "github";
  inputs."strunicode-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_6_1".dir   = "v0_6_1";
  inputs."strunicode-v0_6_1".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_6_1".ref   = "master";
  inputs."strunicode-v0_6_1".repo  = "strunicode";
  inputs."strunicode-v0_6_1".type  = "github";
  inputs."strunicode-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_7_0".dir   = "v0_7_0";
  inputs."strunicode-v0_7_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_7_0".ref   = "master";
  inputs."strunicode-v0_7_0".repo  = "strunicode";
  inputs."strunicode-v0_7_0".type  = "github";
  inputs."strunicode-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_7_1".dir   = "v0_7_1";
  inputs."strunicode-v0_7_1".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_7_1".ref   = "master";
  inputs."strunicode-v0_7_1".repo  = "strunicode";
  inputs."strunicode-v0_7_1".type  = "github";
  inputs."strunicode-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_8_0".dir   = "v0_8_0";
  inputs."strunicode-v0_8_0".owner = "nim-nix-pkgs";
  inputs."strunicode-v0_8_0".ref   = "master";
  inputs."strunicode-v0_8_0".repo  = "strunicode";
  inputs."strunicode-v0_8_0".type  = "github";
  inputs."strunicode-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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