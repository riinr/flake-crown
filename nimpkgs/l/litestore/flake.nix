{
  description = ''A lightweight, self-contained, RESTful, searchable, multi-format NoSQL document store'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."litestore-master".url = "path:./master";
  inputs."litestore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_0".url = "path:./v1_0_0";
  inputs."litestore-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_1".url = "path:./v1_0_1";
  inputs."litestore-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_2".url = "path:./v1_0_2";
  inputs."litestore-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_3".url = "path:./v1_0_3";
  inputs."litestore-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_4".url = "path:./v1_0_4";
  inputs."litestore-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_0_5".url = "path:./v1_0_5";
  inputs."litestore-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_1_0".url = "path:./v1_1_0";
  inputs."litestore-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_1_1".url = "path:./v1_1_1";
  inputs."litestore-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_10_0".url = "path:./v1_10_0";
  inputs."litestore-v1_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_11_0".url = "path:./v1_11_0";
  inputs."litestore-v1_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_2_0".url = "path:./v1_2_0";
  inputs."litestore-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_3_0".url = "path:./v1_3_0";
  inputs."litestore-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_3_1".url = "path:./v1_3_1";
  inputs."litestore-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_4_0".url = "path:./v1_4_0";
  inputs."litestore-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_4_1".url = "path:./v1_4_1";
  inputs."litestore-v1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_5_0".url = "path:./v1_5_0";
  inputs."litestore-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_5_1".url = "path:./v1_5_1";
  inputs."litestore-v1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_6_0".url = "path:./v1_6_0";
  inputs."litestore-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_7_0".url = "path:./v1_7_0";
  inputs."litestore-v1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_8_0".url = "path:./v1_8_0";
  inputs."litestore-v1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_0".url = "path:./v1_9_0";
  inputs."litestore-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_1".url = "path:./v1_9_1";
  inputs."litestore-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_2".url = "path:./v1_9_2";
  inputs."litestore-v1_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."litestore-v1_9_3".url = "path:./v1_9_3";
  inputs."litestore-v1_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."litestore-v1_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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