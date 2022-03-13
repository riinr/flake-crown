{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csfml-master".dir   = "master";
  inputs."csfml-master".owner = "nim-nix-pkgs";
  inputs."csfml-master".ref   = "master";
  inputs."csfml-master".repo  = "csfml";
  inputs."csfml-master".type  = "github";
  inputs."csfml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_0".dir   = "v2_1_0";
  inputs."csfml-v2_1_0".owner = "nim-nix-pkgs";
  inputs."csfml-v2_1_0".ref   = "master";
  inputs."csfml-v2_1_0".repo  = "csfml";
  inputs."csfml-v2_1_0".type  = "github";
  inputs."csfml-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_1".dir   = "v2_1_1";
  inputs."csfml-v2_1_1".owner = "nim-nix-pkgs";
  inputs."csfml-v2_1_1".ref   = "master";
  inputs."csfml-v2_1_1".repo  = "csfml";
  inputs."csfml-v2_1_1".type  = "github";
  inputs."csfml-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_2".dir   = "v2_1_2";
  inputs."csfml-v2_1_2".owner = "nim-nix-pkgs";
  inputs."csfml-v2_1_2".ref   = "master";
  inputs."csfml-v2_1_2".repo  = "csfml";
  inputs."csfml-v2_1_2".type  = "github";
  inputs."csfml-v2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_3".dir   = "v2_1_3";
  inputs."csfml-v2_1_3".owner = "nim-nix-pkgs";
  inputs."csfml-v2_1_3".ref   = "master";
  inputs."csfml-v2_1_3".repo  = "csfml";
  inputs."csfml-v2_1_3".type  = "github";
  inputs."csfml-v2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_2_0".dir   = "v2_2_0";
  inputs."csfml-v2_2_0".owner = "nim-nix-pkgs";
  inputs."csfml-v2_2_0".ref   = "master";
  inputs."csfml-v2_2_0".repo  = "csfml";
  inputs."csfml-v2_2_0".type  = "github";
  inputs."csfml-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_3_0".dir   = "v2_3_0";
  inputs."csfml-v2_3_0".owner = "nim-nix-pkgs";
  inputs."csfml-v2_3_0".ref   = "master";
  inputs."csfml-v2_3_0".repo  = "csfml";
  inputs."csfml-v2_3_0".type  = "github";
  inputs."csfml-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_3_1".dir   = "v2_3_1";
  inputs."csfml-v2_3_1".owner = "nim-nix-pkgs";
  inputs."csfml-v2_3_1".ref   = "master";
  inputs."csfml-v2_3_1".repo  = "csfml";
  inputs."csfml-v2_3_1".type  = "github";
  inputs."csfml-v2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_4_0".dir   = "v2_4_0";
  inputs."csfml-v2_4_0".owner = "nim-nix-pkgs";
  inputs."csfml-v2_4_0".ref   = "master";
  inputs."csfml-v2_4_0".repo  = "csfml";
  inputs."csfml-v2_4_0".type  = "github";
  inputs."csfml-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_5_0".dir   = "v2_5_0";
  inputs."csfml-v2_5_0".owner = "nim-nix-pkgs";
  inputs."csfml-v2_5_0".ref   = "master";
  inputs."csfml-v2_5_0".repo  = "csfml";
  inputs."csfml-v2_5_0".type  = "github";
  inputs."csfml-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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