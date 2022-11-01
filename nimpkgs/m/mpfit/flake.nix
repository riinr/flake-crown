{
  description = ''A wrapper for the cMPFIT non-linear least squares fitting library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpfit-master".dir   = "master";
  inputs."mpfit-master".owner = "nim-nix-pkgs";
  inputs."mpfit-master".ref   = "master";
  inputs."mpfit-master".repo  = "mpfit";
  inputs."mpfit-master".type  = "github";
  inputs."mpfit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpfit-v0_1_1".dir   = "v0_1_1";
  inputs."mpfit-v0_1_1".owner = "nim-nix-pkgs";
  inputs."mpfit-v0_1_1".ref   = "master";
  inputs."mpfit-v0_1_1".repo  = "mpfit";
  inputs."mpfit-v0_1_1".type  = "github";
  inputs."mpfit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpfit-v0_1_2".dir   = "v0_1_2";
  inputs."mpfit-v0_1_2".owner = "nim-nix-pkgs";
  inputs."mpfit-v0_1_2".ref   = "master";
  inputs."mpfit-v0_1_2".repo  = "mpfit";
  inputs."mpfit-v0_1_2".type  = "github";
  inputs."mpfit-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpfit-v0_2_0".dir   = "v0_2_0";
  inputs."mpfit-v0_2_0".owner = "nim-nix-pkgs";
  inputs."mpfit-v0_2_0".ref   = "master";
  inputs."mpfit-v0_2_0".repo  = "mpfit";
  inputs."mpfit-v0_2_0".type  = "github";
  inputs."mpfit-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpfit-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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