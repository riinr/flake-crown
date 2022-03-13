{
  description = ''An implementation of the observer pattern'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimobserver-master".dir   = "master";
  inputs."nimobserver-master".owner = "nim-nix-pkgs";
  inputs."nimobserver-master".ref   = "master";
  inputs."nimobserver-master".repo  = "nimobserver";
  inputs."nimobserver-master".type  = "github";
  inputs."nimobserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimobserver-v0_1_0".dir   = "v0_1_0";
  inputs."nimobserver-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimobserver-v0_1_0".ref   = "master";
  inputs."nimobserver-v0_1_0".repo  = "nimobserver";
  inputs."nimobserver-v0_1_0".type  = "github";
  inputs."nimobserver-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimobserver-v0_1_1".dir   = "v0_1_1";
  inputs."nimobserver-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimobserver-v0_1_1".ref   = "master";
  inputs."nimobserver-v0_1_1".repo  = "nimobserver";
  inputs."nimobserver-v0_1_1".type  = "github";
  inputs."nimobserver-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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