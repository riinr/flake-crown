{
  description = ''Canonical JSON according to RFC8785'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."canonicaljson-master".url = "path:./master";
  inputs."canonicaljson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_0_0".url = "path:./1_0_0";
  inputs."canonicaljson-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_0_1".url = "path:./1_0_1";
  inputs."canonicaljson-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_0_2".url = "path:./1_0_2";
  inputs."canonicaljson-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_1_0".url = "path:./1_1_0";
  inputs."canonicaljson-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_1_1".url = "path:./1_1_1";
  inputs."canonicaljson-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_1_2".url = "path:./1_1_2";
  inputs."canonicaljson-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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