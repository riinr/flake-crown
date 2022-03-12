{
  description = ''A SQLbuilder with support for NULL values'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sqlbuilder-master".url = "path:./master";
  inputs."sqlbuilder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_1_1".url = "path:./v0_1_1";
  inputs."sqlbuilder-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_1_2".url = "path:./v0_1_2";
  inputs."sqlbuilder-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_2_0".url = "path:./v0_2_0";
  inputs."sqlbuilder-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_3_0".url = "path:./v0_3_0";
  inputs."sqlbuilder-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqlbuilder-v0_3_1".url = "path:./v0_3_1";
  inputs."sqlbuilder-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqlbuilder-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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