{
  description = ''Argument parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nap-master".dir   = "master";
  inputs."nap-master".owner = "nim-nix-pkgs";
  inputs."nap-master".ref   = "master";
  inputs."nap-master".repo  = "nap";
  inputs."nap-master".type  = "github";
  inputs."nap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_5_1".dir   = "0_5_1";
  inputs."nap-0_5_1".owner = "nim-nix-pkgs";
  inputs."nap-0_5_1".ref   = "master";
  inputs."nap-0_5_1".repo  = "nap";
  inputs."nap-0_5_1".type  = "github";
  inputs."nap-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_6_0".dir   = "0_6_0";
  inputs."nap-0_6_0".owner = "nim-nix-pkgs";
  inputs."nap-0_6_0".ref   = "master";
  inputs."nap-0_6_0".repo  = "nap";
  inputs."nap-0_6_0".type  = "github";
  inputs."nap-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_7_0".dir   = "0_7_0";
  inputs."nap-0_7_0".owner = "nim-nix-pkgs";
  inputs."nap-0_7_0".ref   = "master";
  inputs."nap-0_7_0".repo  = "nap";
  inputs."nap-0_7_0".type  = "github";
  inputs."nap-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_7_1".dir   = "0_7_1";
  inputs."nap-0_7_1".owner = "nim-nix-pkgs";
  inputs."nap-0_7_1".ref   = "master";
  inputs."nap-0_7_1".repo  = "nap";
  inputs."nap-0_7_1".type  = "github";
  inputs."nap-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_8_0".dir   = "0_8_0";
  inputs."nap-0_8_0".owner = "nim-nix-pkgs";
  inputs."nap-0_8_0".ref   = "master";
  inputs."nap-0_8_0".repo  = "nap";
  inputs."nap-0_8_0".type  = "github";
  inputs."nap-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_9_0".dir   = "0_9_0";
  inputs."nap-0_9_0".owner = "nim-nix-pkgs";
  inputs."nap-0_9_0".ref   = "master";
  inputs."nap-0_9_0".repo  = "nap";
  inputs."nap-0_9_0".type  = "github";
  inputs."nap-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-0_9_1".dir   = "0_9_1";
  inputs."nap-0_9_1".owner = "nim-nix-pkgs";
  inputs."nap-0_9_1".ref   = "master";
  inputs."nap-0_9_1".repo  = "nap";
  inputs."nap-0_9_1".type  = "github";
  inputs."nap-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_0_0".dir   = "1_0_0";
  inputs."nap-1_0_0".owner = "nim-nix-pkgs";
  inputs."nap-1_0_0".ref   = "master";
  inputs."nap-1_0_0".repo  = "nap";
  inputs."nap-1_0_0".type  = "github";
  inputs."nap-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_0_1".dir   = "1_0_1";
  inputs."nap-1_0_1".owner = "nim-nix-pkgs";
  inputs."nap-1_0_1".ref   = "master";
  inputs."nap-1_0_1".repo  = "nap";
  inputs."nap-1_0_1".type  = "github";
  inputs."nap-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_1_0".dir   = "1_1_0";
  inputs."nap-1_1_0".owner = "nim-nix-pkgs";
  inputs."nap-1_1_0".ref   = "master";
  inputs."nap-1_1_0".repo  = "nap";
  inputs."nap-1_1_0".type  = "github";
  inputs."nap-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_2_0".dir   = "1_2_0";
  inputs."nap-1_2_0".owner = "nim-nix-pkgs";
  inputs."nap-1_2_0".ref   = "master";
  inputs."nap-1_2_0".repo  = "nap";
  inputs."nap-1_2_0".type  = "github";
  inputs."nap-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_2_2".dir   = "1_2_2";
  inputs."nap-1_2_2".owner = "nim-nix-pkgs";
  inputs."nap-1_2_2".ref   = "master";
  inputs."nap-1_2_2".repo  = "nap";
  inputs."nap-1_2_2".type  = "github";
  inputs."nap-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_2_3".dir   = "1_2_3";
  inputs."nap-1_2_3".owner = "nim-nix-pkgs";
  inputs."nap-1_2_3".ref   = "master";
  inputs."nap-1_2_3".repo  = "nap";
  inputs."nap-1_2_3".type  = "github";
  inputs."nap-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_3_0".dir   = "1_3_0";
  inputs."nap-1_3_0".owner = "nim-nix-pkgs";
  inputs."nap-1_3_0".ref   = "master";
  inputs."nap-1_3_0".repo  = "nap";
  inputs."nap-1_3_0".type  = "github";
  inputs."nap-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_3_1".dir   = "1_3_1";
  inputs."nap-1_3_1".owner = "nim-nix-pkgs";
  inputs."nap-1_3_1".ref   = "master";
  inputs."nap-1_3_1".repo  = "nap";
  inputs."nap-1_3_1".type  = "github";
  inputs."nap-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_4_0".dir   = "1_4_0";
  inputs."nap-1_4_0".owner = "nim-nix-pkgs";
  inputs."nap-1_4_0".ref   = "master";
  inputs."nap-1_4_0".repo  = "nap";
  inputs."nap-1_4_0".type  = "github";
  inputs."nap-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_4_1".dir   = "1_4_1";
  inputs."nap-1_4_1".owner = "nim-nix-pkgs";
  inputs."nap-1_4_1".ref   = "master";
  inputs."nap-1_4_1".repo  = "nap";
  inputs."nap-1_4_1".type  = "github";
  inputs."nap-1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_4_2".dir   = "1_4_2";
  inputs."nap-1_4_2".owner = "nim-nix-pkgs";
  inputs."nap-1_4_2".ref   = "master";
  inputs."nap-1_4_2".repo  = "nap";
  inputs."nap-1_4_2".type  = "github";
  inputs."nap-1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-1_5_1".dir   = "1_5_1";
  inputs."nap-1_5_1".owner = "nim-nix-pkgs";
  inputs."nap-1_5_1".ref   = "master";
  inputs."nap-1_5_1".repo  = "nap";
  inputs."nap-1_5_1".type  = "github";
  inputs."nap-1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-v1_2_1".dir   = "v1_2_1";
  inputs."nap-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nap-v1_2_1".ref   = "master";
  inputs."nap-v1_2_1".repo  = "nap";
  inputs."nap-v1_2_1".type  = "github";
  inputs."nap-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-v2_0_0".dir   = "v2_0_0";
  inputs."nap-v2_0_0".owner = "nim-nix-pkgs";
  inputs."nap-v2_0_0".ref   = "master";
  inputs."nap-v2_0_0".repo  = "nap";
  inputs."nap-v2_0_0".type  = "github";
  inputs."nap-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nap-v3_0_0".dir   = "v3_0_0";
  inputs."nap-v3_0_0".owner = "nim-nix-pkgs";
  inputs."nap-v3_0_0".ref   = "master";
  inputs."nap-v3_0_0".repo  = "nap";
  inputs."nap-v3_0_0".type  = "github";
  inputs."nap-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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