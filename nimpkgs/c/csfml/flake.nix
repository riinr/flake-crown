{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csfml-master".url = "path:./master";
  inputs."csfml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_0".url = "path:./v2_1_0";
  inputs."csfml-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_1".url = "path:./v2_1_1";
  inputs."csfml-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_2".url = "path:./v2_1_2";
  inputs."csfml-v2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_1_3".url = "path:./v2_1_3";
  inputs."csfml-v2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_2_0".url = "path:./v2_2_0";
  inputs."csfml-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_3_0".url = "path:./v2_3_0";
  inputs."csfml-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_3_1".url = "path:./v2_3_1";
  inputs."csfml-v2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_4_0".url = "path:./v2_4_0";
  inputs."csfml-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csfml-v2_5_0".url = "path:./v2_5_0";
  inputs."csfml-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csfml-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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