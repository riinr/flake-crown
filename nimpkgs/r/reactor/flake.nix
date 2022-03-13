{
  description = ''Asynchronous networking engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."reactor-master".dir   = "master";
  inputs."reactor-master".owner = "nim-nix-pkgs";
  inputs."reactor-master".ref   = "master";
  inputs."reactor-master".repo  = "reactor";
  inputs."reactor-master".type  = "github";
  inputs."reactor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_0_1".dir   = "v0_0_1";
  inputs."reactor-v0_0_1".owner = "nim-nix-pkgs";
  inputs."reactor-v0_0_1".ref   = "master";
  inputs."reactor-v0_0_1".repo  = "reactor";
  inputs."reactor-v0_0_1".type  = "github";
  inputs."reactor-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_3_0".dir   = "v0_3_0";
  inputs."reactor-v0_3_0".owner = "nim-nix-pkgs";
  inputs."reactor-v0_3_0".ref   = "master";
  inputs."reactor-v0_3_0".repo  = "reactor";
  inputs."reactor-v0_3_0".type  = "github";
  inputs."reactor-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_3_1".dir   = "v0_3_1";
  inputs."reactor-v0_3_1".owner = "nim-nix-pkgs";
  inputs."reactor-v0_3_1".ref   = "master";
  inputs."reactor-v0_3_1".repo  = "reactor";
  inputs."reactor-v0_3_1".type  = "github";
  inputs."reactor-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_3_2".dir   = "v0_3_2";
  inputs."reactor-v0_3_2".owner = "nim-nix-pkgs";
  inputs."reactor-v0_3_2".ref   = "master";
  inputs."reactor-v0_3_2".repo  = "reactor";
  inputs."reactor-v0_3_2".type  = "github";
  inputs."reactor-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_0".dir   = "v0_4_0";
  inputs."reactor-v0_4_0".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_0".ref   = "master";
  inputs."reactor-v0_4_0".repo  = "reactor";
  inputs."reactor-v0_4_0".type  = "github";
  inputs."reactor-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_1".dir   = "v0_4_1";
  inputs."reactor-v0_4_1".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_1".ref   = "master";
  inputs."reactor-v0_4_1".repo  = "reactor";
  inputs."reactor-v0_4_1".type  = "github";
  inputs."reactor-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_2".dir   = "v0_4_2";
  inputs."reactor-v0_4_2".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_2".ref   = "master";
  inputs."reactor-v0_4_2".repo  = "reactor";
  inputs."reactor-v0_4_2".type  = "github";
  inputs."reactor-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_3".dir   = "v0_4_3";
  inputs."reactor-v0_4_3".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_3".ref   = "master";
  inputs."reactor-v0_4_3".repo  = "reactor";
  inputs."reactor-v0_4_3".type  = "github";
  inputs."reactor-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_4".dir   = "v0_4_4";
  inputs."reactor-v0_4_4".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_4".ref   = "master";
  inputs."reactor-v0_4_4".repo  = "reactor";
  inputs."reactor-v0_4_4".type  = "github";
  inputs."reactor-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_5".dir   = "v0_4_5";
  inputs."reactor-v0_4_5".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_5".ref   = "master";
  inputs."reactor-v0_4_5".repo  = "reactor";
  inputs."reactor-v0_4_5".type  = "github";
  inputs."reactor-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_6".dir   = "v0_4_6";
  inputs."reactor-v0_4_6".owner = "nim-nix-pkgs";
  inputs."reactor-v0_4_6".ref   = "master";
  inputs."reactor-v0_4_6".repo  = "reactor";
  inputs."reactor-v0_4_6".type  = "github";
  inputs."reactor-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_5_0".dir   = "v0_5_0";
  inputs."reactor-v0_5_0".owner = "nim-nix-pkgs";
  inputs."reactor-v0_5_0".ref   = "master";
  inputs."reactor-v0_5_0".repo  = "reactor";
  inputs."reactor-v0_5_0".type  = "github";
  inputs."reactor-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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