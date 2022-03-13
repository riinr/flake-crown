{
  description = ''A highlighter for diff -u-like output & port of Python difflib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hldiff-master".dir   = "master";
  inputs."hldiff-master".owner = "nim-nix-pkgs";
  inputs."hldiff-master".ref   = "master";
  inputs."hldiff-master".repo  = "hldiff";
  inputs."hldiff-master".type  = "github";
  inputs."hldiff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_1".dir   = "v0_1";
  inputs."hldiff-v0_1".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_1".ref   = "master";
  inputs."hldiff-v0_1".repo  = "hldiff";
  inputs."hldiff-v0_1".type  = "github";
  inputs."hldiff-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_2".dir   = "v0_2";
  inputs."hldiff-v0_2".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_2".ref   = "master";
  inputs."hldiff-v0_2".repo  = "hldiff";
  inputs."hldiff-v0_2".type  = "github";
  inputs."hldiff-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_3".dir   = "v0_3";
  inputs."hldiff-v0_3".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_3".ref   = "master";
  inputs."hldiff-v0_3".repo  = "hldiff";
  inputs."hldiff-v0_3".type  = "github";
  inputs."hldiff-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_4".dir   = "v0_4";
  inputs."hldiff-v0_4".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_4".ref   = "master";
  inputs."hldiff-v0_4".repo  = "hldiff";
  inputs."hldiff-v0_4".type  = "github";
  inputs."hldiff-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_5".dir   = "v0_5";
  inputs."hldiff-v0_5".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_5".ref   = "master";
  inputs."hldiff-v0_5".repo  = "hldiff";
  inputs."hldiff-v0_5".type  = "github";
  inputs."hldiff-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_6".dir   = "v0_6";
  inputs."hldiff-v0_6".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_6".ref   = "master";
  inputs."hldiff-v0_6".repo  = "hldiff";
  inputs."hldiff-v0_6".type  = "github";
  inputs."hldiff-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_7".dir   = "v0_7";
  inputs."hldiff-v0_7".owner = "nim-nix-pkgs";
  inputs."hldiff-v0_7".ref   = "master";
  inputs."hldiff-v0_7".repo  = "hldiff";
  inputs."hldiff-v0_7".type  = "github";
  inputs."hldiff-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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