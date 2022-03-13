{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."p4ztag_to_json-master".dir   = "master";
  inputs."p4ztag_to_json-master".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-master".ref   = "master";
  inputs."p4ztag_to_json-master".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-master".type  = "github";
  inputs."p4ztag_to_json-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_1_1".dir   = "v0_1_1";
  inputs."p4ztag_to_json-v0_1_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_1_1".ref   = "master";
  inputs."p4ztag_to_json-v0_1_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_1_1".type  = "github";
  inputs."p4ztag_to_json-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_10_0".dir   = "v0_10_0";
  inputs."p4ztag_to_json-v0_10_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_10_0".ref   = "master";
  inputs."p4ztag_to_json-v0_10_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_10_0".type  = "github";
  inputs."p4ztag_to_json-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_10_1".dir   = "v0_10_1";
  inputs."p4ztag_to_json-v0_10_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_10_1".ref   = "master";
  inputs."p4ztag_to_json-v0_10_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_10_1".type  = "github";
  inputs."p4ztag_to_json-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_10_2".dir   = "v0_10_2";
  inputs."p4ztag_to_json-v0_10_2".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_10_2".ref   = "master";
  inputs."p4ztag_to_json-v0_10_2".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_10_2".type  = "github";
  inputs."p4ztag_to_json-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_10_3".dir   = "v0_10_3";
  inputs."p4ztag_to_json-v0_10_3".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_10_3".ref   = "master";
  inputs."p4ztag_to_json-v0_10_3".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_10_3".type  = "github";
  inputs."p4ztag_to_json-v0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_10_4".dir   = "v0_10_4";
  inputs."p4ztag_to_json-v0_10_4".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_10_4".ref   = "master";
  inputs."p4ztag_to_json-v0_10_4".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_10_4".type  = "github";
  inputs."p4ztag_to_json-v0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_11_0".dir   = "v0_11_0";
  inputs."p4ztag_to_json-v0_11_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_11_0".ref   = "master";
  inputs."p4ztag_to_json-v0_11_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_11_0".type  = "github";
  inputs."p4ztag_to_json-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_11_1".dir   = "v0_11_1";
  inputs."p4ztag_to_json-v0_11_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_11_1".ref   = "master";
  inputs."p4ztag_to_json-v0_11_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_11_1".type  = "github";
  inputs."p4ztag_to_json-v0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_2_0".dir   = "v0_2_0";
  inputs."p4ztag_to_json-v0_2_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_2_0".ref   = "master";
  inputs."p4ztag_to_json-v0_2_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_2_0".type  = "github";
  inputs."p4ztag_to_json-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_2_1".dir   = "v0_2_1";
  inputs."p4ztag_to_json-v0_2_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_2_1".ref   = "master";
  inputs."p4ztag_to_json-v0_2_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_2_1".type  = "github";
  inputs."p4ztag_to_json-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_3_0".dir   = "v0_3_0";
  inputs."p4ztag_to_json-v0_3_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_3_0".ref   = "master";
  inputs."p4ztag_to_json-v0_3_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_3_0".type  = "github";
  inputs."p4ztag_to_json-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_3_1".dir   = "v0_3_1";
  inputs."p4ztag_to_json-v0_3_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_3_1".ref   = "master";
  inputs."p4ztag_to_json-v0_3_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_3_1".type  = "github";
  inputs."p4ztag_to_json-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_4_0".dir   = "v0_4_0";
  inputs."p4ztag_to_json-v0_4_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_4_0".ref   = "master";
  inputs."p4ztag_to_json-v0_4_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_4_0".type  = "github";
  inputs."p4ztag_to_json-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_4_1".dir   = "v0_4_1";
  inputs."p4ztag_to_json-v0_4_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_4_1".ref   = "master";
  inputs."p4ztag_to_json-v0_4_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_4_1".type  = "github";
  inputs."p4ztag_to_json-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_5_0".dir   = "v0_5_0";
  inputs."p4ztag_to_json-v0_5_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_5_0".ref   = "master";
  inputs."p4ztag_to_json-v0_5_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_5_0".type  = "github";
  inputs."p4ztag_to_json-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_6_0".dir   = "v0_6_0";
  inputs."p4ztag_to_json-v0_6_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_6_0".ref   = "master";
  inputs."p4ztag_to_json-v0_6_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_6_0".type  = "github";
  inputs."p4ztag_to_json-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_7_0".dir   = "v0_7_0";
  inputs."p4ztag_to_json-v0_7_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_7_0".ref   = "master";
  inputs."p4ztag_to_json-v0_7_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_7_0".type  = "github";
  inputs."p4ztag_to_json-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_7_1".dir   = "v0_7_1";
  inputs."p4ztag_to_json-v0_7_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_7_1".ref   = "master";
  inputs."p4ztag_to_json-v0_7_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_7_1".type  = "github";
  inputs."p4ztag_to_json-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_8_0".dir   = "v0_8_0";
  inputs."p4ztag_to_json-v0_8_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_8_0".ref   = "master";
  inputs."p4ztag_to_json-v0_8_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_8_0".type  = "github";
  inputs."p4ztag_to_json-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_9_0".dir   = "v0_9_0";
  inputs."p4ztag_to_json-v0_9_0".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_9_0".ref   = "master";
  inputs."p4ztag_to_json-v0_9_0".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_9_0".type  = "github";
  inputs."p4ztag_to_json-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_9_1".dir   = "v0_9_1";
  inputs."p4ztag_to_json-v0_9_1".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_9_1".ref   = "master";
  inputs."p4ztag_to_json-v0_9_1".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_9_1".type  = "github";
  inputs."p4ztag_to_json-v0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_9_2".dir   = "v0_9_2";
  inputs."p4ztag_to_json-v0_9_2".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_9_2".ref   = "master";
  inputs."p4ztag_to_json-v0_9_2".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_9_2".type  = "github";
  inputs."p4ztag_to_json-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."p4ztag_to_json-v0_9_3".dir   = "v0_9_3";
  inputs."p4ztag_to_json-v0_9_3".owner = "nim-nix-pkgs";
  inputs."p4ztag_to_json-v0_9_3".ref   = "master";
  inputs."p4ztag_to_json-v0_9_3".repo  = "p4ztag_to_json";
  inputs."p4ztag_to_json-v0_9_3".type  = "github";
  inputs."p4ztag_to_json-v0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."p4ztag_to_json-v0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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