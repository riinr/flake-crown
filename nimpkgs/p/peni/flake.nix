{
  description = ''PE tool based on libpe (with no S)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."peni-master".dir   = "master";
  inputs."peni-master".owner = "nim-nix-pkgs";
  inputs."peni-master".ref   = "master";
  inputs."peni-master".repo  = "peni";
  inputs."peni-master".type  = "github";
  inputs."peni-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_1_1".dir   = "v0_1_1";
  inputs."peni-v0_1_1".owner = "nim-nix-pkgs";
  inputs."peni-v0_1_1".ref   = "master";
  inputs."peni-v0_1_1".repo  = "peni";
  inputs."peni-v0_1_1".type  = "github";
  inputs."peni-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_1_2".dir   = "v0_1_2";
  inputs."peni-v0_1_2".owner = "nim-nix-pkgs";
  inputs."peni-v0_1_2".ref   = "master";
  inputs."peni-v0_1_2".repo  = "peni";
  inputs."peni-v0_1_2".type  = "github";
  inputs."peni-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_1_3".dir   = "v0_1_3";
  inputs."peni-v0_1_3".owner = "nim-nix-pkgs";
  inputs."peni-v0_1_3".ref   = "master";
  inputs."peni-v0_1_3".repo  = "peni";
  inputs."peni-v0_1_3".type  = "github";
  inputs."peni-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_2_1".dir   = "v0_2_1";
  inputs."peni-v0_2_1".owner = "nim-nix-pkgs";
  inputs."peni-v0_2_1".ref   = "master";
  inputs."peni-v0_2_1".repo  = "peni";
  inputs."peni-v0_2_1".type  = "github";
  inputs."peni-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_0".dir   = "v0_3_0";
  inputs."peni-v0_3_0".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_0".ref   = "master";
  inputs."peni-v0_3_0".repo  = "peni";
  inputs."peni-v0_3_0".type  = "github";
  inputs."peni-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3".dir   = "v0_3_3";
  inputs."peni-v0_3_3".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3".ref   = "master";
  inputs."peni-v0_3_3".repo  = "peni";
  inputs."peni-v0_3_3".type  = "github";
  inputs."peni-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3-test".dir   = "v0_3_3-test";
  inputs."peni-v0_3_3-test".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3-test".ref   = "master";
  inputs."peni-v0_3_3-test".repo  = "peni";
  inputs."peni-v0_3_3-test".type  = "github";
  inputs."peni-v0_3_3-test".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3-test".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3-test2".dir   = "v0_3_3-test2";
  inputs."peni-v0_3_3-test2".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3-test2".ref   = "master";
  inputs."peni-v0_3_3-test2".repo  = "peni";
  inputs."peni-v0_3_3-test2".type  = "github";
  inputs."peni-v0_3_3-test2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3-test2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3-test3".dir   = "v0_3_3-test3";
  inputs."peni-v0_3_3-test3".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3-test3".ref   = "master";
  inputs."peni-v0_3_3-test3".repo  = "peni";
  inputs."peni-v0_3_3-test3".type  = "github";
  inputs."peni-v0_3_3-test3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3-test3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3-test4".dir   = "v0_3_3-test4";
  inputs."peni-v0_3_3-test4".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3-test4".ref   = "master";
  inputs."peni-v0_3_3-test4".repo  = "peni";
  inputs."peni-v0_3_3-test4".type  = "github";
  inputs."peni-v0_3_3-test4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3-test4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3-test5".dir   = "v0_3_3-test5";
  inputs."peni-v0_3_3-test5".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3-test5".ref   = "master";
  inputs."peni-v0_3_3-test5".repo  = "peni";
  inputs."peni-v0_3_3-test5".type  = "github";
  inputs."peni-v0_3_3-test5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3-test5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_3-test6".dir   = "v0_3_3-test6";
  inputs."peni-v0_3_3-test6".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_3-test6".ref   = "master";
  inputs."peni-v0_3_3-test6".repo  = "peni";
  inputs."peni-v0_3_3-test6".type  = "github";
  inputs."peni-v0_3_3-test6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_3-test6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_3_4".dir   = "v0_3_4";
  inputs."peni-v0_3_4".owner = "nim-nix-pkgs";
  inputs."peni-v0_3_4".ref   = "master";
  inputs."peni-v0_3_4".repo  = "peni";
  inputs."peni-v0_3_4".type  = "github";
  inputs."peni-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_0".dir   = "v0_4_0";
  inputs."peni-v0_4_0".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_0".ref   = "master";
  inputs."peni-v0_4_0".repo  = "peni";
  inputs."peni-v0_4_0".type  = "github";
  inputs."peni-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_1".dir   = "v0_4_1";
  inputs."peni-v0_4_1".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_1".ref   = "master";
  inputs."peni-v0_4_1".repo  = "peni";
  inputs."peni-v0_4_1".type  = "github";
  inputs."peni-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_1-1".dir   = "v0_4_1-1";
  inputs."peni-v0_4_1-1".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_1-1".ref   = "master";
  inputs."peni-v0_4_1-1".repo  = "peni";
  inputs."peni-v0_4_1-1".type  = "github";
  inputs."peni-v0_4_1-1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_1-1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_2".dir   = "v0_4_2";
  inputs."peni-v0_4_2".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_2".ref   = "master";
  inputs."peni-v0_4_2".repo  = "peni";
  inputs."peni-v0_4_2".type  = "github";
  inputs."peni-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_3".dir   = "v0_4_3";
  inputs."peni-v0_4_3".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_3".ref   = "master";
  inputs."peni-v0_4_3".repo  = "peni";
  inputs."peni-v0_4_3".type  = "github";
  inputs."peni-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_4".dir   = "v0_4_4";
  inputs."peni-v0_4_4".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_4".ref   = "master";
  inputs."peni-v0_4_4".repo  = "peni";
  inputs."peni-v0_4_4".type  = "github";
  inputs."peni-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."peni-v0_4_5".dir   = "v0_4_5";
  inputs."peni-v0_4_5".owner = "nim-nix-pkgs";
  inputs."peni-v0_4_5".ref   = "master";
  inputs."peni-v0_4_5".repo  = "peni";
  inputs."peni-v0_4_5".type  = "github";
  inputs."peni-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."peni-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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