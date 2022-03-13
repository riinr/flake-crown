{
  description = ''A web DSL for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rosencrantz-master".dir   = "master";
  inputs."rosencrantz-master".owner = "nim-nix-pkgs";
  inputs."rosencrantz-master".ref   = "master";
  inputs."rosencrantz-master".repo  = "rosencrantz";
  inputs."rosencrantz-master".type  = "github";
  inputs."rosencrantz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_0".dir   = "0_1_0";
  inputs."rosencrantz-0_1_0".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_0".ref   = "master";
  inputs."rosencrantz-0_1_0".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_0".type  = "github";
  inputs."rosencrantz-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_1".dir   = "0_1_1";
  inputs."rosencrantz-0_1_1".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_1".ref   = "master";
  inputs."rosencrantz-0_1_1".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_1".type  = "github";
  inputs."rosencrantz-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_10".dir   = "0_1_10";
  inputs."rosencrantz-0_1_10".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_10".ref   = "master";
  inputs."rosencrantz-0_1_10".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_10".type  = "github";
  inputs."rosencrantz-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_11".dir   = "0_1_11";
  inputs."rosencrantz-0_1_11".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_11".ref   = "master";
  inputs."rosencrantz-0_1_11".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_11".type  = "github";
  inputs."rosencrantz-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_12".dir   = "0_1_12";
  inputs."rosencrantz-0_1_12".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_12".ref   = "master";
  inputs."rosencrantz-0_1_12".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_12".type  = "github";
  inputs."rosencrantz-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_2".dir   = "0_1_2";
  inputs."rosencrantz-0_1_2".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_2".ref   = "master";
  inputs."rosencrantz-0_1_2".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_2".type  = "github";
  inputs."rosencrantz-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_3".dir   = "0_1_3";
  inputs."rosencrantz-0_1_3".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_3".ref   = "master";
  inputs."rosencrantz-0_1_3".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_3".type  = "github";
  inputs."rosencrantz-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_4".dir   = "0_1_4";
  inputs."rosencrantz-0_1_4".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_4".ref   = "master";
  inputs."rosencrantz-0_1_4".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_4".type  = "github";
  inputs."rosencrantz-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_5".dir   = "0_1_5";
  inputs."rosencrantz-0_1_5".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_5".ref   = "master";
  inputs."rosencrantz-0_1_5".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_5".type  = "github";
  inputs."rosencrantz-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_6".dir   = "0_1_6";
  inputs."rosencrantz-0_1_6".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_6".ref   = "master";
  inputs."rosencrantz-0_1_6".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_6".type  = "github";
  inputs."rosencrantz-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_7".dir   = "0_1_7";
  inputs."rosencrantz-0_1_7".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_7".ref   = "master";
  inputs."rosencrantz-0_1_7".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_7".type  = "github";
  inputs."rosencrantz-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_8".dir   = "0_1_8";
  inputs."rosencrantz-0_1_8".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_8".ref   = "master";
  inputs."rosencrantz-0_1_8".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_8".type  = "github";
  inputs."rosencrantz-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_1_9".dir   = "0_1_9";
  inputs."rosencrantz-0_1_9".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_1_9".ref   = "master";
  inputs."rosencrantz-0_1_9".repo  = "rosencrantz";
  inputs."rosencrantz-0_1_9".type  = "github";
  inputs."rosencrantz-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_0".dir   = "0_2_0";
  inputs."rosencrantz-0_2_0".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_0".ref   = "master";
  inputs."rosencrantz-0_2_0".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_0".type  = "github";
  inputs."rosencrantz-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_1".dir   = "0_2_1";
  inputs."rosencrantz-0_2_1".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_1".ref   = "master";
  inputs."rosencrantz-0_2_1".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_1".type  = "github";
  inputs."rosencrantz-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_2".dir   = "0_2_2";
  inputs."rosencrantz-0_2_2".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_2".ref   = "master";
  inputs."rosencrantz-0_2_2".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_2".type  = "github";
  inputs."rosencrantz-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_3".dir   = "0_2_3";
  inputs."rosencrantz-0_2_3".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_3".ref   = "master";
  inputs."rosencrantz-0_2_3".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_3".type  = "github";
  inputs."rosencrantz-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_4".dir   = "0_2_4";
  inputs."rosencrantz-0_2_4".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_4".ref   = "master";
  inputs."rosencrantz-0_2_4".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_4".type  = "github";
  inputs."rosencrantz-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_5".dir   = "0_2_5";
  inputs."rosencrantz-0_2_5".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_5".ref   = "master";
  inputs."rosencrantz-0_2_5".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_5".type  = "github";
  inputs."rosencrantz-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_6".dir   = "0_2_6";
  inputs."rosencrantz-0_2_6".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_6".ref   = "master";
  inputs."rosencrantz-0_2_6".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_6".type  = "github";
  inputs."rosencrantz-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_7".dir   = "0_2_7";
  inputs."rosencrantz-0_2_7".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_7".ref   = "master";
  inputs."rosencrantz-0_2_7".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_7".type  = "github";
  inputs."rosencrantz-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_2_8".dir   = "0_2_8";
  inputs."rosencrantz-0_2_8".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_2_8".ref   = "master";
  inputs."rosencrantz-0_2_8".repo  = "rosencrantz";
  inputs."rosencrantz-0_2_8".type  = "github";
  inputs."rosencrantz-0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_0".dir   = "0_3_0";
  inputs."rosencrantz-0_3_0".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_0".ref   = "master";
  inputs."rosencrantz-0_3_0".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_0".type  = "github";
  inputs."rosencrantz-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_1".dir   = "0_3_1";
  inputs."rosencrantz-0_3_1".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_1".ref   = "master";
  inputs."rosencrantz-0_3_1".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_1".type  = "github";
  inputs."rosencrantz-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_2".dir   = "0_3_2";
  inputs."rosencrantz-0_3_2".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_2".ref   = "master";
  inputs."rosencrantz-0_3_2".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_2".type  = "github";
  inputs."rosencrantz-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_3".dir   = "0_3_3";
  inputs."rosencrantz-0_3_3".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_3".ref   = "master";
  inputs."rosencrantz-0_3_3".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_3".type  = "github";
  inputs."rosencrantz-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_4".dir   = "0_3_4";
  inputs."rosencrantz-0_3_4".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_4".ref   = "master";
  inputs."rosencrantz-0_3_4".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_4".type  = "github";
  inputs."rosencrantz-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_5".dir   = "0_3_5";
  inputs."rosencrantz-0_3_5".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_5".ref   = "master";
  inputs."rosencrantz-0_3_5".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_5".type  = "github";
  inputs."rosencrantz-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_6".dir   = "0_3_6";
  inputs."rosencrantz-0_3_6".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_6".ref   = "master";
  inputs."rosencrantz-0_3_6".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_6".type  = "github";
  inputs."rosencrantz-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_7".dir   = "0_3_7";
  inputs."rosencrantz-0_3_7".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_7".ref   = "master";
  inputs."rosencrantz-0_3_7".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_7".type  = "github";
  inputs."rosencrantz-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_8".dir   = "0_3_8";
  inputs."rosencrantz-0_3_8".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_8".ref   = "master";
  inputs."rosencrantz-0_3_8".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_8".type  = "github";
  inputs."rosencrantz-0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_3_9".dir   = "0_3_9";
  inputs."rosencrantz-0_3_9".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_3_9".ref   = "master";
  inputs."rosencrantz-0_3_9".repo  = "rosencrantz";
  inputs."rosencrantz-0_3_9".type  = "github";
  inputs."rosencrantz-0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_0".dir   = "0_4_0";
  inputs."rosencrantz-0_4_0".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_4_0".ref   = "master";
  inputs."rosencrantz-0_4_0".repo  = "rosencrantz";
  inputs."rosencrantz-0_4_0".type  = "github";
  inputs."rosencrantz-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_1".dir   = "0_4_1";
  inputs."rosencrantz-0_4_1".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_4_1".ref   = "master";
  inputs."rosencrantz-0_4_1".repo  = "rosencrantz";
  inputs."rosencrantz-0_4_1".type  = "github";
  inputs."rosencrantz-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_2".dir   = "0_4_2";
  inputs."rosencrantz-0_4_2".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_4_2".ref   = "master";
  inputs."rosencrantz-0_4_2".repo  = "rosencrantz";
  inputs."rosencrantz-0_4_2".type  = "github";
  inputs."rosencrantz-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz-0_4_3".dir   = "0_4_3";
  inputs."rosencrantz-0_4_3".owner = "nim-nix-pkgs";
  inputs."rosencrantz-0_4_3".ref   = "master";
  inputs."rosencrantz-0_4_3".repo  = "rosencrantz";
  inputs."rosencrantz-0_4_3".type  = "github";
  inputs."rosencrantz-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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