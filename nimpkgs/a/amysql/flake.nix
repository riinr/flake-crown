{
  description = ''Async MySQL Connector write in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."amysql-master".url = "path:./master";
  inputs."amysql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_1_0".url = "path:./v0_1_0";
  inputs."amysql-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_6_0".url = "path:./v0_6_0";
  inputs."amysql-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_6_1".url = "path:./v0_6_1";
  inputs."amysql-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_0".url = "path:./v0_7_0";
  inputs."amysql-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_1".url = "path:./v0_7_1";
  inputs."amysql-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_2".url = "path:./v0_7_2";
  inputs."amysql-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_3".url = "path:./v0_7_3";
  inputs."amysql-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_4".url = "path:./v0_7_4";
  inputs."amysql-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_5".url = "path:./v0_7_5";
  inputs."amysql-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."amysql-v0_7_6".url = "path:./v0_7_6";
  inputs."amysql-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amysql-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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