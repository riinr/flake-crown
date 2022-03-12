{
  description = ''Unicode normalization forms (tr15)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."normalize-master".url = "path:./master";
  inputs."normalize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_1_0".url = "path:./v0_1_0";
  inputs."normalize-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_1_1".url = "path:./v0_1_1";
  inputs."normalize-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_2_0".url = "path:./v0_2_0";
  inputs."normalize-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_2_1".url = "path:./v0_2_1";
  inputs."normalize-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_2_2".url = "path:./v0_2_2";
  inputs."normalize-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_3_0".url = "path:./v0_3_0";
  inputs."normalize-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_3_1".url = "path:./v0_3_1";
  inputs."normalize-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_4_0".url = "path:./v0_4_0";
  inputs."normalize-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_5_0".url = "path:./v0_5_0";
  inputs."normalize-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_6_0".url = "path:./v0_6_0";
  inputs."normalize-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."normalize-v0_8_0".url = "path:./v0_8_0";
  inputs."normalize-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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