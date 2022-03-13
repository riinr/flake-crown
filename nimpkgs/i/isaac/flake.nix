{
  description = ''ISAAC PRNG implementation on Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."isaac-master".dir   = "master";
  inputs."isaac-master".owner = "nim-nix-pkgs";
  inputs."isaac-master".ref   = "master";
  inputs."isaac-master".repo  = "isaac";
  inputs."isaac-master".type  = "github";
  inputs."isaac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isaac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isaac-v0_1_1".dir   = "v0_1_1";
  inputs."isaac-v0_1_1".owner = "nim-nix-pkgs";
  inputs."isaac-v0_1_1".ref   = "master";
  inputs."isaac-v0_1_1".repo  = "isaac";
  inputs."isaac-v0_1_1".type  = "github";
  inputs."isaac-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isaac-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isaac-v0_1_2".dir   = "v0_1_2";
  inputs."isaac-v0_1_2".owner = "nim-nix-pkgs";
  inputs."isaac-v0_1_2".ref   = "master";
  inputs."isaac-v0_1_2".repo  = "isaac";
  inputs."isaac-v0_1_2".type  = "github";
  inputs."isaac-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isaac-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."isaac-v0_1_3".dir   = "v0_1_3";
  inputs."isaac-v0_1_3".owner = "nim-nix-pkgs";
  inputs."isaac-v0_1_3".ref   = "master";
  inputs."isaac-v0_1_3".repo  = "isaac";
  inputs."isaac-v0_1_3".type  = "github";
  inputs."isaac-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isaac-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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