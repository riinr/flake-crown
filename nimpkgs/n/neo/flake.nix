{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neo-master".dir   = "master";
  inputs."neo-master".owner = "nim-nix-pkgs";
  inputs."neo-master".ref   = "master";
  inputs."neo-master".repo  = "neo";
  inputs."neo-master".type  = "github";
  inputs."neo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_1".dir   = "0_1_1";
  inputs."neo-0_1_1".owner = "nim-nix-pkgs";
  inputs."neo-0_1_1".ref   = "master";
  inputs."neo-0_1_1".repo  = "neo";
  inputs."neo-0_1_1".type  = "github";
  inputs."neo-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_2".dir   = "0_1_2";
  inputs."neo-0_1_2".owner = "nim-nix-pkgs";
  inputs."neo-0_1_2".ref   = "master";
  inputs."neo-0_1_2".repo  = "neo";
  inputs."neo-0_1_2".type  = "github";
  inputs."neo-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_3".dir   = "0_1_3";
  inputs."neo-0_1_3".owner = "nim-nix-pkgs";
  inputs."neo-0_1_3".ref   = "master";
  inputs."neo-0_1_3".repo  = "neo";
  inputs."neo-0_1_3".type  = "github";
  inputs."neo-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_4".dir   = "0_1_4";
  inputs."neo-0_1_4".owner = "nim-nix-pkgs";
  inputs."neo-0_1_4".ref   = "master";
  inputs."neo-0_1_4".repo  = "neo";
  inputs."neo-0_1_4".type  = "github";
  inputs."neo-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_5".dir   = "0_1_5";
  inputs."neo-0_1_5".owner = "nim-nix-pkgs";
  inputs."neo-0_1_5".ref   = "master";
  inputs."neo-0_1_5".repo  = "neo";
  inputs."neo-0_1_5".type  = "github";
  inputs."neo-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_6".dir   = "0_1_6";
  inputs."neo-0_1_6".owner = "nim-nix-pkgs";
  inputs."neo-0_1_6".ref   = "master";
  inputs."neo-0_1_6".repo  = "neo";
  inputs."neo-0_1_6".type  = "github";
  inputs."neo-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_1_7".dir   = "0_1_7";
  inputs."neo-0_1_7".owner = "nim-nix-pkgs";
  inputs."neo-0_1_7".ref   = "master";
  inputs."neo-0_1_7".repo  = "neo";
  inputs."neo-0_1_7".type  = "github";
  inputs."neo-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_0".dir   = "0_2_0";
  inputs."neo-0_2_0".owner = "nim-nix-pkgs";
  inputs."neo-0_2_0".ref   = "master";
  inputs."neo-0_2_0".repo  = "neo";
  inputs."neo-0_2_0".type  = "github";
  inputs."neo-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_2".dir   = "0_2_2";
  inputs."neo-0_2_2".owner = "nim-nix-pkgs";
  inputs."neo-0_2_2".ref   = "master";
  inputs."neo-0_2_2".repo  = "neo";
  inputs."neo-0_2_2".type  = "github";
  inputs."neo-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_3".dir   = "0_2_3";
  inputs."neo-0_2_3".owner = "nim-nix-pkgs";
  inputs."neo-0_2_3".ref   = "master";
  inputs."neo-0_2_3".repo  = "neo";
  inputs."neo-0_2_3".type  = "github";
  inputs."neo-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_4".dir   = "0_2_4";
  inputs."neo-0_2_4".owner = "nim-nix-pkgs";
  inputs."neo-0_2_4".ref   = "master";
  inputs."neo-0_2_4".repo  = "neo";
  inputs."neo-0_2_4".type  = "github";
  inputs."neo-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_2_5".dir   = "0_2_5";
  inputs."neo-0_2_5".owner = "nim-nix-pkgs";
  inputs."neo-0_2_5".ref   = "master";
  inputs."neo-0_2_5".repo  = "neo";
  inputs."neo-0_2_5".type  = "github";
  inputs."neo-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_0".dir   = "0_3_0";
  inputs."neo-0_3_0".owner = "nim-nix-pkgs";
  inputs."neo-0_3_0".ref   = "master";
  inputs."neo-0_3_0".repo  = "neo";
  inputs."neo-0_3_0".type  = "github";
  inputs."neo-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_1".dir   = "0_3_1";
  inputs."neo-0_3_1".owner = "nim-nix-pkgs";
  inputs."neo-0_3_1".ref   = "master";
  inputs."neo-0_3_1".repo  = "neo";
  inputs."neo-0_3_1".type  = "github";
  inputs."neo-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_2".dir   = "0_3_2";
  inputs."neo-0_3_2".owner = "nim-nix-pkgs";
  inputs."neo-0_3_2".ref   = "master";
  inputs."neo-0_3_2".repo  = "neo";
  inputs."neo-0_3_2".type  = "github";
  inputs."neo-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo-0_3_3".dir   = "0_3_3";
  inputs."neo-0_3_3".owner = "nim-nix-pkgs";
  inputs."neo-0_3_3".ref   = "master";
  inputs."neo-0_3_3".repo  = "neo";
  inputs."neo-0_3_3".type  = "github";
  inputs."neo-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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