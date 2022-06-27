{
  description = ''C/C++ interop for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimterop-master".dir   = "master";
  inputs."nimterop-master".owner = "nim-nix-pkgs";
  inputs."nimterop-master".ref   = "master";
  inputs."nimterop-master".repo  = "nimterop";
  inputs."nimterop-master".type  = "github";
  inputs."nimterop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_1_0".dir   = "v0_1_0";
  inputs."nimterop-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_1_0".ref   = "master";
  inputs."nimterop-v0_1_0".repo  = "nimterop";
  inputs."nimterop-v0_1_0".type  = "github";
  inputs."nimterop-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_2_0".dir   = "v0_2_0";
  inputs."nimterop-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_2_0".ref   = "master";
  inputs."nimterop-v0_2_0".repo  = "nimterop";
  inputs."nimterop-v0_2_0".type  = "github";
  inputs."nimterop-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_2_1".dir   = "v0_2_1";
  inputs."nimterop-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_2_1".ref   = "master";
  inputs."nimterop-v0_2_1".repo  = "nimterop";
  inputs."nimterop-v0_2_1".type  = "github";
  inputs."nimterop-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_0".dir   = "v0_3_0";
  inputs."nimterop-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_0".ref   = "master";
  inputs."nimterop-v0_3_0".repo  = "nimterop";
  inputs."nimterop-v0_3_0".type  = "github";
  inputs."nimterop-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_1".dir   = "v0_3_1";
  inputs."nimterop-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_1".ref   = "master";
  inputs."nimterop-v0_3_1".repo  = "nimterop";
  inputs."nimterop-v0_3_1".type  = "github";
  inputs."nimterop-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_2".dir   = "v0_3_2";
  inputs."nimterop-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_2".ref   = "master";
  inputs."nimterop-v0_3_2".repo  = "nimterop";
  inputs."nimterop-v0_3_2".type  = "github";
  inputs."nimterop-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_3".dir   = "v0_3_3";
  inputs."nimterop-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_3".ref   = "master";
  inputs."nimterop-v0_3_3".repo  = "nimterop";
  inputs."nimterop-v0_3_3".type  = "github";
  inputs."nimterop-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_4".dir   = "v0_3_4";
  inputs."nimterop-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_4".ref   = "master";
  inputs."nimterop-v0_3_4".repo  = "nimterop";
  inputs."nimterop-v0_3_4".type  = "github";
  inputs."nimterop-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_5".dir   = "v0_3_5";
  inputs."nimterop-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_5".ref   = "master";
  inputs."nimterop-v0_3_5".repo  = "nimterop";
  inputs."nimterop-v0_3_5".type  = "github";
  inputs."nimterop-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_3_6".dir   = "v0_3_6";
  inputs."nimterop-v0_3_6".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_3_6".ref   = "master";
  inputs."nimterop-v0_3_6".repo  = "nimterop";
  inputs."nimterop-v0_3_6".type  = "github";
  inputs."nimterop-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_0".dir   = "v0_4_0";
  inputs."nimterop-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_0".ref   = "master";
  inputs."nimterop-v0_4_0".repo  = "nimterop";
  inputs."nimterop-v0_4_0".type  = "github";
  inputs."nimterop-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_1".dir   = "v0_4_1";
  inputs."nimterop-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_1".ref   = "master";
  inputs."nimterop-v0_4_1".repo  = "nimterop";
  inputs."nimterop-v0_4_1".type  = "github";
  inputs."nimterop-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_2".dir   = "v0_4_2";
  inputs."nimterop-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_2".ref   = "master";
  inputs."nimterop-v0_4_2".repo  = "nimterop";
  inputs."nimterop-v0_4_2".type  = "github";
  inputs."nimterop-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_3".dir   = "v0_4_3";
  inputs."nimterop-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_3".ref   = "master";
  inputs."nimterop-v0_4_3".repo  = "nimterop";
  inputs."nimterop-v0_4_3".type  = "github";
  inputs."nimterop-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop-v0_4_4".dir   = "v0_4_4";
  inputs."nimterop-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimterop-v0_4_4".ref   = "master";
  inputs."nimterop-v0_4_4".repo  = "nimterop";
  inputs."nimterop-v0_4_4".type  = "github";
  inputs."nimterop-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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