{
  description = ''Utility macros for easier handling of options in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."optionsutils-master".dir   = "master";
  inputs."optionsutils-master".owner = "nim-nix-pkgs";
  inputs."optionsutils-master".ref   = "master";
  inputs."optionsutils-master".repo  = "optionsutils";
  inputs."optionsutils-master".type  = "github";
  inputs."optionsutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_1_0".dir   = "v1_1_0";
  inputs."optionsutils-v1_1_0".owner = "nim-nix-pkgs";
  inputs."optionsutils-v1_1_0".ref   = "master";
  inputs."optionsutils-v1_1_0".repo  = "optionsutils";
  inputs."optionsutils-v1_1_0".type  = "github";
  inputs."optionsutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_1_1".dir   = "v1_1_1";
  inputs."optionsutils-v1_1_1".owner = "nim-nix-pkgs";
  inputs."optionsutils-v1_1_1".ref   = "master";
  inputs."optionsutils-v1_1_1".repo  = "optionsutils";
  inputs."optionsutils-v1_1_1".type  = "github";
  inputs."optionsutils-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_1_2".dir   = "v1_1_2";
  inputs."optionsutils-v1_1_2".owner = "nim-nix-pkgs";
  inputs."optionsutils-v1_1_2".ref   = "master";
  inputs."optionsutils-v1_1_2".repo  = "optionsutils";
  inputs."optionsutils-v1_1_2".type  = "github";
  inputs."optionsutils-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_2_0".dir   = "v1_2_0";
  inputs."optionsutils-v1_2_0".owner = "nim-nix-pkgs";
  inputs."optionsutils-v1_2_0".ref   = "master";
  inputs."optionsutils-v1_2_0".repo  = "optionsutils";
  inputs."optionsutils-v1_2_0".type  = "github";
  inputs."optionsutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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