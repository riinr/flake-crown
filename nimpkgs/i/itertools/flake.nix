{
  description = ''Itertools for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."itertools-master".dir   = "master";
  inputs."itertools-master".owner = "nim-nix-pkgs";
  inputs."itertools-master".ref   = "master";
  inputs."itertools-master".repo  = "itertools";
  inputs."itertools-master".type  = "github";
  inputs."itertools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_1".dir   = "v0_1";
  inputs."itertools-v0_1".owner = "nim-nix-pkgs";
  inputs."itertools-v0_1".ref   = "master";
  inputs."itertools-v0_1".repo  = "itertools";
  inputs."itertools-v0_1".type  = "github";
  inputs."itertools-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_1_1".dir   = "v0_1_1";
  inputs."itertools-v0_1_1".owner = "nim-nix-pkgs";
  inputs."itertools-v0_1_1".ref   = "master";
  inputs."itertools-v0_1_1".repo  = "itertools";
  inputs."itertools-v0_1_1".type  = "github";
  inputs."itertools-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_2_0".dir   = "v0_2_0";
  inputs."itertools-v0_2_0".owner = "nim-nix-pkgs";
  inputs."itertools-v0_2_0".ref   = "master";
  inputs."itertools-v0_2_0".repo  = "itertools";
  inputs."itertools-v0_2_0".type  = "github";
  inputs."itertools-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_2_1".dir   = "v0_2_1";
  inputs."itertools-v0_2_1".owner = "nim-nix-pkgs";
  inputs."itertools-v0_2_1".ref   = "master";
  inputs."itertools-v0_2_1".repo  = "itertools";
  inputs."itertools-v0_2_1".type  = "github";
  inputs."itertools-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_2_2".dir   = "v0_2_2";
  inputs."itertools-v0_2_2".owner = "nim-nix-pkgs";
  inputs."itertools-v0_2_2".ref   = "master";
  inputs."itertools-v0_2_2".repo  = "itertools";
  inputs."itertools-v0_2_2".type  = "github";
  inputs."itertools-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_3_0".dir   = "v0_3_0";
  inputs."itertools-v0_3_0".owner = "nim-nix-pkgs";
  inputs."itertools-v0_3_0".ref   = "master";
  inputs."itertools-v0_3_0".repo  = "itertools";
  inputs."itertools-v0_3_0".type  = "github";
  inputs."itertools-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_3_1".dir   = "v0_3_1";
  inputs."itertools-v0_3_1".owner = "nim-nix-pkgs";
  inputs."itertools-v0_3_1".ref   = "master";
  inputs."itertools-v0_3_1".repo  = "itertools";
  inputs."itertools-v0_3_1".type  = "github";
  inputs."itertools-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools-v0_4_0".dir   = "v0_4_0";
  inputs."itertools-v0_4_0".owner = "nim-nix-pkgs";
  inputs."itertools-v0_4_0".ref   = "master";
  inputs."itertools-v0_4_0".repo  = "itertools";
  inputs."itertools-v0_4_0".type  = "github";
  inputs."itertools-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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