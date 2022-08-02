{
  description = ''Everything you want to do with colors.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."chroma-master".dir   = "master";
  inputs."chroma-master".owner = "nim-nix-pkgs";
  inputs."chroma-master".ref   = "master";
  inputs."chroma-master".repo  = "chroma";
  inputs."chroma-master".type  = "github";
  inputs."chroma-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_0_1".dir   = "0_0_1";
  inputs."chroma-0_0_1".owner = "nim-nix-pkgs";
  inputs."chroma-0_0_1".ref   = "master";
  inputs."chroma-0_0_1".repo  = "chroma";
  inputs."chroma-0_0_1".type  = "github";
  inputs."chroma-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_0".dir   = "0_1_0";
  inputs."chroma-0_1_0".owner = "nim-nix-pkgs";
  inputs."chroma-0_1_0".ref   = "master";
  inputs."chroma-0_1_0".repo  = "chroma";
  inputs."chroma-0_1_0".type  = "github";
  inputs."chroma-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_1".dir   = "0_1_1";
  inputs."chroma-0_1_1".owner = "nim-nix-pkgs";
  inputs."chroma-0_1_1".ref   = "master";
  inputs."chroma-0_1_1".repo  = "chroma";
  inputs."chroma-0_1_1".type  = "github";
  inputs."chroma-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_2".dir   = "0_1_2";
  inputs."chroma-0_1_2".owner = "nim-nix-pkgs";
  inputs."chroma-0_1_2".ref   = "master";
  inputs."chroma-0_1_2".repo  = "chroma";
  inputs."chroma-0_1_2".type  = "github";
  inputs."chroma-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_3".dir   = "0_1_3";
  inputs."chroma-0_1_3".owner = "nim-nix-pkgs";
  inputs."chroma-0_1_3".ref   = "master";
  inputs."chroma-0_1_3".repo  = "chroma";
  inputs."chroma-0_1_3".type  = "github";
  inputs."chroma-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_4".dir   = "0_1_4";
  inputs."chroma-0_1_4".owner = "nim-nix-pkgs";
  inputs."chroma-0_1_4".ref   = "master";
  inputs."chroma-0_1_4".repo  = "chroma";
  inputs."chroma-0_1_4".type  = "github";
  inputs."chroma-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_1_5".dir   = "0_1_5";
  inputs."chroma-0_1_5".owner = "nim-nix-pkgs";
  inputs."chroma-0_1_5".ref   = "master";
  inputs."chroma-0_1_5".repo  = "chroma";
  inputs."chroma-0_1_5".type  = "github";
  inputs."chroma-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_1".dir   = "0_2_1";
  inputs."chroma-0_2_1".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_1".ref   = "master";
  inputs."chroma-0_2_1".repo  = "chroma";
  inputs."chroma-0_2_1".type  = "github";
  inputs."chroma-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_2".dir   = "0_2_2";
  inputs."chroma-0_2_2".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_2".ref   = "master";
  inputs."chroma-0_2_2".repo  = "chroma";
  inputs."chroma-0_2_2".type  = "github";
  inputs."chroma-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_3".dir   = "0_2_3";
  inputs."chroma-0_2_3".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_3".ref   = "master";
  inputs."chroma-0_2_3".repo  = "chroma";
  inputs."chroma-0_2_3".type  = "github";
  inputs."chroma-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_4".dir   = "0_2_4";
  inputs."chroma-0_2_4".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_4".ref   = "master";
  inputs."chroma-0_2_4".repo  = "chroma";
  inputs."chroma-0_2_4".type  = "github";
  inputs."chroma-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_5".dir   = "0_2_5";
  inputs."chroma-0_2_5".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_5".ref   = "master";
  inputs."chroma-0_2_5".repo  = "chroma";
  inputs."chroma-0_2_5".type  = "github";
  inputs."chroma-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_6".dir   = "0_2_6";
  inputs."chroma-0_2_6".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_6".ref   = "master";
  inputs."chroma-0_2_6".repo  = "chroma";
  inputs."chroma-0_2_6".type  = "github";
  inputs."chroma-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-0_2_7".dir   = "0_2_7";
  inputs."chroma-0_2_7".owner = "nim-nix-pkgs";
  inputs."chroma-0_2_7".ref   = "master";
  inputs."chroma-0_2_7".repo  = "chroma";
  inputs."chroma-0_2_7".type  = "github";
  inputs."chroma-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma-v0_1_0".dir   = "v0_1_0";
  inputs."chroma-v0_1_0".owner = "nim-nix-pkgs";
  inputs."chroma-v0_1_0".ref   = "master";
  inputs."chroma-v0_1_0".repo  = "chroma";
  inputs."chroma-v0_1_0".type  = "github";
  inputs."chroma-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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