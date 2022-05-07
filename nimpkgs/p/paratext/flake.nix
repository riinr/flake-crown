{
  description = ''A library for rendering text with paranim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paratext-master".dir   = "master";
  inputs."paratext-master".owner = "nim-nix-pkgs";
  inputs."paratext-master".ref   = "master";
  inputs."paratext-master".repo  = "paratext";
  inputs."paratext-master".type  = "github";
  inputs."paratext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_1_0".dir   = "0_1_0";
  inputs."paratext-0_1_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_1_0".ref   = "master";
  inputs."paratext-0_1_0".repo  = "paratext";
  inputs."paratext-0_1_0".type  = "github";
  inputs."paratext-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_10_0".dir   = "0_10_0";
  inputs."paratext-0_10_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_10_0".ref   = "master";
  inputs."paratext-0_10_0".repo  = "paratext";
  inputs."paratext-0_10_0".type  = "github";
  inputs."paratext-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_11_0".dir   = "0_11_0";
  inputs."paratext-0_11_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_11_0".ref   = "master";
  inputs."paratext-0_11_0".repo  = "paratext";
  inputs."paratext-0_11_0".type  = "github";
  inputs."paratext-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_12_0".dir   = "0_12_0";
  inputs."paratext-0_12_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_12_0".ref   = "master";
  inputs."paratext-0_12_0".repo  = "paratext";
  inputs."paratext-0_12_0".type  = "github";
  inputs."paratext-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_13_0".dir   = "0_13_0";
  inputs."paratext-0_13_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_13_0".ref   = "master";
  inputs."paratext-0_13_0".repo  = "paratext";
  inputs."paratext-0_13_0".type  = "github";
  inputs."paratext-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_2_0".dir   = "0_2_0";
  inputs."paratext-0_2_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_2_0".ref   = "master";
  inputs."paratext-0_2_0".repo  = "paratext";
  inputs."paratext-0_2_0".type  = "github";
  inputs."paratext-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_3_0".dir   = "0_3_0";
  inputs."paratext-0_3_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_3_0".ref   = "master";
  inputs."paratext-0_3_0".repo  = "paratext";
  inputs."paratext-0_3_0".type  = "github";
  inputs."paratext-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_4_0".dir   = "0_4_0";
  inputs."paratext-0_4_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_4_0".ref   = "master";
  inputs."paratext-0_4_0".repo  = "paratext";
  inputs."paratext-0_4_0".type  = "github";
  inputs."paratext-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_5_0".dir   = "0_5_0";
  inputs."paratext-0_5_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_5_0".ref   = "master";
  inputs."paratext-0_5_0".repo  = "paratext";
  inputs."paratext-0_5_0".type  = "github";
  inputs."paratext-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_6_0".dir   = "0_6_0";
  inputs."paratext-0_6_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_6_0".ref   = "master";
  inputs."paratext-0_6_0".repo  = "paratext";
  inputs."paratext-0_6_0".type  = "github";
  inputs."paratext-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_7_0".dir   = "0_7_0";
  inputs."paratext-0_7_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_7_0".ref   = "master";
  inputs."paratext-0_7_0".repo  = "paratext";
  inputs."paratext-0_7_0".type  = "github";
  inputs."paratext-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_8_0".dir   = "0_8_0";
  inputs."paratext-0_8_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_8_0".ref   = "master";
  inputs."paratext-0_8_0".repo  = "paratext";
  inputs."paratext-0_8_0".type  = "github";
  inputs."paratext-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext-0_9_0".dir   = "0_9_0";
  inputs."paratext-0_9_0".owner = "nim-nix-pkgs";
  inputs."paratext-0_9_0".ref   = "master";
  inputs."paratext-0_9_0".repo  = "paratext";
  inputs."paratext-0_9_0".type  = "github";
  inputs."paratext-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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