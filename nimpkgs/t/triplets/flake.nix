{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."triplets-master".dir   = "master";
  inputs."triplets-master".owner = "nim-nix-pkgs";
  inputs."triplets-master".ref   = "master";
  inputs."triplets-master".repo  = "triplets";
  inputs."triplets-master".type  = "github";
  inputs."triplets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_1".dir   = "0_0_1";
  inputs."triplets-0_0_1".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_1".ref   = "master";
  inputs."triplets-0_0_1".repo  = "triplets";
  inputs."triplets-0_0_1".type  = "github";
  inputs."triplets-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_2".dir   = "0_0_2";
  inputs."triplets-0_0_2".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_2".ref   = "master";
  inputs."triplets-0_0_2".repo  = "triplets";
  inputs."triplets-0_0_2".type  = "github";
  inputs."triplets-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_3".dir   = "0_0_3";
  inputs."triplets-0_0_3".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_3".ref   = "master";
  inputs."triplets-0_0_3".repo  = "triplets";
  inputs."triplets-0_0_3".type  = "github";
  inputs."triplets-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_4".dir   = "0_0_4";
  inputs."triplets-0_0_4".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_4".ref   = "master";
  inputs."triplets-0_0_4".repo  = "triplets";
  inputs."triplets-0_0_4".type  = "github";
  inputs."triplets-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_5".dir   = "0_0_5";
  inputs."triplets-0_0_5".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_5".ref   = "master";
  inputs."triplets-0_0_5".repo  = "triplets";
  inputs."triplets-0_0_5".type  = "github";
  inputs."triplets-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_6".dir   = "0_0_6";
  inputs."triplets-0_0_6".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_6".ref   = "master";
  inputs."triplets-0_0_6".repo  = "triplets";
  inputs."triplets-0_0_6".type  = "github";
  inputs."triplets-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_7".dir   = "0_0_7";
  inputs."triplets-0_0_7".owner = "nim-nix-pkgs";
  inputs."triplets-0_0_7".ref   = "master";
  inputs."triplets-0_0_7".repo  = "triplets";
  inputs."triplets-0_0_7".type  = "github";
  inputs."triplets-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_1_0".dir   = "0_1_0";
  inputs."triplets-0_1_0".owner = "nim-nix-pkgs";
  inputs."triplets-0_1_0".ref   = "master";
  inputs."triplets-0_1_0".repo  = "triplets";
  inputs."triplets-0_1_0".type  = "github";
  inputs."triplets-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_1_1".dir   = "0_1_1";
  inputs."triplets-0_1_1".owner = "nim-nix-pkgs";
  inputs."triplets-0_1_1".ref   = "master";
  inputs."triplets-0_1_1".repo  = "triplets";
  inputs."triplets-0_1_1".type  = "github";
  inputs."triplets-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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