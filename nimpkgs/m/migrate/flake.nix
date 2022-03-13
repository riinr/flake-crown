{
  description = ''A simple database migration utility for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."migrate-master".dir   = "master";
  inputs."migrate-master".owner = "nim-nix-pkgs";
  inputs."migrate-master".ref   = "master";
  inputs."migrate-master".repo  = "migrate";
  inputs."migrate-master".type  = "github";
  inputs."migrate-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."migrate-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."migrate-v1_0_0".dir   = "v1_0_0";
  inputs."migrate-v1_0_0".owner = "nim-nix-pkgs";
  inputs."migrate-v1_0_0".ref   = "master";
  inputs."migrate-v1_0_0".repo  = "migrate";
  inputs."migrate-v1_0_0".type  = "github";
  inputs."migrate-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."migrate-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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