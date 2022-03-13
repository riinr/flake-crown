{
  description = ''`rm` files without fear'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."crap-master".dir   = "master";
  inputs."crap-master".owner = "nim-nix-pkgs";
  inputs."crap-master".ref   = "master";
  inputs."crap-master".repo  = "crap";
  inputs."crap-master".type  = "github";
  inputs."crap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_1_0".dir   = "v0_1_0";
  inputs."crap-v0_1_0".owner = "nim-nix-pkgs";
  inputs."crap-v0_1_0".ref   = "master";
  inputs."crap-v0_1_0".repo  = "crap";
  inputs."crap-v0_1_0".type  = "github";
  inputs."crap-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_1_1".dir   = "v0_1_1";
  inputs."crap-v0_1_1".owner = "nim-nix-pkgs";
  inputs."crap-v0_1_1".ref   = "master";
  inputs."crap-v0_1_1".repo  = "crap";
  inputs."crap-v0_1_1".type  = "github";
  inputs."crap-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_1_2".dir   = "v0_1_2";
  inputs."crap-v0_1_2".owner = "nim-nix-pkgs";
  inputs."crap-v0_1_2".ref   = "master";
  inputs."crap-v0_1_2".repo  = "crap";
  inputs."crap-v0_1_2".type  = "github";
  inputs."crap-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_2_0".dir   = "v0_2_0";
  inputs."crap-v0_2_0".owner = "nim-nix-pkgs";
  inputs."crap-v0_2_0".ref   = "master";
  inputs."crap-v0_2_0".repo  = "crap";
  inputs."crap-v0_2_0".type  = "github";
  inputs."crap-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_2_1".dir   = "v0_2_1";
  inputs."crap-v0_2_1".owner = "nim-nix-pkgs";
  inputs."crap-v0_2_1".ref   = "master";
  inputs."crap-v0_2_1".repo  = "crap";
  inputs."crap-v0_2_1".type  = "github";
  inputs."crap-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_2_2".dir   = "v0_2_2";
  inputs."crap-v0_2_2".owner = "nim-nix-pkgs";
  inputs."crap-v0_2_2".ref   = "master";
  inputs."crap-v0_2_2".repo  = "crap";
  inputs."crap-v0_2_2".type  = "github";
  inputs."crap-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crap-v0_2_3".dir   = "v0_2_3";
  inputs."crap-v0_2_3".owner = "nim-nix-pkgs";
  inputs."crap-v0_2_3".ref   = "master";
  inputs."crap-v0_2_3".repo  = "crap";
  inputs."crap-v0_2_3".type  = "github";
  inputs."crap-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crap-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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