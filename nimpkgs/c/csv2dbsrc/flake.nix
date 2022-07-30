{
  description = ''create db util sources from csv'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csv2dbsrc-devel".dir   = "devel";
  inputs."csv2dbsrc-devel".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-devel".ref   = "master";
  inputs."csv2dbsrc-devel".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-devel".type  = "github";
  inputs."csv2dbsrc-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-master".dir   = "master";
  inputs."csv2dbsrc-master".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-master".ref   = "master";
  inputs."csv2dbsrc-master".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-master".type  = "github";
  inputs."csv2dbsrc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-v0_1_0".dir   = "v0_1_0";
  inputs."csv2dbsrc-v0_1_0".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-v0_1_0".ref   = "master";
  inputs."csv2dbsrc-v0_1_0".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-v0_1_0".type  = "github";
  inputs."csv2dbsrc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-v0_1_1".dir   = "v0_1_1";
  inputs."csv2dbsrc-v0_1_1".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-v0_1_1".ref   = "master";
  inputs."csv2dbsrc-v0_1_1".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-v0_1_1".type  = "github";
  inputs."csv2dbsrc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-v0_2_0".dir   = "v0_2_0";
  inputs."csv2dbsrc-v0_2_0".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-v0_2_0".ref   = "master";
  inputs."csv2dbsrc-v0_2_0".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-v0_2_0".type  = "github";
  inputs."csv2dbsrc-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-v0_2_1".dir   = "v0_2_1";
  inputs."csv2dbsrc-v0_2_1".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-v0_2_1".ref   = "master";
  inputs."csv2dbsrc-v0_2_1".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-v0_2_1".type  = "github";
  inputs."csv2dbsrc-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-v0_2_2".dir   = "v0_2_2";
  inputs."csv2dbsrc-v0_2_2".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-v0_2_2".ref   = "master";
  inputs."csv2dbsrc-v0_2_2".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-v0_2_2".type  = "github";
  inputs."csv2dbsrc-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csv2dbsrc-v0_2_3".dir   = "v0_2_3";
  inputs."csv2dbsrc-v0_2_3".owner = "nim-nix-pkgs";
  inputs."csv2dbsrc-v0_2_3".ref   = "master";
  inputs."csv2dbsrc-v0_2_3".repo  = "csv2dbsrc";
  inputs."csv2dbsrc-v0_2_3".type  = "github";
  inputs."csv2dbsrc-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csv2dbsrc-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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