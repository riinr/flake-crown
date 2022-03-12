{
  description = ''BSON Binary JSON Serialization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bson-master".url = "path:./master";
  inputs."bson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_0_0".url = "path:./v1_0_0";
  inputs."bson-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_0_1".url = "path:./v1_0_1";
  inputs."bson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_1_1".url = "path:./v1_1_1";
  inputs."bson-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bson-v1_1_2".url = "path:./v1_1_2";
  inputs."bson-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bson-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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