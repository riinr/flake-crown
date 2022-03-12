{
  description = ''OpenAPI Code Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openapi-master".url = "path:./master";
  inputs."openapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_0".url = "path:./1_0_0";
  inputs."openapi-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_1".url = "path:./1_0_1";
  inputs."openapi-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_2".url = "path:./1_0_2";
  inputs."openapi-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-1_0_3".url = "path:./1_0_3";
  inputs."openapi-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-2_0_0".url = "path:./2_0_0";
  inputs."openapi-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-2_0_1".url = "path:./2_0_1";
  inputs."openapi-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_0_0".url = "path:./3_0_0";
  inputs."openapi-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_0_1".url = "path:./3_0_1";
  inputs."openapi-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_0".url = "path:./3_1_0";
  inputs."openapi-3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_1".url = "path:./3_1_1";
  inputs."openapi-3_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_2".url = "path:./3_1_2";
  inputs."openapi-3_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_3".url = "path:./3_1_3";
  inputs."openapi-3_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_4".url = "path:./3_1_4";
  inputs."openapi-3_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_5".url = "path:./3_1_5";
  inputs."openapi-3_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_6".url = "path:./3_1_6";
  inputs."openapi-3_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_1_7".url = "path:./3_1_7";
  inputs."openapi-3_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_2_0".url = "path:./3_2_0";
  inputs."openapi-3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_2_1".url = "path:./3_2_1";
  inputs."openapi-3_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_2_2".url = "path:./3_2_2";
  inputs."openapi-3_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_3_0".url = "path:./3_3_0";
  inputs."openapi-3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openapi-3_3_1".url = "path:./3_3_1";
  inputs."openapi-3_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openapi-3_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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