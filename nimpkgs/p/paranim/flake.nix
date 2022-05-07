{
  description = ''A game library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paranim-master".dir   = "master";
  inputs."paranim-master".owner = "nim-nix-pkgs";
  inputs."paranim-master".ref   = "master";
  inputs."paranim-master".repo  = "paranim";
  inputs."paranim-master".type  = "github";
  inputs."paranim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_1_0".dir   = "0_1_0";
  inputs."paranim-0_1_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_1_0".ref   = "master";
  inputs."paranim-0_1_0".repo  = "paranim";
  inputs."paranim-0_1_0".type  = "github";
  inputs."paranim-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_10_0".dir   = "0_10_0";
  inputs."paranim-0_10_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_10_0".ref   = "master";
  inputs."paranim-0_10_0".repo  = "paranim";
  inputs."paranim-0_10_0".type  = "github";
  inputs."paranim-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_11_0".dir   = "0_11_0";
  inputs."paranim-0_11_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_11_0".ref   = "master";
  inputs."paranim-0_11_0".repo  = "paranim";
  inputs."paranim-0_11_0".type  = "github";
  inputs."paranim-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_12_0".dir   = "0_12_0";
  inputs."paranim-0_12_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_12_0".ref   = "master";
  inputs."paranim-0_12_0".repo  = "paranim";
  inputs."paranim-0_12_0".type  = "github";
  inputs."paranim-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_2_0".dir   = "0_2_0";
  inputs."paranim-0_2_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_2_0".ref   = "master";
  inputs."paranim-0_2_0".repo  = "paranim";
  inputs."paranim-0_2_0".type  = "github";
  inputs."paranim-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_3_0".dir   = "0_3_0";
  inputs."paranim-0_3_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_3_0".ref   = "master";
  inputs."paranim-0_3_0".repo  = "paranim";
  inputs."paranim-0_3_0".type  = "github";
  inputs."paranim-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_4_0".dir   = "0_4_0";
  inputs."paranim-0_4_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_4_0".ref   = "master";
  inputs."paranim-0_4_0".repo  = "paranim";
  inputs."paranim-0_4_0".type  = "github";
  inputs."paranim-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_5_0".dir   = "0_5_0";
  inputs."paranim-0_5_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_5_0".ref   = "master";
  inputs."paranim-0_5_0".repo  = "paranim";
  inputs."paranim-0_5_0".type  = "github";
  inputs."paranim-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_6_0".dir   = "0_6_0";
  inputs."paranim-0_6_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_6_0".ref   = "master";
  inputs."paranim-0_6_0".repo  = "paranim";
  inputs."paranim-0_6_0".type  = "github";
  inputs."paranim-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_7_0".dir   = "0_7_0";
  inputs."paranim-0_7_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_7_0".ref   = "master";
  inputs."paranim-0_7_0".repo  = "paranim";
  inputs."paranim-0_7_0".type  = "github";
  inputs."paranim-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_8_0".dir   = "0_8_0";
  inputs."paranim-0_8_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_8_0".ref   = "master";
  inputs."paranim-0_8_0".repo  = "paranim";
  inputs."paranim-0_8_0".type  = "github";
  inputs."paranim-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paranim-0_9_0".dir   = "0_9_0";
  inputs."paranim-0_9_0".owner = "nim-nix-pkgs";
  inputs."paranim-0_9_0".ref   = "master";
  inputs."paranim-0_9_0".repo  = "paranim";
  inputs."paranim-0_9_0".type  = "github";
  inputs."paranim-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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