{
  description = ''Binary serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bingo-master".dir   = "master";
  inputs."bingo-master".owner = "nim-nix-pkgs";
  inputs."bingo-master".ref   = "master";
  inputs."bingo-master".repo  = "bingo";
  inputs."bingo-master".type  = "github";
  inputs."bingo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingod-v0_0_1".dir   = "v0_0_1";
  inputs."bingod-v0_0_1".owner = "nim-nix-pkgs";
  inputs."bingod-v0_0_1".ref   = "master";
  inputs."bingod-v0_0_1".repo  = "bingod";
  inputs."bingod-v0_0_1".type  = "github";
  inputs."bingod-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingod-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingod-v0_1_0".dir   = "v0_1_0";
  inputs."bingod-v0_1_0".owner = "nim-nix-pkgs";
  inputs."bingod-v0_1_0".ref   = "master";
  inputs."bingod-v0_1_0".repo  = "bingod";
  inputs."bingod-v0_1_0".type  = "github";
  inputs."bingod-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingod-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_2_0".dir   = "v0_2_0";
  inputs."bingo-v0_2_0".owner = "nim-nix-pkgs";
  inputs."bingo-v0_2_0".ref   = "master";
  inputs."bingo-v0_2_0".repo  = "bingo";
  inputs."bingo-v0_2_0".type  = "github";
  inputs."bingo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_2_1".dir   = "v0_2_1";
  inputs."bingo-v0_2_1".owner = "nim-nix-pkgs";
  inputs."bingo-v0_2_1".ref   = "master";
  inputs."bingo-v0_2_1".repo  = "bingo";
  inputs."bingo-v0_2_1".type  = "github";
  inputs."bingo-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_3_0".dir   = "v0_3_0";
  inputs."bingo-v0_3_0".owner = "nim-nix-pkgs";
  inputs."bingo-v0_3_0".ref   = "master";
  inputs."bingo-v0_3_0".repo  = "bingo";
  inputs."bingo-v0_3_0".type  = "github";
  inputs."bingo-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_4_0".dir   = "v0_4_0";
  inputs."bingo-v0_4_0".owner = "nim-nix-pkgs";
  inputs."bingo-v0_4_0".ref   = "master";
  inputs."bingo-v0_4_0".repo  = "bingo";
  inputs."bingo-v0_4_0".type  = "github";
  inputs."bingo-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_4_1".dir   = "v0_4_1";
  inputs."bingo-v0_4_1".owner = "nim-nix-pkgs";
  inputs."bingo-v0_4_1".ref   = "master";
  inputs."bingo-v0_4_1".repo  = "bingo";
  inputs."bingo-v0_4_1".type  = "github";
  inputs."bingo-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bingo-v0_5_0".dir   = "v0_5_0";
  inputs."bingo-v0_5_0".owner = "nim-nix-pkgs";
  inputs."bingo-v0_5_0".ref   = "master";
  inputs."bingo-v0_5_0".repo  = "bingo";
  inputs."bingo-v0_5_0".type  = "github";
  inputs."bingo-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bingo-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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