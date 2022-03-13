{
  description = ''A high-level image I/O and manipulation library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."inumon-master".dir   = "master";
  inputs."inumon-master".owner = "nim-nix-pkgs";
  inputs."inumon-master".ref   = "master";
  inputs."inumon-master".repo  = "inumon";
  inputs."inumon-master".type  = "github";
  inputs."inumon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inumon-v0_1_2".dir   = "v0_1_2";
  inputs."inumon-v0_1_2".owner = "nim-nix-pkgs";
  inputs."inumon-v0_1_2".ref   = "master";
  inputs."inumon-v0_1_2".repo  = "inumon";
  inputs."inumon-v0_1_2".type  = "github";
  inputs."inumon-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inumon-v0_2_2".dir   = "v0_2_2";
  inputs."inumon-v0_2_2".owner = "nim-nix-pkgs";
  inputs."inumon-v0_2_2".ref   = "master";
  inputs."inumon-v0_2_2".repo  = "inumon";
  inputs."inumon-v0_2_2".type  = "github";
  inputs."inumon-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inumon-v0_2_3".dir   = "v0_2_3";
  inputs."inumon-v0_2_3".owner = "nim-nix-pkgs";
  inputs."inumon-v0_2_3".ref   = "master";
  inputs."inumon-v0_2_3".repo  = "inumon";
  inputs."inumon-v0_2_3".type  = "github";
  inputs."inumon-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inumon-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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