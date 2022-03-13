{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."runeterra_decks-master".dir   = "master";
  inputs."runeterra_decks-master".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-master".ref   = "master";
  inputs."runeterra_decks-master".repo  = "runeterra_decks";
  inputs."runeterra_decks-master".type  = "github";
  inputs."runeterra_decks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_1_0".dir   = "v0_1_0";
  inputs."runeterra_decks-v0_1_0".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_1_0".ref   = "master";
  inputs."runeterra_decks-v0_1_0".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_1_0".type  = "github";
  inputs."runeterra_decks-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_0".dir   = "v0_2_0";
  inputs."runeterra_decks-v0_2_0".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_2_0".ref   = "master";
  inputs."runeterra_decks-v0_2_0".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_2_0".type  = "github";
  inputs."runeterra_decks-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_1".dir   = "v0_2_1";
  inputs."runeterra_decks-v0_2_1".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_2_1".ref   = "master";
  inputs."runeterra_decks-v0_2_1".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_2_1".type  = "github";
  inputs."runeterra_decks-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_2".dir   = "v0_2_2";
  inputs."runeterra_decks-v0_2_2".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_2_2".ref   = "master";
  inputs."runeterra_decks-v0_2_2".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_2_2".type  = "github";
  inputs."runeterra_decks-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_3".dir   = "v0_2_3";
  inputs."runeterra_decks-v0_2_3".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_2_3".ref   = "master";
  inputs."runeterra_decks-v0_2_3".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_2_3".type  = "github";
  inputs."runeterra_decks-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_4_0".dir   = "v0_4_0";
  inputs."runeterra_decks-v0_4_0".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_4_0".ref   = "master";
  inputs."runeterra_decks-v0_4_0".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_4_0".type  = "github";
  inputs."runeterra_decks-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_5_0".dir   = "v0_5_0";
  inputs."runeterra_decks-v0_5_0".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_5_0".ref   = "master";
  inputs."runeterra_decks-v0_5_0".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_5_0".type  = "github";
  inputs."runeterra_decks-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_5_1".dir   = "v0_5_1";
  inputs."runeterra_decks-v0_5_1".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_5_1".ref   = "master";
  inputs."runeterra_decks-v0_5_1".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_5_1".type  = "github";
  inputs."runeterra_decks-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_6_0".dir   = "v0_6_0";
  inputs."runeterra_decks-v0_6_0".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_6_0".ref   = "master";
  inputs."runeterra_decks-v0_6_0".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_6_0".type  = "github";
  inputs."runeterra_decks-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_6_1".dir   = "v0_6_1";
  inputs."runeterra_decks-v0_6_1".owner = "nim-nix-pkgs";
  inputs."runeterra_decks-v0_6_1".ref   = "master";
  inputs."runeterra_decks-v0_6_1".repo  = "runeterra_decks";
  inputs."runeterra_decks-v0_6_1".type  = "github";
  inputs."runeterra_decks-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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