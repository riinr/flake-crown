{
  description = ''a benchmark tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."golden-master".dir   = "master";
  inputs."golden-master".owner = "nim-nix-pkgs";
  inputs."golden-master".ref   = "master";
  inputs."golden-master".repo  = "golden";
  inputs."golden-master".type  = "github";
  inputs."golden-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-0_0_1".dir   = "0_0_1";
  inputs."golden-0_0_1".owner = "nim-nix-pkgs";
  inputs."golden-0_0_1".ref   = "master";
  inputs."golden-0_0_1".repo  = "golden";
  inputs."golden-0_0_1".type  = "github";
  inputs."golden-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_0_1".dir   = "1_0_1";
  inputs."golden-1_0_1".owner = "nim-nix-pkgs";
  inputs."golden-1_0_1".ref   = "master";
  inputs."golden-1_0_1".repo  = "golden";
  inputs."golden-1_0_1".type  = "github";
  inputs."golden-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_1_0".dir   = "1_1_0";
  inputs."golden-1_1_0".owner = "nim-nix-pkgs";
  inputs."golden-1_1_0".ref   = "master";
  inputs."golden-1_1_0".repo  = "golden";
  inputs."golden-1_1_0".type  = "github";
  inputs."golden-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_1_2".dir   = "1_1_2";
  inputs."golden-1_1_2".owner = "nim-nix-pkgs";
  inputs."golden-1_1_2".ref   = "master";
  inputs."golden-1_1_2".repo  = "golden";
  inputs."golden-1_1_2".type  = "github";
  inputs."golden-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_1_3".dir   = "1_1_3";
  inputs."golden-1_1_3".owner = "nim-nix-pkgs";
  inputs."golden-1_1_3".ref   = "master";
  inputs."golden-1_1_3".repo  = "golden";
  inputs."golden-1_1_3".type  = "github";
  inputs."golden-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_0_0".dir   = "2_0_0";
  inputs."golden-2_0_0".owner = "nim-nix-pkgs";
  inputs."golden-2_0_0".ref   = "master";
  inputs."golden-2_0_0".repo  = "golden";
  inputs."golden-2_0_0".type  = "github";
  inputs."golden-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_1_0".dir   = "2_1_0";
  inputs."golden-2_1_0".owner = "nim-nix-pkgs";
  inputs."golden-2_1_0".ref   = "master";
  inputs."golden-2_1_0".repo  = "golden";
  inputs."golden-2_1_0".type  = "github";
  inputs."golden-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_2_0".dir   = "2_2_0";
  inputs."golden-2_2_0".owner = "nim-nix-pkgs";
  inputs."golden-2_2_0".ref   = "master";
  inputs."golden-2_2_0".repo  = "golden";
  inputs."golden-2_2_0".type  = "github";
  inputs."golden-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_3_0".dir   = "2_3_0";
  inputs."golden-2_3_0".owner = "nim-nix-pkgs";
  inputs."golden-2_3_0".ref   = "master";
  inputs."golden-2_3_0".repo  = "golden";
  inputs."golden-2_3_0".type  = "github";
  inputs."golden-2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_3_1".dir   = "2_3_1";
  inputs."golden-2_3_1".owner = "nim-nix-pkgs";
  inputs."golden-2_3_1".ref   = "master";
  inputs."golden-2_3_1".repo  = "golden";
  inputs."golden-2_3_1".type  = "github";
  inputs."golden-2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_3_2".dir   = "2_3_2";
  inputs."golden-2_3_2".owner = "nim-nix-pkgs";
  inputs."golden-2_3_2".ref   = "master";
  inputs."golden-2_3_2".repo  = "golden";
  inputs."golden-2_3_2".type  = "github";
  inputs."golden-2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_4_0".dir   = "2_4_0";
  inputs."golden-2_4_0".owner = "nim-nix-pkgs";
  inputs."golden-2_4_0".ref   = "master";
  inputs."golden-2_4_0".repo  = "golden";
  inputs."golden-2_4_0".type  = "github";
  inputs."golden-2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_4_1".dir   = "2_4_1";
  inputs."golden-2_4_1".owner = "nim-nix-pkgs";
  inputs."golden-2_4_1".ref   = "master";
  inputs."golden-2_4_1".repo  = "golden";
  inputs."golden-2_4_1".type  = "github";
  inputs."golden-2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_5_1".dir   = "2_5_1";
  inputs."golden-2_5_1".owner = "nim-nix-pkgs";
  inputs."golden-2_5_1".ref   = "master";
  inputs."golden-2_5_1".repo  = "golden";
  inputs."golden-2_5_1".type  = "github";
  inputs."golden-2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_5_2".dir   = "2_5_2";
  inputs."golden-2_5_2".owner = "nim-nix-pkgs";
  inputs."golden-2_5_2".ref   = "master";
  inputs."golden-2_5_2".repo  = "golden";
  inputs."golden-2_5_2".type  = "github";
  inputs."golden-2_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_0".dir   = "3_0_0";
  inputs."golden-3_0_0".owner = "nim-nix-pkgs";
  inputs."golden-3_0_0".ref   = "master";
  inputs."golden-3_0_0".repo  = "golden";
  inputs."golden-3_0_0".type  = "github";
  inputs."golden-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_1".dir   = "3_0_1";
  inputs."golden-3_0_1".owner = "nim-nix-pkgs";
  inputs."golden-3_0_1".ref   = "master";
  inputs."golden-3_0_1".repo  = "golden";
  inputs."golden-3_0_1".type  = "github";
  inputs."golden-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_10".dir   = "3_0_10";
  inputs."golden-3_0_10".owner = "nim-nix-pkgs";
  inputs."golden-3_0_10".ref   = "master";
  inputs."golden-3_0_10".repo  = "golden";
  inputs."golden-3_0_10".type  = "github";
  inputs."golden-3_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_11".dir   = "3_0_11";
  inputs."golden-3_0_11".owner = "nim-nix-pkgs";
  inputs."golden-3_0_11".ref   = "master";
  inputs."golden-3_0_11".repo  = "golden";
  inputs."golden-3_0_11".type  = "github";
  inputs."golden-3_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_12".dir   = "3_0_12";
  inputs."golden-3_0_12".owner = "nim-nix-pkgs";
  inputs."golden-3_0_12".ref   = "master";
  inputs."golden-3_0_12".repo  = "golden";
  inputs."golden-3_0_12".type  = "github";
  inputs."golden-3_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_13".dir   = "3_0_13";
  inputs."golden-3_0_13".owner = "nim-nix-pkgs";
  inputs."golden-3_0_13".ref   = "master";
  inputs."golden-3_0_13".repo  = "golden";
  inputs."golden-3_0_13".type  = "github";
  inputs."golden-3_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_14".dir   = "3_0_14";
  inputs."golden-3_0_14".owner = "nim-nix-pkgs";
  inputs."golden-3_0_14".ref   = "master";
  inputs."golden-3_0_14".repo  = "golden";
  inputs."golden-3_0_14".type  = "github";
  inputs."golden-3_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_15".dir   = "3_0_15";
  inputs."golden-3_0_15".owner = "nim-nix-pkgs";
  inputs."golden-3_0_15".ref   = "master";
  inputs."golden-3_0_15".repo  = "golden";
  inputs."golden-3_0_15".type  = "github";
  inputs."golden-3_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_2".dir   = "3_0_2";
  inputs."golden-3_0_2".owner = "nim-nix-pkgs";
  inputs."golden-3_0_2".ref   = "master";
  inputs."golden-3_0_2".repo  = "golden";
  inputs."golden-3_0_2".type  = "github";
  inputs."golden-3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_3".dir   = "3_0_3";
  inputs."golden-3_0_3".owner = "nim-nix-pkgs";
  inputs."golden-3_0_3".ref   = "master";
  inputs."golden-3_0_3".repo  = "golden";
  inputs."golden-3_0_3".type  = "github";
  inputs."golden-3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_4".dir   = "3_0_4";
  inputs."golden-3_0_4".owner = "nim-nix-pkgs";
  inputs."golden-3_0_4".ref   = "master";
  inputs."golden-3_0_4".repo  = "golden";
  inputs."golden-3_0_4".type  = "github";
  inputs."golden-3_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_5".dir   = "3_0_5";
  inputs."golden-3_0_5".owner = "nim-nix-pkgs";
  inputs."golden-3_0_5".ref   = "master";
  inputs."golden-3_0_5".repo  = "golden";
  inputs."golden-3_0_5".type  = "github";
  inputs."golden-3_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_6".dir   = "3_0_6";
  inputs."golden-3_0_6".owner = "nim-nix-pkgs";
  inputs."golden-3_0_6".ref   = "master";
  inputs."golden-3_0_6".repo  = "golden";
  inputs."golden-3_0_6".type  = "github";
  inputs."golden-3_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_7".dir   = "3_0_7";
  inputs."golden-3_0_7".owner = "nim-nix-pkgs";
  inputs."golden-3_0_7".ref   = "master";
  inputs."golden-3_0_7".repo  = "golden";
  inputs."golden-3_0_7".type  = "github";
  inputs."golden-3_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_8".dir   = "3_0_8";
  inputs."golden-3_0_8".owner = "nim-nix-pkgs";
  inputs."golden-3_0_8".ref   = "master";
  inputs."golden-3_0_8".repo  = "golden";
  inputs."golden-3_0_8".type  = "github";
  inputs."golden-3_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_9".dir   = "3_0_9";
  inputs."golden-3_0_9".owner = "nim-nix-pkgs";
  inputs."golden-3_0_9".ref   = "master";
  inputs."golden-3_0_9".repo  = "golden";
  inputs."golden-3_0_9".type  = "github";
  inputs."golden-3_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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