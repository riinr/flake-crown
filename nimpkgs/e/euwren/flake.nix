{
  description = ''High-level Wren wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."euwren-master".dir   = "master";
  inputs."euwren-master".owner = "nim-nix-pkgs";
  inputs."euwren-master".ref   = "master";
  inputs."euwren-master".repo  = "euwren";
  inputs."euwren-master".type  = "github";
  inputs."euwren-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_1_0".dir   = "0_1_0";
  inputs."euwren-0_1_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_1_0".ref   = "master";
  inputs."euwren-0_1_0".repo  = "euwren";
  inputs."euwren-0_1_0".type  = "github";
  inputs."euwren-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_10_0".dir   = "0_10_0";
  inputs."euwren-0_10_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_10_0".ref   = "master";
  inputs."euwren-0_10_0".repo  = "euwren";
  inputs."euwren-0_10_0".type  = "github";
  inputs."euwren-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_10_1".dir   = "0_10_1";
  inputs."euwren-0_10_1".owner = "nim-nix-pkgs";
  inputs."euwren-0_10_1".ref   = "master";
  inputs."euwren-0_10_1".repo  = "euwren";
  inputs."euwren-0_10_1".type  = "github";
  inputs."euwren-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_11_0".dir   = "0_11_0";
  inputs."euwren-0_11_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_11_0".ref   = "master";
  inputs."euwren-0_11_0".repo  = "euwren";
  inputs."euwren-0_11_0".type  = "github";
  inputs."euwren-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_12_0".dir   = "0_12_0";
  inputs."euwren-0_12_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_12_0".ref   = "master";
  inputs."euwren-0_12_0".repo  = "euwren";
  inputs."euwren-0_12_0".type  = "github";
  inputs."euwren-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_12_1".dir   = "0_12_1";
  inputs."euwren-0_12_1".owner = "nim-nix-pkgs";
  inputs."euwren-0_12_1".ref   = "master";
  inputs."euwren-0_12_1".repo  = "euwren";
  inputs."euwren-0_12_1".type  = "github";
  inputs."euwren-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_12_2".dir   = "0_12_2";
  inputs."euwren-0_12_2".owner = "nim-nix-pkgs";
  inputs."euwren-0_12_2".ref   = "master";
  inputs."euwren-0_12_2".repo  = "euwren";
  inputs."euwren-0_12_2".type  = "github";
  inputs."euwren-0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_13_0".dir   = "0_13_0";
  inputs."euwren-0_13_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_13_0".ref   = "master";
  inputs."euwren-0_13_0".repo  = "euwren";
  inputs."euwren-0_13_0".type  = "github";
  inputs."euwren-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_13_1".dir   = "0_13_1";
  inputs."euwren-0_13_1".owner = "nim-nix-pkgs";
  inputs."euwren-0_13_1".ref   = "master";
  inputs."euwren-0_13_1".repo  = "euwren";
  inputs."euwren-0_13_1".type  = "github";
  inputs."euwren-0_13_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_13_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_13_2".dir   = "0_13_2";
  inputs."euwren-0_13_2".owner = "nim-nix-pkgs";
  inputs."euwren-0_13_2".ref   = "master";
  inputs."euwren-0_13_2".repo  = "euwren";
  inputs."euwren-0_13_2".type  = "github";
  inputs."euwren-0_13_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_13_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_13_3".dir   = "0_13_3";
  inputs."euwren-0_13_3".owner = "nim-nix-pkgs";
  inputs."euwren-0_13_3".ref   = "master";
  inputs."euwren-0_13_3".repo  = "euwren";
  inputs."euwren-0_13_3".type  = "github";
  inputs."euwren-0_13_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_13_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_2_0".dir   = "0_2_0";
  inputs."euwren-0_2_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_2_0".ref   = "master";
  inputs."euwren-0_2_0".repo  = "euwren";
  inputs."euwren-0_2_0".type  = "github";
  inputs."euwren-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_3_0".dir   = "0_3_0";
  inputs."euwren-0_3_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_3_0".ref   = "master";
  inputs."euwren-0_3_0".repo  = "euwren";
  inputs."euwren-0_3_0".type  = "github";
  inputs."euwren-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_4_0".dir   = "0_4_0";
  inputs."euwren-0_4_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_4_0".ref   = "master";
  inputs."euwren-0_4_0".repo  = "euwren";
  inputs."euwren-0_4_0".type  = "github";
  inputs."euwren-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_5_0".dir   = "0_5_0";
  inputs."euwren-0_5_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_5_0".ref   = "master";
  inputs."euwren-0_5_0".repo  = "euwren";
  inputs."euwren-0_5_0".type  = "github";
  inputs."euwren-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_5_1".dir   = "0_5_1";
  inputs."euwren-0_5_1".owner = "nim-nix-pkgs";
  inputs."euwren-0_5_1".ref   = "master";
  inputs."euwren-0_5_1".repo  = "euwren";
  inputs."euwren-0_5_1".type  = "github";
  inputs."euwren-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_6_0".dir   = "0_6_0";
  inputs."euwren-0_6_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_6_0".ref   = "master";
  inputs."euwren-0_6_0".repo  = "euwren";
  inputs."euwren-0_6_0".type  = "github";
  inputs."euwren-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_7_0".dir   = "0_7_0";
  inputs."euwren-0_7_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_7_0".ref   = "master";
  inputs."euwren-0_7_0".repo  = "euwren";
  inputs."euwren-0_7_0".type  = "github";
  inputs."euwren-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_8_0".dir   = "0_8_0";
  inputs."euwren-0_8_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_8_0".ref   = "master";
  inputs."euwren-0_8_0".repo  = "euwren";
  inputs."euwren-0_8_0".type  = "github";
  inputs."euwren-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_9_0".dir   = "0_9_0";
  inputs."euwren-0_9_0".owner = "nim-nix-pkgs";
  inputs."euwren-0_9_0".ref   = "master";
  inputs."euwren-0_9_0".repo  = "euwren";
  inputs."euwren-0_9_0".type  = "github";
  inputs."euwren-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."euwren-0_9_1".dir   = "0_9_1";
  inputs."euwren-0_9_1".owner = "nim-nix-pkgs";
  inputs."euwren-0_9_1".ref   = "master";
  inputs."euwren-0_9_1".repo  = "euwren";
  inputs."euwren-0_9_1".type  = "github";
  inputs."euwren-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."euwren-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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