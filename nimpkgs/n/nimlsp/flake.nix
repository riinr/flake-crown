{
  description = ''Language Server Protocol implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlsp-master".dir   = "master";
  inputs."nimlsp-master".owner = "nim-nix-pkgs";
  inputs."nimlsp-master".ref   = "master";
  inputs."nimlsp-master".repo  = "nimlsp";
  inputs."nimlsp-master".type  = "github";
  inputs."nimlsp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_0".dir   = "v0_2_0";
  inputs."nimlsp-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_2_0".ref   = "master";
  inputs."nimlsp-v0_2_0".repo  = "nimlsp";
  inputs."nimlsp-v0_2_0".type  = "github";
  inputs."nimlsp-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_1".dir   = "v0_2_1";
  inputs."nimlsp-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_2_1".ref   = "master";
  inputs."nimlsp-v0_2_1".repo  = "nimlsp";
  inputs."nimlsp-v0_2_1".type  = "github";
  inputs."nimlsp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_2".dir   = "v0_2_2";
  inputs."nimlsp-v0_2_2".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_2_2".ref   = "master";
  inputs."nimlsp-v0_2_2".repo  = "nimlsp";
  inputs."nimlsp-v0_2_2".type  = "github";
  inputs."nimlsp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_3".dir   = "v0_2_3";
  inputs."nimlsp-v0_2_3".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_2_3".ref   = "master";
  inputs."nimlsp-v0_2_3".repo  = "nimlsp";
  inputs."nimlsp-v0_2_3".type  = "github";
  inputs."nimlsp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_4".dir   = "v0_2_4";
  inputs."nimlsp-v0_2_4".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_2_4".ref   = "master";
  inputs."nimlsp-v0_2_4".repo  = "nimlsp";
  inputs."nimlsp-v0_2_4".type  = "github";
  inputs."nimlsp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_2_6".dir   = "v0_2_6";
  inputs."nimlsp-v0_2_6".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_2_6".ref   = "master";
  inputs."nimlsp-v0_2_6".repo  = "nimlsp";
  inputs."nimlsp-v0_2_6".type  = "github";
  inputs."nimlsp-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_3_2".dir   = "v0_3_2";
  inputs."nimlsp-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_3_2".ref   = "master";
  inputs."nimlsp-v0_3_2".repo  = "nimlsp";
  inputs."nimlsp-v0_3_2".type  = "github";
  inputs."nimlsp-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_4_0".dir   = "v0_4_0";
  inputs."nimlsp-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_4_0".ref   = "master";
  inputs."nimlsp-v0_4_0".repo  = "nimlsp";
  inputs."nimlsp-v0_4_0".type  = "github";
  inputs."nimlsp-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlsp-v0_4_1".dir   = "v0_4_1";
  inputs."nimlsp-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimlsp-v0_4_1".ref   = "master";
  inputs."nimlsp-v0_4_1".repo  = "nimlsp";
  inputs."nimlsp-v0_4_1".type  = "github";
  inputs."nimlsp-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlsp-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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