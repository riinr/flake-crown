{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."litestore-master".dir   = "master";
  inputs."litestore-master".owner = "nim-nix-pkgs";
  inputs."litestore-master".ref   = "master";
  inputs."litestore-master".repo  = "litestore";
  inputs."litestore-master".type  = "github";
  inputs."litestore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_0".dir   = "v1_0_0";
  inputs."litestore-v1_0_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_0_0".ref   = "master";
  inputs."litestore-v1_0_0".repo  = "litestore";
  inputs."litestore-v1_0_0".type  = "github";
  inputs."litestore-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_1".dir   = "v1_0_1";
  inputs."litestore-v1_0_1".owner = "nim-nix-pkgs";
  inputs."litestore-v1_0_1".ref   = "master";
  inputs."litestore-v1_0_1".repo  = "litestore";
  inputs."litestore-v1_0_1".type  = "github";
  inputs."litestore-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_2".dir   = "v1_0_2";
  inputs."litestore-v1_0_2".owner = "nim-nix-pkgs";
  inputs."litestore-v1_0_2".ref   = "master";
  inputs."litestore-v1_0_2".repo  = "litestore";
  inputs."litestore-v1_0_2".type  = "github";
  inputs."litestore-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_3".dir   = "v1_0_3";
  inputs."litestore-v1_0_3".owner = "nim-nix-pkgs";
  inputs."litestore-v1_0_3".ref   = "master";
  inputs."litestore-v1_0_3".repo  = "litestore";
  inputs."litestore-v1_0_3".type  = "github";
  inputs."litestore-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_4".dir   = "v1_0_4";
  inputs."litestore-v1_0_4".owner = "nim-nix-pkgs";
  inputs."litestore-v1_0_4".ref   = "master";
  inputs."litestore-v1_0_4".repo  = "litestore";
  inputs."litestore-v1_0_4".type  = "github";
  inputs."litestore-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_5".dir   = "v1_0_5";
  inputs."litestore-v1_0_5".owner = "nim-nix-pkgs";
  inputs."litestore-v1_0_5".ref   = "master";
  inputs."litestore-v1_0_5".repo  = "litestore";
  inputs."litestore-v1_0_5".type  = "github";
  inputs."litestore-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_1_0".dir   = "v1_1_0";
  inputs."litestore-v1_1_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_1_0".ref   = "master";
  inputs."litestore-v1_1_0".repo  = "litestore";
  inputs."litestore-v1_1_0".type  = "github";
  inputs."litestore-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_1_1".dir   = "v1_1_1";
  inputs."litestore-v1_1_1".owner = "nim-nix-pkgs";
  inputs."litestore-v1_1_1".ref   = "master";
  inputs."litestore-v1_1_1".repo  = "litestore";
  inputs."litestore-v1_1_1".type  = "github";
  inputs."litestore-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_10_0".dir   = "v1_10_0";
  inputs."litestore-v1_10_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_10_0".ref   = "master";
  inputs."litestore-v1_10_0".repo  = "litestore";
  inputs."litestore-v1_10_0".type  = "github";
  inputs."litestore-v1_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_11_0".dir   = "v1_11_0";
  inputs."litestore-v1_11_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_11_0".ref   = "master";
  inputs."litestore-v1_11_0".repo  = "litestore";
  inputs."litestore-v1_11_0".type  = "github";
  inputs."litestore-v1_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_2_0".dir   = "v1_2_0";
  inputs."litestore-v1_2_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_2_0".ref   = "master";
  inputs."litestore-v1_2_0".repo  = "litestore";
  inputs."litestore-v1_2_0".type  = "github";
  inputs."litestore-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_3_0".dir   = "v1_3_0";
  inputs."litestore-v1_3_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_3_0".ref   = "master";
  inputs."litestore-v1_3_0".repo  = "litestore";
  inputs."litestore-v1_3_0".type  = "github";
  inputs."litestore-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_3_1".dir   = "v1_3_1";
  inputs."litestore-v1_3_1".owner = "nim-nix-pkgs";
  inputs."litestore-v1_3_1".ref   = "master";
  inputs."litestore-v1_3_1".repo  = "litestore";
  inputs."litestore-v1_3_1".type  = "github";
  inputs."litestore-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_4_0".dir   = "v1_4_0";
  inputs."litestore-v1_4_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_4_0".ref   = "master";
  inputs."litestore-v1_4_0".repo  = "litestore";
  inputs."litestore-v1_4_0".type  = "github";
  inputs."litestore-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_4_1".dir   = "v1_4_1";
  inputs."litestore-v1_4_1".owner = "nim-nix-pkgs";
  inputs."litestore-v1_4_1".ref   = "master";
  inputs."litestore-v1_4_1".repo  = "litestore";
  inputs."litestore-v1_4_1".type  = "github";
  inputs."litestore-v1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_5_0".dir   = "v1_5_0";
  inputs."litestore-v1_5_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_5_0".ref   = "master";
  inputs."litestore-v1_5_0".repo  = "litestore";
  inputs."litestore-v1_5_0".type  = "github";
  inputs."litestore-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_5_1".dir   = "v1_5_1";
  inputs."litestore-v1_5_1".owner = "nim-nix-pkgs";
  inputs."litestore-v1_5_1".ref   = "master";
  inputs."litestore-v1_5_1".repo  = "litestore";
  inputs."litestore-v1_5_1".type  = "github";
  inputs."litestore-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_6_0".dir   = "v1_6_0";
  inputs."litestore-v1_6_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_6_0".ref   = "master";
  inputs."litestore-v1_6_0".repo  = "litestore";
  inputs."litestore-v1_6_0".type  = "github";
  inputs."litestore-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_7_0".dir   = "v1_7_0";
  inputs."litestore-v1_7_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_7_0".ref   = "master";
  inputs."litestore-v1_7_0".repo  = "litestore";
  inputs."litestore-v1_7_0".type  = "github";
  inputs."litestore-v1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_8_0".dir   = "v1_8_0";
  inputs."litestore-v1_8_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_8_0".ref   = "master";
  inputs."litestore-v1_8_0".repo  = "litestore";
  inputs."litestore-v1_8_0".type  = "github";
  inputs."litestore-v1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_0".dir   = "v1_9_0";
  inputs."litestore-v1_9_0".owner = "nim-nix-pkgs";
  inputs."litestore-v1_9_0".ref   = "master";
  inputs."litestore-v1_9_0".repo  = "litestore";
  inputs."litestore-v1_9_0".type  = "github";
  inputs."litestore-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_1".dir   = "v1_9_1";
  inputs."litestore-v1_9_1".owner = "nim-nix-pkgs";
  inputs."litestore-v1_9_1".ref   = "master";
  inputs."litestore-v1_9_1".repo  = "litestore";
  inputs."litestore-v1_9_1".type  = "github";
  inputs."litestore-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_2".dir   = "v1_9_2";
  inputs."litestore-v1_9_2".owner = "nim-nix-pkgs";
  inputs."litestore-v1_9_2".ref   = "master";
  inputs."litestore-v1_9_2".repo  = "litestore";
  inputs."litestore-v1_9_2".type  = "github";
  inputs."litestore-v1_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_3".dir   = "v1_9_3";
  inputs."litestore-v1_9_3".owner = "nim-nix-pkgs";
  inputs."litestore-v1_9_3".ref   = "master";
  inputs."litestore-v1_9_3".repo  = "litestore";
  inputs."litestore-v1_9_3".type  = "github";
  inputs."litestore-v1_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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