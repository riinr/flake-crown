{
  description = ''JSON serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eminim-master".dir   = "master";
  inputs."eminim-master".owner = "nim-nix-pkgs";
  inputs."eminim-master".ref   = "master";
  inputs."eminim-master".repo  = "eminim";
  inputs."eminim-master".type  = "github";
  inputs."eminim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v0_2_0".dir   = "v0_2_0";
  inputs."eminim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."eminim-v0_2_0".ref   = "master";
  inputs."eminim-v0_2_0".repo  = "eminim";
  inputs."eminim-v0_2_0".type  = "github";
  inputs."eminim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v0_3_0".dir   = "v0_3_0";
  inputs."eminim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."eminim-v0_3_0".ref   = "master";
  inputs."eminim-v0_3_0".repo  = "eminim";
  inputs."eminim-v0_3_0".type  = "github";
  inputs."eminim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v0_4_0".dir   = "v0_4_0";
  inputs."eminim-v0_4_0".owner = "nim-nix-pkgs";
  inputs."eminim-v0_4_0".ref   = "master";
  inputs."eminim-v0_4_0".repo  = "eminim";
  inputs."eminim-v0_4_0".type  = "github";
  inputs."eminim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_0_0".dir   = "v1_0_0";
  inputs."eminim-v1_0_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_0_0".ref   = "master";
  inputs."eminim-v1_0_0".repo  = "eminim";
  inputs."eminim-v1_0_0".type  = "github";
  inputs."eminim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_1_0".dir   = "v1_1_0";
  inputs."eminim-v1_1_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_1_0".ref   = "master";
  inputs."eminim-v1_1_0".repo  = "eminim";
  inputs."eminim-v1_1_0".type  = "github";
  inputs."eminim-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_2_0".dir   = "v1_2_0";
  inputs."eminim-v1_2_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_2_0".ref   = "master";
  inputs."eminim-v1_2_0".repo  = "eminim";
  inputs."eminim-v1_2_0".type  = "github";
  inputs."eminim-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_3_0".dir   = "v1_3_0";
  inputs."eminim-v1_3_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_3_0".ref   = "master";
  inputs."eminim-v1_3_0".repo  = "eminim";
  inputs."eminim-v1_3_0".type  = "github";
  inputs."eminim-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_4_0".dir   = "v1_4_0";
  inputs."eminim-v1_4_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_4_0".ref   = "master";
  inputs."eminim-v1_4_0".repo  = "eminim";
  inputs."eminim-v1_4_0".type  = "github";
  inputs."eminim-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_5_0".dir   = "v1_5_0";
  inputs."eminim-v1_5_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_5_0".ref   = "master";
  inputs."eminim-v1_5_0".repo  = "eminim";
  inputs."eminim-v1_5_0".type  = "github";
  inputs."eminim-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_6_0".dir   = "v1_6_0";
  inputs."eminim-v1_6_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_6_0".ref   = "master";
  inputs."eminim-v1_6_0".repo  = "eminim";
  inputs."eminim-v1_6_0".type  = "github";
  inputs."eminim-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_7_0".dir   = "v1_7_0";
  inputs."eminim-v1_7_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_7_0".ref   = "master";
  inputs."eminim-v1_7_0".repo  = "eminim";
  inputs."eminim-v1_7_0".type  = "github";
  inputs."eminim-v1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_8_0".dir   = "v1_8_0";
  inputs."eminim-v1_8_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_8_0".ref   = "master";
  inputs."eminim-v1_8_0".repo  = "eminim";
  inputs."eminim-v1_8_0".type  = "github";
  inputs."eminim-v1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_9_0".dir   = "v1_9_0";
  inputs."eminim-v1_9_0".owner = "nim-nix-pkgs";
  inputs."eminim-v1_9_0".ref   = "master";
  inputs."eminim-v1_9_0".repo  = "eminim";
  inputs."eminim-v1_9_0".type  = "github";
  inputs."eminim-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_0".dir   = "v2_0_0";
  inputs."eminim-v2_0_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_0_0".ref   = "master";
  inputs."eminim-v2_0_0".repo  = "eminim";
  inputs."eminim-v2_0_0".type  = "github";
  inputs."eminim-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_1".dir   = "v2_0_1";
  inputs."eminim-v2_0_1".owner = "nim-nix-pkgs";
  inputs."eminim-v2_0_1".ref   = "master";
  inputs."eminim-v2_0_1".repo  = "eminim";
  inputs."eminim-v2_0_1".type  = "github";
  inputs."eminim-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_2".dir   = "v2_0_2";
  inputs."eminim-v2_0_2".owner = "nim-nix-pkgs";
  inputs."eminim-v2_0_2".ref   = "master";
  inputs."eminim-v2_0_2".repo  = "eminim";
  inputs."eminim-v2_0_2".type  = "github";
  inputs."eminim-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_3".dir   = "v2_0_3";
  inputs."eminim-v2_0_3".owner = "nim-nix-pkgs";
  inputs."eminim-v2_0_3".ref   = "master";
  inputs."eminim-v2_0_3".repo  = "eminim";
  inputs."eminim-v2_0_3".type  = "github";
  inputs."eminim-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_1_0".dir   = "v2_1_0";
  inputs."eminim-v2_1_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_1_0".ref   = "master";
  inputs."eminim-v2_1_0".repo  = "eminim";
  inputs."eminim-v2_1_0".type  = "github";
  inputs."eminim-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_2_0".dir   = "v2_2_0";
  inputs."eminim-v2_2_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_2_0".ref   = "master";
  inputs."eminim-v2_2_0".repo  = "eminim";
  inputs."eminim-v2_2_0".type  = "github";
  inputs."eminim-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_3_0".dir   = "v2_3_0";
  inputs."eminim-v2_3_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_3_0".ref   = "master";
  inputs."eminim-v2_3_0".repo  = "eminim";
  inputs."eminim-v2_3_0".type  = "github";
  inputs."eminim-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_3_1".dir   = "v2_3_1";
  inputs."eminim-v2_3_1".owner = "nim-nix-pkgs";
  inputs."eminim-v2_3_1".ref   = "master";
  inputs."eminim-v2_3_1".repo  = "eminim";
  inputs."eminim-v2_3_1".type  = "github";
  inputs."eminim-v2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_4_0".dir   = "v2_4_0";
  inputs."eminim-v2_4_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_4_0".ref   = "master";
  inputs."eminim-v2_4_0".repo  = "eminim";
  inputs."eminim-v2_4_0".type  = "github";
  inputs."eminim-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_5_0".dir   = "v2_5_0";
  inputs."eminim-v2_5_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_5_0".ref   = "master";
  inputs."eminim-v2_5_0".repo  = "eminim";
  inputs."eminim-v2_5_0".type  = "github";
  inputs."eminim-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_5_1".dir   = "v2_5_1";
  inputs."eminim-v2_5_1".owner = "nim-nix-pkgs";
  inputs."eminim-v2_5_1".ref   = "master";
  inputs."eminim-v2_5_1".repo  = "eminim";
  inputs."eminim-v2_5_1".type  = "github";
  inputs."eminim-v2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_6_0".dir   = "v2_6_0";
  inputs."eminim-v2_6_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_6_0".ref   = "master";
  inputs."eminim-v2_6_0".repo  = "eminim";
  inputs."eminim-v2_6_0".type  = "github";
  inputs."eminim-v2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_7_0".dir   = "v2_7_0";
  inputs."eminim-v2_7_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_7_0".ref   = "master";
  inputs."eminim-v2_7_0".repo  = "eminim";
  inputs."eminim-v2_7_0".type  = "github";
  inputs."eminim-v2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_8_0".dir   = "v2_8_0";
  inputs."eminim-v2_8_0".owner = "nim-nix-pkgs";
  inputs."eminim-v2_8_0".ref   = "master";
  inputs."eminim-v2_8_0".repo  = "eminim";
  inputs."eminim-v2_8_0".type  = "github";
  inputs."eminim-v2_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_8_1".dir   = "v2_8_1";
  inputs."eminim-v2_8_1".owner = "nim-nix-pkgs";
  inputs."eminim-v2_8_1".ref   = "master";
  inputs."eminim-v2_8_1".repo  = "eminim";
  inputs."eminim-v2_8_1".type  = "github";
  inputs."eminim-v2_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_8_2".dir   = "v2_8_2";
  inputs."eminim-v2_8_2".owner = "nim-nix-pkgs";
  inputs."eminim-v2_8_2".ref   = "master";
  inputs."eminim-v2_8_2".repo  = "eminim";
  inputs."eminim-v2_8_2".type  = "github";
  inputs."eminim-v2_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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