{
  description = ''Command-line utility for Tangling of Org mode documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ntangle-master".dir   = "master";
  inputs."ntangle-master".owner = "nim-nix-pkgs";
  inputs."ntangle-master".ref   = "master";
  inputs."ntangle-master".repo  = "ntangle";
  inputs."ntangle-master".type  = "github";
  inputs."ntangle-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_1_0".dir   = "v0_1_0";
  inputs."ntangle-v0_1_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_1_0".ref   = "master";
  inputs."ntangle-v0_1_0".repo  = "ntangle";
  inputs."ntangle-v0_1_0".type  = "github";
  inputs."ntangle-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_1_1".dir   = "v0_1_1";
  inputs."ntangle-v0_1_1".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_1_1".ref   = "master";
  inputs."ntangle-v0_1_1".repo  = "ntangle";
  inputs."ntangle-v0_1_1".type  = "github";
  inputs."ntangle-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_2_0".dir   = "v0_2_0";
  inputs."ntangle-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_2_0".ref   = "master";
  inputs."ntangle-v0_2_0".repo  = "ntangle";
  inputs."ntangle-v0_2_0".type  = "github";
  inputs."ntangle-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_2_1".dir   = "v0_2_1";
  inputs."ntangle-v0_2_1".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_2_1".ref   = "master";
  inputs."ntangle-v0_2_1".repo  = "ntangle";
  inputs."ntangle-v0_2_1".type  = "github";
  inputs."ntangle-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_2_2".dir   = "v0_2_2";
  inputs."ntangle-v0_2_2".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_2_2".ref   = "master";
  inputs."ntangle-v0_2_2".repo  = "ntangle";
  inputs."ntangle-v0_2_2".type  = "github";
  inputs."ntangle-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_3_0".dir   = "v0_3_0";
  inputs."ntangle-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_3_0".ref   = "master";
  inputs."ntangle-v0_3_0".repo  = "ntangle";
  inputs."ntangle-v0_3_0".type  = "github";
  inputs."ntangle-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_4_0".dir   = "v0_4_0";
  inputs."ntangle-v0_4_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_4_0".ref   = "master";
  inputs."ntangle-v0_4_0".repo  = "ntangle";
  inputs."ntangle-v0_4_0".type  = "github";
  inputs."ntangle-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_4_1".dir   = "v0_4_1";
  inputs."ntangle-v0_4_1".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_4_1".ref   = "master";
  inputs."ntangle-v0_4_1".repo  = "ntangle";
  inputs."ntangle-v0_4_1".type  = "github";
  inputs."ntangle-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_4_2".dir   = "v0_4_2";
  inputs."ntangle-v0_4_2".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_4_2".ref   = "master";
  inputs."ntangle-v0_4_2".repo  = "ntangle";
  inputs."ntangle-v0_4_2".type  = "github";
  inputs."ntangle-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_4_3".dir   = "v0_4_3";
  inputs."ntangle-v0_4_3".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_4_3".ref   = "master";
  inputs."ntangle-v0_4_3".repo  = "ntangle";
  inputs."ntangle-v0_4_3".type  = "github";
  inputs."ntangle-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_5_0".dir   = "v0_5_0";
  inputs."ntangle-v0_5_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_5_0".ref   = "master";
  inputs."ntangle-v0_5_0".repo  = "ntangle";
  inputs."ntangle-v0_5_0".type  = "github";
  inputs."ntangle-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_5_1".dir   = "v0_5_1";
  inputs."ntangle-v0_5_1".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_5_1".ref   = "master";
  inputs."ntangle-v0_5_1".repo  = "ntangle";
  inputs."ntangle-v0_5_1".type  = "github";
  inputs."ntangle-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_0".dir   = "v0_6_0";
  inputs."ntangle-v0_6_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_0".ref   = "master";
  inputs."ntangle-v0_6_0".repo  = "ntangle";
  inputs."ntangle-v0_6_0".type  = "github";
  inputs."ntangle-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_1".dir   = "v0_6_1";
  inputs."ntangle-v0_6_1".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_1".ref   = "master";
  inputs."ntangle-v0_6_1".repo  = "ntangle";
  inputs."ntangle-v0_6_1".type  = "github";
  inputs."ntangle-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_2".dir   = "v0_6_2";
  inputs."ntangle-v0_6_2".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_2".ref   = "master";
  inputs."ntangle-v0_6_2".repo  = "ntangle";
  inputs."ntangle-v0_6_2".type  = "github";
  inputs."ntangle-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_3".dir   = "v0_6_3";
  inputs."ntangle-v0_6_3".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_3".ref   = "master";
  inputs."ntangle-v0_6_3".repo  = "ntangle";
  inputs."ntangle-v0_6_3".type  = "github";
  inputs."ntangle-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_4".dir   = "v0_6_4";
  inputs."ntangle-v0_6_4".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_4".ref   = "master";
  inputs."ntangle-v0_6_4".repo  = "ntangle";
  inputs."ntangle-v0_6_4".type  = "github";
  inputs."ntangle-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_5".dir   = "v0_6_5";
  inputs."ntangle-v0_6_5".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_5".ref   = "master";
  inputs."ntangle-v0_6_5".repo  = "ntangle";
  inputs."ntangle-v0_6_5".type  = "github";
  inputs."ntangle-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_6_6".dir   = "v0_6_6";
  inputs."ntangle-v0_6_6".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_6_6".ref   = "master";
  inputs."ntangle-v0_6_6".repo  = "ntangle";
  inputs."ntangle-v0_6_6".type  = "github";
  inputs."ntangle-v0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ntangle-v0_7_0".dir   = "v0_7_0";
  inputs."ntangle-v0_7_0".owner = "nim-nix-pkgs";
  inputs."ntangle-v0_7_0".ref   = "master";
  inputs."ntangle-v0_7_0".repo  = "ntangle";
  inputs."ntangle-v0_7_0".type  = "github";
  inputs."ntangle-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ntangle-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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