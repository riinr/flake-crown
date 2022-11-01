{
  description = ''Simple DNS server for local development.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lodns-main".dir   = "main";
  inputs."lodns-main".owner = "nim-nix-pkgs";
  inputs."lodns-main".ref   = "master";
  inputs."lodns-main".repo  = "lodns";
  inputs."lodns-main".type  = "github";
  inputs."lodns-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lodns-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lodns-0_1_0".dir   = "0_1_0";
  inputs."lodns-0_1_0".owner = "nim-nix-pkgs";
  inputs."lodns-0_1_0".ref   = "master";
  inputs."lodns-0_1_0".repo  = "lodns";
  inputs."lodns-0_1_0".type  = "github";
  inputs."lodns-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lodns-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lodns-0_1_1".dir   = "0_1_1";
  inputs."lodns-0_1_1".owner = "nim-nix-pkgs";
  inputs."lodns-0_1_1".ref   = "master";
  inputs."lodns-0_1_1".repo  = "lodns";
  inputs."lodns-0_1_1".type  = "github";
  inputs."lodns-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lodns-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lodns-0_1_2".dir   = "0_1_2";
  inputs."lodns-0_1_2".owner = "nim-nix-pkgs";
  inputs."lodns-0_1_2".ref   = "master";
  inputs."lodns-0_1_2".repo  = "lodns";
  inputs."lodns-0_1_2".type  = "github";
  inputs."lodns-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lodns-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lodns-0_1_3".dir   = "0_1_3";
  inputs."lodns-0_1_3".owner = "nim-nix-pkgs";
  inputs."lodns-0_1_3".ref   = "master";
  inputs."lodns-0_1_3".repo  = "lodns";
  inputs."lodns-0_1_3".type  = "github";
  inputs."lodns-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lodns-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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