{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nordnet-master".dir   = "master";
  inputs."nordnet-master".owner = "nim-nix-pkgs";
  inputs."nordnet-master".ref   = "master";
  inputs."nordnet-master".repo  = "nordnet";
  inputs."nordnet-master".type  = "github";
  inputs."nordnet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_1".dir   = "v0_0_1";
  inputs."nordnet-v0_0_1".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_1".ref   = "master";
  inputs."nordnet-v0_0_1".repo  = "nordnet";
  inputs."nordnet-v0_0_1".type  = "github";
  inputs."nordnet-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_2".dir   = "v0_0_2";
  inputs."nordnet-v0_0_2".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_2".ref   = "master";
  inputs."nordnet-v0_0_2".repo  = "nordnet";
  inputs."nordnet-v0_0_2".type  = "github";
  inputs."nordnet-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_3".dir   = "v0_0_3";
  inputs."nordnet-v0_0_3".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_3".ref   = "master";
  inputs."nordnet-v0_0_3".repo  = "nordnet";
  inputs."nordnet-v0_0_3".type  = "github";
  inputs."nordnet-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_4".dir   = "v0_0_4";
  inputs."nordnet-v0_0_4".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_4".ref   = "master";
  inputs."nordnet-v0_0_4".repo  = "nordnet";
  inputs."nordnet-v0_0_4".type  = "github";
  inputs."nordnet-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_5".dir   = "v0_0_5";
  inputs."nordnet-v0_0_5".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_5".ref   = "master";
  inputs."nordnet-v0_0_5".repo  = "nordnet";
  inputs."nordnet-v0_0_5".type  = "github";
  inputs."nordnet-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_6".dir   = "v0_0_6";
  inputs."nordnet-v0_0_6".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_6".ref   = "master";
  inputs."nordnet-v0_0_6".repo  = "nordnet";
  inputs."nordnet-v0_0_6".type  = "github";
  inputs."nordnet-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nordnet-v0_0_7".dir   = "v0_0_7";
  inputs."nordnet-v0_0_7".owner = "nim-nix-pkgs";
  inputs."nordnet-v0_0_7".ref   = "master";
  inputs."nordnet-v0_0_7".repo  = "nordnet";
  inputs."nordnet-v0_0_7".type  = "github";
  inputs."nordnet-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nordnet-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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