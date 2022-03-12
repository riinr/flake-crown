{
  description = ''Legends of Runeterra deck/card code encoder/decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."runeterra_decks-master".url = "path:./master";
  inputs."runeterra_decks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_1_0".url = "path:./v0_1_0";
  inputs."runeterra_decks-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_0".url = "path:./v0_2_0";
  inputs."runeterra_decks-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_1".url = "path:./v0_2_1";
  inputs."runeterra_decks-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_2".url = "path:./v0_2_2";
  inputs."runeterra_decks-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_2_3".url = "path:./v0_2_3";
  inputs."runeterra_decks-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_4_0".url = "path:./v0_4_0";
  inputs."runeterra_decks-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_5_0".url = "path:./v0_5_0";
  inputs."runeterra_decks-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_5_1".url = "path:./v0_5_1";
  inputs."runeterra_decks-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_6_0".url = "path:./v0_6_0";
  inputs."runeterra_decks-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."runeterra_decks-v0_6_1".url = "path:./v0_6_1";
  inputs."runeterra_decks-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."runeterra_decks-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}