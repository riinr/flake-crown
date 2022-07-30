{
  description = ''Nim wrapper for the PARI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpari-devel".dir   = "devel";
  inputs."nimpari-devel".owner = "nim-nix-pkgs";
  inputs."nimpari-devel".ref   = "master";
  inputs."nimpari-devel".repo  = "nimpari";
  inputs."nimpari-devel".type  = "github";
  inputs."nimpari-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpari-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpari-master".dir   = "master";
  inputs."nimpari-master".owner = "nim-nix-pkgs";
  inputs."nimpari-master".ref   = "master";
  inputs."nimpari-master".repo  = "nimpari";
  inputs."nimpari-master".type  = "github";
  inputs."nimpari-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpari-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpari-v0_1_0".dir   = "v0_1_0";
  inputs."nimpari-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimpari-v0_1_0".ref   = "master";
  inputs."nimpari-v0_1_0".repo  = "nimpari";
  inputs."nimpari-v0_1_0".type  = "github";
  inputs."nimpari-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpari-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpari-v0_1_1".dir   = "v0_1_1";
  inputs."nimpari-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimpari-v0_1_1".ref   = "master";
  inputs."nimpari-v0_1_1".repo  = "nimpari";
  inputs."nimpari-v0_1_1".type  = "github";
  inputs."nimpari-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpari-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpari-v0_1_2".dir   = "v0_1_2";
  inputs."nimpari-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimpari-v0_1_2".ref   = "master";
  inputs."nimpari-v0_1_2".repo  = "nimpari";
  inputs."nimpari-v0_1_2".type  = "github";
  inputs."nimpari-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpari-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpari-v0_2_0".dir   = "v0_2_0";
  inputs."nimpari-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimpari-v0_2_0".ref   = "master";
  inputs."nimpari-v0_2_0".repo  = "nimpari";
  inputs."nimpari-v0_2_0".type  = "github";
  inputs."nimpari-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpari-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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