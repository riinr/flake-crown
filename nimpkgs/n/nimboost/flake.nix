{
  description = ''Additions to the Nim's standard library, like boost for C++'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimboost-master".url = "path:./master";
  inputs."nimboost-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_0_1".url = "path:./v0_0_1";
  inputs."nimboost-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_1_0".url = "path:./v0_1_0";
  inputs."nimboost-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_2_0".url = "path:./v0_2_0";
  inputs."nimboost-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_2_1".url = "path:./v0_2_1";
  inputs."nimboost-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_0".url = "path:./v0_3_0";
  inputs."nimboost-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_1".url = "path:./v0_3_1";
  inputs."nimboost-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_2".url = "path:./v0_3_2";
  inputs."nimboost-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_3".url = "path:./v0_3_3";
  inputs."nimboost-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_4".url = "path:./v0_3_4";
  inputs."nimboost-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_5".url = "path:./v0_3_5";
  inputs."nimboost-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_3_6".url = "path:./v0_3_6";
  inputs."nimboost-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_0".url = "path:./v0_4_0";
  inputs."nimboost-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_1".url = "path:./v0_4_1";
  inputs."nimboost-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_2".url = "path:./v0_4_2";
  inputs."nimboost-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_3".url = "path:./v0_4_3";
  inputs."nimboost-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_4".url = "path:./v0_4_4";
  inputs."nimboost-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_5".url = "path:./v0_4_5";
  inputs."nimboost-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_4_8".url = "path:./v0_4_8";
  inputs."nimboost-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_0".url = "path:./v0_5_0";
  inputs."nimboost-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_1".url = "path:./v0_5_1";
  inputs."nimboost-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_3".url = "path:./v0_5_3";
  inputs."nimboost-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_4".url = "path:./v0_5_4";
  inputs."nimboost-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimboost-v0_5_5".url = "path:./v0_5_5";
  inputs."nimboost-v0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimboost-v0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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