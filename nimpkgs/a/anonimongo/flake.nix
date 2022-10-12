{
  description = ''ANOther pure NIm MONGO driver.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anonimongo-develop".dir   = "develop";
  inputs."anonimongo-develop".owner = "nim-nix-pkgs";
  inputs."anonimongo-develop".ref   = "master";
  inputs."anonimongo-develop".repo  = "anonimongo";
  inputs."anonimongo-develop".type  = "github";
  inputs."anonimongo-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-master".dir   = "master";
  inputs."anonimongo-master".owner = "nim-nix-pkgs";
  inputs."anonimongo-master".ref   = "master";
  inputs."anonimongo-master".repo  = "anonimongo";
  inputs."anonimongo-master".type  = "github";
  inputs."anonimongo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_1_0".dir   = "v0_1_0";
  inputs."anonimongo-v0_1_0".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_1_0".ref   = "master";
  inputs."anonimongo-v0_1_0".repo  = "anonimongo";
  inputs."anonimongo-v0_1_0".type  = "github";
  inputs."anonimongo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_2_0".dir   = "v0_2_0";
  inputs."anonimongo-v0_2_0".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_2_0".ref   = "master";
  inputs."anonimongo-v0_2_0".repo  = "anonimongo";
  inputs."anonimongo-v0_2_0".type  = "github";
  inputs."anonimongo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_3_0".dir   = "v0_3_0";
  inputs."anonimongo-v0_3_0".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_3_0".ref   = "master";
  inputs."anonimongo-v0_3_0".repo  = "anonimongo";
  inputs."anonimongo-v0_3_0".type  = "github";
  inputs."anonimongo-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_0".dir   = "v0_4_0";
  inputs."anonimongo-v0_4_0".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_0".ref   = "master";
  inputs."anonimongo-v0_4_0".repo  = "anonimongo";
  inputs."anonimongo-v0_4_0".type  = "github";
  inputs."anonimongo-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_1".dir   = "v0_4_1";
  inputs."anonimongo-v0_4_1".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_1".ref   = "master";
  inputs."anonimongo-v0_4_1".repo  = "anonimongo";
  inputs."anonimongo-v0_4_1".type  = "github";
  inputs."anonimongo-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_10".dir   = "v0_4_10";
  inputs."anonimongo-v0_4_10".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_10".ref   = "master";
  inputs."anonimongo-v0_4_10".repo  = "anonimongo";
  inputs."anonimongo-v0_4_10".type  = "github";
  inputs."anonimongo-v0_4_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_11".dir   = "v0_4_11";
  inputs."anonimongo-v0_4_11".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_11".ref   = "master";
  inputs."anonimongo-v0_4_11".repo  = "anonimongo";
  inputs."anonimongo-v0_4_11".type  = "github";
  inputs."anonimongo-v0_4_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_12".dir   = "v0_4_12";
  inputs."anonimongo-v0_4_12".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_12".ref   = "master";
  inputs."anonimongo-v0_4_12".repo  = "anonimongo";
  inputs."anonimongo-v0_4_12".type  = "github";
  inputs."anonimongo-v0_4_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_2".dir   = "v0_4_2";
  inputs."anonimongo-v0_4_2".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_2".ref   = "master";
  inputs."anonimongo-v0_4_2".repo  = "anonimongo";
  inputs."anonimongo-v0_4_2".type  = "github";
  inputs."anonimongo-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_3".dir   = "v0_4_3";
  inputs."anonimongo-v0_4_3".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_3".ref   = "master";
  inputs."anonimongo-v0_4_3".repo  = "anonimongo";
  inputs."anonimongo-v0_4_3".type  = "github";
  inputs."anonimongo-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_4".dir   = "v0_4_4";
  inputs."anonimongo-v0_4_4".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_4".ref   = "master";
  inputs."anonimongo-v0_4_4".repo  = "anonimongo";
  inputs."anonimongo-v0_4_4".type  = "github";
  inputs."anonimongo-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_5".dir   = "v0_4_5";
  inputs."anonimongo-v0_4_5".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_5".ref   = "master";
  inputs."anonimongo-v0_4_5".repo  = "anonimongo";
  inputs."anonimongo-v0_4_5".type  = "github";
  inputs."anonimongo-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_6".dir   = "v0_4_6";
  inputs."anonimongo-v0_4_6".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_6".ref   = "master";
  inputs."anonimongo-v0_4_6".repo  = "anonimongo";
  inputs."anonimongo-v0_4_6".type  = "github";
  inputs."anonimongo-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_7".dir   = "v0_4_7";
  inputs."anonimongo-v0_4_7".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_7".ref   = "master";
  inputs."anonimongo-v0_4_7".repo  = "anonimongo";
  inputs."anonimongo-v0_4_7".type  = "github";
  inputs."anonimongo-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_8".dir   = "v0_4_8";
  inputs."anonimongo-v0_4_8".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_8".ref   = "master";
  inputs."anonimongo-v0_4_8".repo  = "anonimongo";
  inputs."anonimongo-v0_4_8".type  = "github";
  inputs."anonimongo-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_4_9".dir   = "v0_4_9";
  inputs."anonimongo-v0_4_9".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_4_9".ref   = "master";
  inputs."anonimongo-v0_4_9".repo  = "anonimongo";
  inputs."anonimongo-v0_4_9".type  = "github";
  inputs."anonimongo-v0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_5_0".dir   = "v0_5_0";
  inputs."anonimongo-v0_5_0".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_5_0".ref   = "master";
  inputs."anonimongo-v0_5_0".repo  = "anonimongo";
  inputs."anonimongo-v0_5_0".type  = "github";
  inputs."anonimongo-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_5_2".dir   = "v0_5_2";
  inputs."anonimongo-v0_5_2".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_5_2".ref   = "master";
  inputs."anonimongo-v0_5_2".repo  = "anonimongo";
  inputs."anonimongo-v0_5_2".type  = "github";
  inputs."anonimongo-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_5_3".dir   = "v0_5_3";
  inputs."anonimongo-v0_5_3".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_5_3".ref   = "master";
  inputs."anonimongo-v0_5_3".repo  = "anonimongo";
  inputs."anonimongo-v0_5_3".type  = "github";
  inputs."anonimongo-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_5_4".dir   = "v0_5_4";
  inputs."anonimongo-v0_5_4".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_5_4".ref   = "master";
  inputs."anonimongo-v0_5_4".repo  = "anonimongo";
  inputs."anonimongo-v0_5_4".type  = "github";
  inputs."anonimongo-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_6_0".dir   = "v0_6_0";
  inputs."anonimongo-v0_6_0".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_6_0".ref   = "master";
  inputs."anonimongo-v0_6_0".repo  = "anonimongo";
  inputs."anonimongo-v0_6_0".type  = "github";
  inputs."anonimongo-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anonimongo-v0_6_1".dir   = "v0_6_1";
  inputs."anonimongo-v0_6_1".owner = "nim-nix-pkgs";
  inputs."anonimongo-v0_6_1".ref   = "master";
  inputs."anonimongo-v0_6_1".repo  = "anonimongo";
  inputs."anonimongo-v0_6_1".type  = "github";
  inputs."anonimongo-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anonimongo-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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