{
  description = ''A nil coalescing operator ?? for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."coalesce-master".url = "path:./master";
  inputs."coalesce-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_1_0".url = "path:./v0_1_0";
  inputs."coalesce-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_2_0".url = "path:./v0_2_0";
  inputs."coalesce-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_3_0".url = "path:./v0_3_0";
  inputs."coalesce-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_3_1".url = "path:./v0_3_1";
  inputs."coalesce-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."coalesce-v0_3_2".url = "path:./v0_3_2";
  inputs."coalesce-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coalesce-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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