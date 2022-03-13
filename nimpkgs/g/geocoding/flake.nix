{
  description = ''A simple library for Google Maps Geocoding API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geocoding-master".dir   = "master";
  inputs."geocoding-master".owner = "nim-nix-pkgs";
  inputs."geocoding-master".ref   = "master";
  inputs."geocoding-master".repo  = "geocoding";
  inputs."geocoding-master".type  = "github";
  inputs."geocoding-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geocoding-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geocoding-v0_1_0".dir   = "v0_1_0";
  inputs."geocoding-v0_1_0".owner = "nim-nix-pkgs";
  inputs."geocoding-v0_1_0".ref   = "master";
  inputs."geocoding-v0_1_0".repo  = "geocoding";
  inputs."geocoding-v0_1_0".type  = "github";
  inputs."geocoding-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geocoding-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geocoding-v0_1_1".dir   = "v0_1_1";
  inputs."geocoding-v0_1_1".owner = "nim-nix-pkgs";
  inputs."geocoding-v0_1_1".ref   = "master";
  inputs."geocoding-v0_1_1".repo  = "geocoding";
  inputs."geocoding-v0_1_1".type  = "github";
  inputs."geocoding-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geocoding-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geocoding-v0_1_2".dir   = "v0_1_2";
  inputs."geocoding-v0_1_2".owner = "nim-nix-pkgs";
  inputs."geocoding-v0_1_2".ref   = "master";
  inputs."geocoding-v0_1_2".repo  = "geocoding";
  inputs."geocoding-v0_1_2".type  = "github";
  inputs."geocoding-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geocoding-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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