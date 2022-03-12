{
  description = ''Pseudo-random number generation library inspired by Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."random-master".url = "path:./master";
  inputs."random-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_2_4".url = "path:./v0_2_4";
  inputs."random-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_3_0".url = "path:./v0_3_0";
  inputs."random-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_4_0".url = "path:./v0_4_0";
  inputs."random-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_0".url = "path:./v0_5_0";
  inputs."random-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_1".url = "path:./v0_5_1";
  inputs."random-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_2".url = "path:./v0_5_2";
  inputs."random-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_3".url = "path:./v0_5_3";
  inputs."random-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_4".url = "path:./v0_5_4";
  inputs."random-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_5".url = "path:./v0_5_5";
  inputs."random-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_6".url = "path:./v0_5_6";
  inputs."random-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."random-v0_5_7".url = "path:./v0_5_7";
  inputs."random-v0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random-v0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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