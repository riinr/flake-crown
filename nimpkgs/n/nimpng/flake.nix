{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpng-master".dir   = "master";
  inputs."nimpng-master".owner = "nim-nix-pkgs";
  inputs."nimpng-master".ref   = "master";
  inputs."nimpng-master".repo  = "nimpng";
  inputs."nimpng-master".type  = "github";
  inputs."nimpng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-0_2_7".dir   = "0_2_7";
  inputs."nimpng-0_2_7".owner = "nim-nix-pkgs";
  inputs."nimpng-0_2_7".ref   = "master";
  inputs."nimpng-0_2_7".repo  = "nimpng";
  inputs."nimpng-0_2_7".type  = "github";
  inputs."nimpng-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-0_3_0".dir   = "0_3_0";
  inputs."nimpng-0_3_0".owner = "nim-nix-pkgs";
  inputs."nimpng-0_3_0".ref   = "master";
  inputs."nimpng-0_3_0".repo  = "nimpng";
  inputs."nimpng-0_3_0".type  = "github";
  inputs."nimpng-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_2_5".dir   = "v0_2_5";
  inputs."nimpng-v0_2_5".owner = "nim-nix-pkgs";
  inputs."nimpng-v0_2_5".ref   = "master";
  inputs."nimpng-v0_2_5".repo  = "nimpng";
  inputs."nimpng-v0_2_5".type  = "github";
  inputs."nimpng-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_2_6".dir   = "v0_2_6";
  inputs."nimpng-v0_2_6".owner = "nim-nix-pkgs";
  inputs."nimpng-v0_2_6".ref   = "master";
  inputs."nimpng-v0_2_6".repo  = "nimpng";
  inputs."nimpng-v0_2_6".type  = "github";
  inputs."nimpng-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_3_1".dir   = "v0_3_1";
  inputs."nimpng-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimpng-v0_3_1".ref   = "master";
  inputs."nimpng-v0_3_1".repo  = "nimpng";
  inputs."nimpng-v0_3_1".type  = "github";
  inputs."nimpng-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_3_2".dir   = "v0_3_2";
  inputs."nimpng-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimpng-v0_3_2".ref   = "master";
  inputs."nimpng-v0_3_2".repo  = "nimpng";
  inputs."nimpng-v0_3_2".type  = "github";
  inputs."nimpng-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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