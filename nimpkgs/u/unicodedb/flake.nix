{
  description = ''Unicode Character Database (UCD) access for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unicodedb-master".dir   = "master";
  inputs."unicodedb-master".owner = "nim-nix-pkgs";
  inputs."unicodedb-master".ref   = "master";
  inputs."unicodedb-master".repo  = "unicodedb";
  inputs."unicodedb-master".type  = "github";
  inputs."unicodedb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-0_11_1".dir   = "0_11_1";
  inputs."unicodedb-0_11_1".owner = "nim-nix-pkgs";
  inputs."unicodedb-0_11_1".ref   = "master";
  inputs."unicodedb-0_11_1".repo  = "unicodedb";
  inputs."unicodedb-0_11_1".type  = "github";
  inputs."unicodedb-0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_1".dir   = "v0_1";
  inputs."unicodedb-v0_1".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_1".ref   = "master";
  inputs."unicodedb-v0_1".repo  = "unicodedb";
  inputs."unicodedb-v0_1".type  = "github";
  inputs."unicodedb-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_10_0".dir   = "v0_10_0";
  inputs."unicodedb-v0_10_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_10_0".ref   = "master";
  inputs."unicodedb-v0_10_0".repo  = "unicodedb";
  inputs."unicodedb-v0_10_0".type  = "github";
  inputs."unicodedb-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2".dir   = "v0_2";
  inputs."unicodedb-v0_2".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_2".ref   = "master";
  inputs."unicodedb-v0_2".repo  = "unicodedb";
  inputs."unicodedb-v0_2".type  = "github";
  inputs."unicodedb-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_1".dir   = "v0_2_1";
  inputs."unicodedb-v0_2_1".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_2_1".ref   = "master";
  inputs."unicodedb-v0_2_1".repo  = "unicodedb";
  inputs."unicodedb-v0_2_1".type  = "github";
  inputs."unicodedb-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_2".dir   = "v0_2_2";
  inputs."unicodedb-v0_2_2".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_2_2".ref   = "master";
  inputs."unicodedb-v0_2_2".repo  = "unicodedb";
  inputs."unicodedb-v0_2_2".type  = "github";
  inputs."unicodedb-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_3".dir   = "v0_2_3";
  inputs."unicodedb-v0_2_3".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_2_3".ref   = "master";
  inputs."unicodedb-v0_2_3".repo  = "unicodedb";
  inputs."unicodedb-v0_2_3".type  = "github";
  inputs."unicodedb-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_4".dir   = "v0_2_4";
  inputs."unicodedb-v0_2_4".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_2_4".ref   = "master";
  inputs."unicodedb-v0_2_4".repo  = "unicodedb";
  inputs."unicodedb-v0_2_4".type  = "github";
  inputs."unicodedb-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_5".dir   = "v0_2_5";
  inputs."unicodedb-v0_2_5".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_2_5".ref   = "master";
  inputs."unicodedb-v0_2_5".repo  = "unicodedb";
  inputs."unicodedb-v0_2_5".type  = "github";
  inputs."unicodedb-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_3_1".dir   = "v0_3_1";
  inputs."unicodedb-v0_3_1".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_3_1".ref   = "master";
  inputs."unicodedb-v0_3_1".repo  = "unicodedb";
  inputs."unicodedb-v0_3_1".type  = "github";
  inputs."unicodedb-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_3_2".dir   = "v0_3_2";
  inputs."unicodedb-v0_3_2".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_3_2".ref   = "master";
  inputs."unicodedb-v0_3_2".repo  = "unicodedb";
  inputs."unicodedb-v0_3_2".type  = "github";
  inputs."unicodedb-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_4_0".dir   = "v0_4_0";
  inputs."unicodedb-v0_4_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_4_0".ref   = "master";
  inputs."unicodedb-v0_4_0".repo  = "unicodedb";
  inputs."unicodedb-v0_4_0".type  = "github";
  inputs."unicodedb-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_5_0".dir   = "v0_5_0";
  inputs."unicodedb-v0_5_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_5_0".ref   = "master";
  inputs."unicodedb-v0_5_0".repo  = "unicodedb";
  inputs."unicodedb-v0_5_0".type  = "github";
  inputs."unicodedb-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_5_1".dir   = "v0_5_1";
  inputs."unicodedb-v0_5_1".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_5_1".ref   = "master";
  inputs."unicodedb-v0_5_1".repo  = "unicodedb";
  inputs."unicodedb-v0_5_1".type  = "github";
  inputs."unicodedb-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_5_2".dir   = "v0_5_2";
  inputs."unicodedb-v0_5_2".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_5_2".ref   = "master";
  inputs."unicodedb-v0_5_2".repo  = "unicodedb";
  inputs."unicodedb-v0_5_2".type  = "github";
  inputs."unicodedb-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_6_0".dir   = "v0_6_0";
  inputs."unicodedb-v0_6_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_6_0".ref   = "master";
  inputs."unicodedb-v0_6_0".repo  = "unicodedb";
  inputs."unicodedb-v0_6_0".type  = "github";
  inputs."unicodedb-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_7_0".dir   = "v0_7_0";
  inputs."unicodedb-v0_7_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_7_0".ref   = "master";
  inputs."unicodedb-v0_7_0".repo  = "unicodedb";
  inputs."unicodedb-v0_7_0".type  = "github";
  inputs."unicodedb-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_7_1".dir   = "v0_7_1";
  inputs."unicodedb-v0_7_1".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_7_1".ref   = "master";
  inputs."unicodedb-v0_7_1".repo  = "unicodedb";
  inputs."unicodedb-v0_7_1".type  = "github";
  inputs."unicodedb-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_7_2".dir   = "v0_7_2";
  inputs."unicodedb-v0_7_2".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_7_2".ref   = "master";
  inputs."unicodedb-v0_7_2".repo  = "unicodedb";
  inputs."unicodedb-v0_7_2".type  = "github";
  inputs."unicodedb-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_8_0".dir   = "v0_8_0";
  inputs."unicodedb-v0_8_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_8_0".ref   = "master";
  inputs."unicodedb-v0_8_0".repo  = "unicodedb";
  inputs."unicodedb-v0_8_0".type  = "github";
  inputs."unicodedb-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_9_0".dir   = "v0_9_0";
  inputs."unicodedb-v0_9_0".owner = "nim-nix-pkgs";
  inputs."unicodedb-v0_9_0".ref   = "master";
  inputs."unicodedb-v0_9_0".repo  = "unicodedb";
  inputs."unicodedb-v0_9_0".type  = "github";
  inputs."unicodedb-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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