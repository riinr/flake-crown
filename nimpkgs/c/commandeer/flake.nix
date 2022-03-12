{
  description = ''Provides a small command line parsing DSL (domain specific language)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."commandeer-master".url = "path:./master";
  inputs."commandeer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_1_0".url = "path:./0_1_0";
  inputs."commandeer-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_1_2".url = "path:./0_1_2";
  inputs."commandeer-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_2".url = "path:./0_10_2";
  inputs."commandeer-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_3".url = "path:./0_10_3";
  inputs."commandeer-0_10_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_4".url = "path:./0_10_4";
  inputs."commandeer-0_10_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_10_5".url = "path:./0_10_5";
  inputs."commandeer-0_10_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_10_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_11_0".url = "path:./0_11_0";
  inputs."commandeer-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_12_0".url = "path:./0_12_0";
  inputs."commandeer-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_12_1".url = "path:./0_12_1";
  inputs."commandeer-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_12_3".url = "path:./0_12_3";
  inputs."commandeer-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_2_0".url = "path:./0_2_0";
  inputs."commandeer-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_3_0".url = "path:./0_3_0";
  inputs."commandeer-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_3_1".url = "path:./0_3_1";
  inputs."commandeer-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_4_0".url = "path:./0_4_0";
  inputs."commandeer-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_5_0".url = "path:./0_5_0";
  inputs."commandeer-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_6_0".url = "path:./0_6_0";
  inputs."commandeer-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_7_0".url = "path:./0_7_0";
  inputs."commandeer-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_8_0".url = "path:./0_8_0";
  inputs."commandeer-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_9_0".url = "path:./0_9_0";
  inputs."commandeer-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer-0_9_1".url = "path:./0_9_1";
  inputs."commandeer-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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