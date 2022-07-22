{
  description = ''Nim ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."norm-develop".dir   = "develop";
  inputs."norm-develop".owner = "nim-nix-pkgs";
  inputs."norm-develop".ref   = "master";
  inputs."norm-develop".repo  = "norm";
  inputs."norm-develop".type  = "github";
  inputs."norm-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-master".dir   = "master";
  inputs."norm-master".owner = "nim-nix-pkgs";
  inputs."norm-master".ref   = "master";
  inputs."norm-master".repo  = "norm";
  inputs."norm-master".type  = "github";
  inputs."norm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_0".dir   = "1_0_0";
  inputs."norm-1_0_0".owner = "nim-nix-pkgs";
  inputs."norm-1_0_0".ref   = "master";
  inputs."norm-1_0_0".repo  = "norm";
  inputs."norm-1_0_0".type  = "github";
  inputs."norm-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_1".dir   = "1_0_1";
  inputs."norm-1_0_1".owner = "nim-nix-pkgs";
  inputs."norm-1_0_1".ref   = "master";
  inputs."norm-1_0_1".repo  = "norm";
  inputs."norm-1_0_1".type  = "github";
  inputs."norm-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_10".dir   = "1_0_10";
  inputs."norm-1_0_10".owner = "nim-nix-pkgs";
  inputs."norm-1_0_10".ref   = "master";
  inputs."norm-1_0_10".repo  = "norm";
  inputs."norm-1_0_10".type  = "github";
  inputs."norm-1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_11".dir   = "1_0_11";
  inputs."norm-1_0_11".owner = "nim-nix-pkgs";
  inputs."norm-1_0_11".ref   = "master";
  inputs."norm-1_0_11".repo  = "norm";
  inputs."norm-1_0_11".type  = "github";
  inputs."norm-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_12".dir   = "1_0_12";
  inputs."norm-1_0_12".owner = "nim-nix-pkgs";
  inputs."norm-1_0_12".ref   = "master";
  inputs."norm-1_0_12".repo  = "norm";
  inputs."norm-1_0_12".type  = "github";
  inputs."norm-1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_13".dir   = "1_0_13";
  inputs."norm-1_0_13".owner = "nim-nix-pkgs";
  inputs."norm-1_0_13".ref   = "master";
  inputs."norm-1_0_13".repo  = "norm";
  inputs."norm-1_0_13".type  = "github";
  inputs."norm-1_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_14".dir   = "1_0_14";
  inputs."norm-1_0_14".owner = "nim-nix-pkgs";
  inputs."norm-1_0_14".ref   = "master";
  inputs."norm-1_0_14".repo  = "norm";
  inputs."norm-1_0_14".type  = "github";
  inputs."norm-1_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_15".dir   = "1_0_15";
  inputs."norm-1_0_15".owner = "nim-nix-pkgs";
  inputs."norm-1_0_15".ref   = "master";
  inputs."norm-1_0_15".repo  = "norm";
  inputs."norm-1_0_15".type  = "github";
  inputs."norm-1_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_16".dir   = "1_0_16";
  inputs."norm-1_0_16".owner = "nim-nix-pkgs";
  inputs."norm-1_0_16".ref   = "master";
  inputs."norm-1_0_16".repo  = "norm";
  inputs."norm-1_0_16".type  = "github";
  inputs."norm-1_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_17".dir   = "1_0_17";
  inputs."norm-1_0_17".owner = "nim-nix-pkgs";
  inputs."norm-1_0_17".ref   = "master";
  inputs."norm-1_0_17".repo  = "norm";
  inputs."norm-1_0_17".type  = "github";
  inputs."norm-1_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_2".dir   = "1_0_2";
  inputs."norm-1_0_2".owner = "nim-nix-pkgs";
  inputs."norm-1_0_2".ref   = "master";
  inputs."norm-1_0_2".repo  = "norm";
  inputs."norm-1_0_2".type  = "github";
  inputs."norm-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_3".dir   = "1_0_3";
  inputs."norm-1_0_3".owner = "nim-nix-pkgs";
  inputs."norm-1_0_3".ref   = "master";
  inputs."norm-1_0_3".repo  = "norm";
  inputs."norm-1_0_3".type  = "github";
  inputs."norm-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_4".dir   = "1_0_4";
  inputs."norm-1_0_4".owner = "nim-nix-pkgs";
  inputs."norm-1_0_4".ref   = "master";
  inputs."norm-1_0_4".repo  = "norm";
  inputs."norm-1_0_4".type  = "github";
  inputs."norm-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_5".dir   = "1_0_5";
  inputs."norm-1_0_5".owner = "nim-nix-pkgs";
  inputs."norm-1_0_5".ref   = "master";
  inputs."norm-1_0_5".repo  = "norm";
  inputs."norm-1_0_5".type  = "github";
  inputs."norm-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_6".dir   = "1_0_6";
  inputs."norm-1_0_6".owner = "nim-nix-pkgs";
  inputs."norm-1_0_6".ref   = "master";
  inputs."norm-1_0_6".repo  = "norm";
  inputs."norm-1_0_6".type  = "github";
  inputs."norm-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_7".dir   = "1_0_7";
  inputs."norm-1_0_7".owner = "nim-nix-pkgs";
  inputs."norm-1_0_7".ref   = "master";
  inputs."norm-1_0_7".repo  = "norm";
  inputs."norm-1_0_7".type  = "github";
  inputs."norm-1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_8".dir   = "1_0_8";
  inputs."norm-1_0_8".owner = "nim-nix-pkgs";
  inputs."norm-1_0_8".ref   = "master";
  inputs."norm-1_0_8".repo  = "norm";
  inputs."norm-1_0_8".type  = "github";
  inputs."norm-1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_9".dir   = "1_0_9";
  inputs."norm-1_0_9".owner = "nim-nix-pkgs";
  inputs."norm-1_0_9".ref   = "master";
  inputs."norm-1_0_9".repo  = "norm";
  inputs."norm-1_0_9".type  = "github";
  inputs."norm-1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_0".dir   = "1_1_0";
  inputs."norm-1_1_0".owner = "nim-nix-pkgs";
  inputs."norm-1_1_0".ref   = "master";
  inputs."norm-1_1_0".repo  = "norm";
  inputs."norm-1_1_0".type  = "github";
  inputs."norm-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_1".dir   = "1_1_1";
  inputs."norm-1_1_1".owner = "nim-nix-pkgs";
  inputs."norm-1_1_1".ref   = "master";
  inputs."norm-1_1_1".repo  = "norm";
  inputs."norm-1_1_1".type  = "github";
  inputs."norm-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_2".dir   = "1_1_2";
  inputs."norm-1_1_2".owner = "nim-nix-pkgs";
  inputs."norm-1_1_2".ref   = "master";
  inputs."norm-1_1_2".repo  = "norm";
  inputs."norm-1_1_2".type  = "github";
  inputs."norm-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_3".dir   = "1_1_3";
  inputs."norm-1_1_3".owner = "nim-nix-pkgs";
  inputs."norm-1_1_3".ref   = "master";
  inputs."norm-1_1_3".repo  = "norm";
  inputs."norm-1_1_3".type  = "github";
  inputs."norm-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_0_0".dir   = "2_0_0";
  inputs."norm-2_0_0".owner = "nim-nix-pkgs";
  inputs."norm-2_0_0".ref   = "master";
  inputs."norm-2_0_0".repo  = "norm";
  inputs."norm-2_0_0".type  = "github";
  inputs."norm-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_0_1".dir   = "2_0_1";
  inputs."norm-2_0_1".owner = "nim-nix-pkgs";
  inputs."norm-2_0_1".ref   = "master";
  inputs."norm-2_0_1".repo  = "norm";
  inputs."norm-2_0_1".type  = "github";
  inputs."norm-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_0".dir   = "2_1_0";
  inputs."norm-2_1_0".owner = "nim-nix-pkgs";
  inputs."norm-2_1_0".ref   = "master";
  inputs."norm-2_1_0".repo  = "norm";
  inputs."norm-2_1_0".type  = "github";
  inputs."norm-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_1".dir   = "2_1_1";
  inputs."norm-2_1_1".owner = "nim-nix-pkgs";
  inputs."norm-2_1_1".ref   = "master";
  inputs."norm-2_1_1".repo  = "norm";
  inputs."norm-2_1_1".type  = "github";
  inputs."norm-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_2".dir   = "2_1_2";
  inputs."norm-2_1_2".owner = "nim-nix-pkgs";
  inputs."norm-2_1_2".ref   = "master";
  inputs."norm-2_1_2".repo  = "norm";
  inputs."norm-2_1_2".type  = "github";
  inputs."norm-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_3".dir   = "2_1_3";
  inputs."norm-2_1_3".owner = "nim-nix-pkgs";
  inputs."norm-2_1_3".ref   = "master";
  inputs."norm-2_1_3".repo  = "norm";
  inputs."norm-2_1_3".type  = "github";
  inputs."norm-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_4".dir   = "2_1_4";
  inputs."norm-2_1_4".owner = "nim-nix-pkgs";
  inputs."norm-2_1_4".ref   = "master";
  inputs."norm-2_1_4".repo  = "norm";
  inputs."norm-2_1_4".type  = "github";
  inputs."norm-2_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_5".dir   = "2_1_5";
  inputs."norm-2_1_5".owner = "nim-nix-pkgs";
  inputs."norm-2_1_5".ref   = "master";
  inputs."norm-2_1_5".repo  = "norm";
  inputs."norm-2_1_5".type  = "github";
  inputs."norm-2_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_0".dir   = "2_2_0";
  inputs."norm-2_2_0".owner = "nim-nix-pkgs";
  inputs."norm-2_2_0".ref   = "master";
  inputs."norm-2_2_0".repo  = "norm";
  inputs."norm-2_2_0".type  = "github";
  inputs."norm-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_1".dir   = "2_2_1";
  inputs."norm-2_2_1".owner = "nim-nix-pkgs";
  inputs."norm-2_2_1".ref   = "master";
  inputs."norm-2_2_1".repo  = "norm";
  inputs."norm-2_2_1".type  = "github";
  inputs."norm-2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_2".dir   = "2_2_2";
  inputs."norm-2_2_2".owner = "nim-nix-pkgs";
  inputs."norm-2_2_2".ref   = "master";
  inputs."norm-2_2_2".repo  = "norm";
  inputs."norm-2_2_2".type  = "github";
  inputs."norm-2_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_3".dir   = "2_2_3";
  inputs."norm-2_2_3".owner = "nim-nix-pkgs";
  inputs."norm-2_2_3".ref   = "master";
  inputs."norm-2_2_3".repo  = "norm";
  inputs."norm-2_2_3".type  = "github";
  inputs."norm-2_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_4".dir   = "2_2_4";
  inputs."norm-2_2_4".owner = "nim-nix-pkgs";
  inputs."norm-2_2_4".ref   = "master";
  inputs."norm-2_2_4".repo  = "norm";
  inputs."norm-2_2_4".type  = "github";
  inputs."norm-2_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_5".dir   = "2_2_5";
  inputs."norm-2_2_5".owner = "nim-nix-pkgs";
  inputs."norm-2_2_5".ref   = "master";
  inputs."norm-2_2_5".repo  = "norm";
  inputs."norm-2_2_5".type  = "github";
  inputs."norm-2_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_0".dir   = "2_3_0";
  inputs."norm-2_3_0".owner = "nim-nix-pkgs";
  inputs."norm-2_3_0".ref   = "master";
  inputs."norm-2_3_0".repo  = "norm";
  inputs."norm-2_3_0".type  = "github";
  inputs."norm-2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_1".dir   = "2_3_1";
  inputs."norm-2_3_1".owner = "nim-nix-pkgs";
  inputs."norm-2_3_1".ref   = "master";
  inputs."norm-2_3_1".repo  = "norm";
  inputs."norm-2_3_1".type  = "github";
  inputs."norm-2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_2".dir   = "2_3_2";
  inputs."norm-2_3_2".owner = "nim-nix-pkgs";
  inputs."norm-2_3_2".ref   = "master";
  inputs."norm-2_3_2".repo  = "norm";
  inputs."norm-2_3_2".type  = "github";
  inputs."norm-2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_3".dir   = "2_3_3";
  inputs."norm-2_3_3".owner = "nim-nix-pkgs";
  inputs."norm-2_3_3".ref   = "master";
  inputs."norm-2_3_3".repo  = "norm";
  inputs."norm-2_3_3".type  = "github";
  inputs."norm-2_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_4".dir   = "2_3_4";
  inputs."norm-2_3_4".owner = "nim-nix-pkgs";
  inputs."norm-2_3_4".ref   = "master";
  inputs."norm-2_3_4".repo  = "norm";
  inputs."norm-2_3_4".type  = "github";
  inputs."norm-2_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_5".dir   = "2_3_5";
  inputs."norm-2_3_5".owner = "nim-nix-pkgs";
  inputs."norm-2_3_5".ref   = "master";
  inputs."norm-2_3_5".repo  = "norm";
  inputs."norm-2_3_5".type  = "github";
  inputs."norm-2_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_6".dir   = "2_3_6";
  inputs."norm-2_3_6".owner = "nim-nix-pkgs";
  inputs."norm-2_3_6".ref   = "master";
  inputs."norm-2_3_6".repo  = "norm";
  inputs."norm-2_3_6".type  = "github";
  inputs."norm-2_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_7".dir   = "2_3_7";
  inputs."norm-2_3_7".owner = "nim-nix-pkgs";
  inputs."norm-2_3_7".ref   = "master";
  inputs."norm-2_3_7".repo  = "norm";
  inputs."norm-2_3_7".type  = "github";
  inputs."norm-2_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_4_0".dir   = "2_4_0";
  inputs."norm-2_4_0".owner = "nim-nix-pkgs";
  inputs."norm-2_4_0".ref   = "master";
  inputs."norm-2_4_0".repo  = "norm";
  inputs."norm-2_4_0".type  = "github";
  inputs."norm-2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_5_0".dir   = "2_5_0";
  inputs."norm-2_5_0".owner = "nim-nix-pkgs";
  inputs."norm-2_5_0".ref   = "master";
  inputs."norm-2_5_0".repo  = "norm";
  inputs."norm-2_5_0".type  = "github";
  inputs."norm-2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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