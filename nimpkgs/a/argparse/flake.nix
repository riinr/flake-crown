{
  description = ''WIP strongly-typed argument parser with sub command support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."argparse-master".url = "path:./master";
  inputs."argparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_10_0".url = "path:./v0_10_0";
  inputs."argparse-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_10_1".url = "path:./v0_10_1";
  inputs."argparse-v0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_2_0".url = "path:./v0_2_0";
  inputs."argparse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_3_0".url = "path:./v0_3_0";
  inputs."argparse-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_3_1".url = "path:./v0_3_1";
  inputs."argparse-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_4_0".url = "path:./v0_4_0";
  inputs."argparse-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_5_0".url = "path:./v0_5_0";
  inputs."argparse-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_6_0".url = "path:./v0_6_0";
  inputs."argparse-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_7_0".url = "path:./v0_7_0";
  inputs."argparse-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_7_1".url = "path:./v0_7_1";
  inputs."argparse-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_7_2".url = "path:./v0_7_2";
  inputs."argparse-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_0".url = "path:./v0_8_0";
  inputs."argparse-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_1".url = "path:./v0_8_1";
  inputs."argparse-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_2".url = "path:./v0_8_2";
  inputs."argparse-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_8_3".url = "path:./v0_8_3";
  inputs."argparse-v0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v0_9_0".url = "path:./v0_9_0";
  inputs."argparse-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v1_0_0".url = "path:./v1_0_0";
  inputs."argparse-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v1_1_0".url = "path:./v1_1_0";
  inputs."argparse-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v2_0_0".url = "path:./v2_0_0";
  inputs."argparse-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v2_0_1".url = "path:./v2_0_1";
  inputs."argparse-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v2_1_0".url = "path:./v2_1_0";
  inputs."argparse-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse-v3_0_0".url = "path:./v3_0_0";
  inputs."argparse-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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