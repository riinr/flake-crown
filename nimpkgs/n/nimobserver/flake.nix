{
  description = ''An implementation of the observer pattern'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimobserver-master".url = "path:./master";
  inputs."nimobserver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimobserver-v0_1_0".url = "path:./v0_1_0";
  inputs."nimobserver-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimobserver-v0_1_1".url = "path:./v0_1_1";
  inputs."nimobserver-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimobserver-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}