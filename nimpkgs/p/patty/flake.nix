{
  description = ''Algebraic data types and pattern matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."patty-master".dir   = "master";
  inputs."patty-master".owner = "nim-nix-pkgs";
  inputs."patty-master".ref   = "master";
  inputs."patty-master".repo  = "patty";
  inputs."patty-master".type  = "github";
  inputs."patty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_0".dir   = "0_1_0";
  inputs."patty-0_1_0".owner = "nim-nix-pkgs";
  inputs."patty-0_1_0".ref   = "master";
  inputs."patty-0_1_0".repo  = "patty";
  inputs."patty-0_1_0".type  = "github";
  inputs."patty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_1".dir   = "0_1_1";
  inputs."patty-0_1_1".owner = "nim-nix-pkgs";
  inputs."patty-0_1_1".ref   = "master";
  inputs."patty-0_1_1".repo  = "patty";
  inputs."patty-0_1_1".type  = "github";
  inputs."patty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_10".dir   = "0_1_10";
  inputs."patty-0_1_10".owner = "nim-nix-pkgs";
  inputs."patty-0_1_10".ref   = "master";
  inputs."patty-0_1_10".repo  = "patty";
  inputs."patty-0_1_10".type  = "github";
  inputs."patty-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_2".dir   = "0_1_2";
  inputs."patty-0_1_2".owner = "nim-nix-pkgs";
  inputs."patty-0_1_2".ref   = "master";
  inputs."patty-0_1_2".repo  = "patty";
  inputs."patty-0_1_2".type  = "github";
  inputs."patty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_3".dir   = "0_1_3";
  inputs."patty-0_1_3".owner = "nim-nix-pkgs";
  inputs."patty-0_1_3".ref   = "master";
  inputs."patty-0_1_3".repo  = "patty";
  inputs."patty-0_1_3".type  = "github";
  inputs."patty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_4".dir   = "0_1_4";
  inputs."patty-0_1_4".owner = "nim-nix-pkgs";
  inputs."patty-0_1_4".ref   = "master";
  inputs."patty-0_1_4".repo  = "patty";
  inputs."patty-0_1_4".type  = "github";
  inputs."patty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_5".dir   = "0_1_5";
  inputs."patty-0_1_5".owner = "nim-nix-pkgs";
  inputs."patty-0_1_5".ref   = "master";
  inputs."patty-0_1_5".repo  = "patty";
  inputs."patty-0_1_5".type  = "github";
  inputs."patty-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_6".dir   = "0_1_6";
  inputs."patty-0_1_6".owner = "nim-nix-pkgs";
  inputs."patty-0_1_6".ref   = "master";
  inputs."patty-0_1_6".repo  = "patty";
  inputs."patty-0_1_6".type  = "github";
  inputs."patty-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_7".dir   = "0_1_7";
  inputs."patty-0_1_7".owner = "nim-nix-pkgs";
  inputs."patty-0_1_7".ref   = "master";
  inputs."patty-0_1_7".repo  = "patty";
  inputs."patty-0_1_7".type  = "github";
  inputs."patty-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_8".dir   = "0_1_8";
  inputs."patty-0_1_8".owner = "nim-nix-pkgs";
  inputs."patty-0_1_8".ref   = "master";
  inputs."patty-0_1_8".repo  = "patty";
  inputs."patty-0_1_8".type  = "github";
  inputs."patty-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_1_9".dir   = "0_1_9";
  inputs."patty-0_1_9".owner = "nim-nix-pkgs";
  inputs."patty-0_1_9".ref   = "master";
  inputs."patty-0_1_9".repo  = "patty";
  inputs."patty-0_1_9".type  = "github";
  inputs."patty-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_2_0".dir   = "0_2_0";
  inputs."patty-0_2_0".owner = "nim-nix-pkgs";
  inputs."patty-0_2_0".ref   = "master";
  inputs."patty-0_2_0".repo  = "patty";
  inputs."patty-0_2_0".type  = "github";
  inputs."patty-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_2_1".dir   = "0_2_1";
  inputs."patty-0_2_1".owner = "nim-nix-pkgs";
  inputs."patty-0_2_1".ref   = "master";
  inputs."patty-0_2_1".repo  = "patty";
  inputs."patty-0_2_1".type  = "github";
  inputs."patty-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_0".dir   = "0_3_0";
  inputs."patty-0_3_0".owner = "nim-nix-pkgs";
  inputs."patty-0_3_0".ref   = "master";
  inputs."patty-0_3_0".repo  = "patty";
  inputs."patty-0_3_0".type  = "github";
  inputs."patty-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_1".dir   = "0_3_1";
  inputs."patty-0_3_1".owner = "nim-nix-pkgs";
  inputs."patty-0_3_1".ref   = "master";
  inputs."patty-0_3_1".repo  = "patty";
  inputs."patty-0_3_1".type  = "github";
  inputs."patty-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_2".dir   = "0_3_2";
  inputs."patty-0_3_2".owner = "nim-nix-pkgs";
  inputs."patty-0_3_2".ref   = "master";
  inputs."patty-0_3_2".repo  = "patty";
  inputs."patty-0_3_2".type  = "github";
  inputs."patty-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_3".dir   = "0_3_3";
  inputs."patty-0_3_3".owner = "nim-nix-pkgs";
  inputs."patty-0_3_3".ref   = "master";
  inputs."patty-0_3_3".repo  = "patty";
  inputs."patty-0_3_3".type  = "github";
  inputs."patty-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty-0_3_4".dir   = "0_3_4";
  inputs."patty-0_3_4".owner = "nim-nix-pkgs";
  inputs."patty-0_3_4".ref   = "master";
  inputs."patty-0_3_4".repo  = "patty";
  inputs."patty-0_3_4".type  = "github";
  inputs."patty-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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