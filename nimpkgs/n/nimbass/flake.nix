{
  description = ''Bass wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbass-master".dir   = "master";
  inputs."nimbass-master".owner = "nim-nix-pkgs";
  inputs."nimbass-master".ref   = "master";
  inputs."nimbass-master".repo  = "nimbass";
  inputs."nimbass-master".type  = "github";
  inputs."nimbass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbass-v0_1_0".dir   = "v0_1_0";
  inputs."nimbass-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimbass-v0_1_0".ref   = "master";
  inputs."nimbass-v0_1_0".repo  = "nimbass";
  inputs."nimbass-v0_1_0".type  = "github";
  inputs."nimbass-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbass-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbass-v0_1_2".dir   = "v0_1_2";
  inputs."nimbass-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimbass-v0_1_2".ref   = "master";
  inputs."nimbass-v0_1_2".repo  = "nimbass";
  inputs."nimbass-v0_1_2".type  = "github";
  inputs."nimbass-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbass-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbass-v0_1_3".dir   = "v0_1_3";
  inputs."nimbass-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimbass-v0_1_3".ref   = "master";
  inputs."nimbass-v0_1_3".repo  = "nimbass";
  inputs."nimbass-v0_1_3".type  = "github";
  inputs."nimbass-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbass-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbass-v0_2_0".dir   = "v0_2_0";
  inputs."nimbass-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimbass-v0_2_0".ref   = "master";
  inputs."nimbass-v0_2_0".repo  = "nimbass";
  inputs."nimbass-v0_2_0".type  = "github";
  inputs."nimbass-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbass-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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