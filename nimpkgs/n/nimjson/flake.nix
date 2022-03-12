{
  description = ''nimjson generates nim object definitions from json documents.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimjson-master".url = "path:./master";
  inputs."nimjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_0_0".url = "path:./v1_0_0";
  inputs."nimjson-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_0_1".url = "path:./v1_0_1";
  inputs."nimjson-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_0_2".url = "path:./v1_0_2";
  inputs."nimjson-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_1_0".url = "path:./v1_1_0";
  inputs."nimjson-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_0".url = "path:./v1_2_0";
  inputs."nimjson-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_1".url = "path:./v1_2_1";
  inputs."nimjson-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_2".url = "path:./v1_2_2";
  inputs."nimjson-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_3".url = "path:./v1_2_3";
  inputs."nimjson-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_4".url = "path:./v1_2_4";
  inputs."nimjson-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_5".url = "path:./v1_2_5";
  inputs."nimjson-v1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_6".url = "path:./v1_2_6";
  inputs."nimjson-v1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_7".url = "path:./v1_2_7";
  inputs."nimjson-v1_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_2_8".url = "path:./v1_2_8";
  inputs."nimjson-v1_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_3_0".url = "path:./v1_3_0";
  inputs."nimjson-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v1_3_1".url = "path:./v1_3_1";
  inputs."nimjson-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimjson-v2_0_0".url = "path:./v2_0_0";
  inputs."nimjson-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimjson-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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