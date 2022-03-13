{
  description = ''Color management utility for X'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xcm-master".dir   = "master";
  inputs."xcm-master".owner = "nim-nix-pkgs";
  inputs."xcm-master".ref   = "master";
  inputs."xcm-master".repo  = "xcm";
  inputs."xcm-master".type  = "github";
  inputs."xcm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xcm-v0_1_0".dir   = "v0_1_0";
  inputs."xcm-v0_1_0".owner = "nim-nix-pkgs";
  inputs."xcm-v0_1_0".ref   = "master";
  inputs."xcm-v0_1_0".repo  = "xcm";
  inputs."xcm-v0_1_0".type  = "github";
  inputs."xcm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xcm-v0_1_1".dir   = "v0_1_1";
  inputs."xcm-v0_1_1".owner = "nim-nix-pkgs";
  inputs."xcm-v0_1_1".ref   = "master";
  inputs."xcm-v0_1_1".repo  = "xcm";
  inputs."xcm-v0_1_1".type  = "github";
  inputs."xcm-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xcm-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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