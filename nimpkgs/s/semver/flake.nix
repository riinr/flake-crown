{
  description = ''Semantic versioning parser for Nim. Allows the parsing of version strings into objects and the comparing of version objects.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."semver-master".url = "path:./master";
  inputs."semver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v_1_0_2".url = "path:./v_1_0_2";
  inputs."semver-v_1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v_1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_0".url = "path:./v1_0_0";
  inputs."semver-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_1".url = "path:./v1_0_1";
  inputs."semver-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_2".url = "path:./v1_0_2";
  inputs."semver-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_3".url = "path:./v1_0_3";
  inputs."semver-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_0_4".url = "path:./v1_0_4";
  inputs."semver-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_1_0".url = "path:./v1_1_0";
  inputs."semver-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semver-v1_1_1".url = "path:./v1_1_1";
  inputs."semver-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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