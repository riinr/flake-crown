{
  description = ''A build tool for Neverwinter Nights projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nasher-master".url = "path:./master";
  inputs."nasher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_1_0".url = "path:./0_1_0";
  inputs."nasher-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_10_0".url = "path:./0_10_0";
  inputs."nasher-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_10_1".url = "path:./0_10_1";
  inputs."nasher-0_10_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_10_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_10_2".url = "path:./0_10_2";
  inputs."nasher-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_0".url = "path:./0_11_0";
  inputs."nasher-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_1".url = "path:./0_11_1";
  inputs."nasher-0_11_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_2".url = "path:./0_11_2";
  inputs."nasher-0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_3".url = "path:./0_11_3";
  inputs."nasher-0_11_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_4".url = "path:./0_11_4";
  inputs."nasher-0_11_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_5".url = "path:./0_11_5";
  inputs."nasher-0_11_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_6".url = "path:./0_11_6";
  inputs."nasher-0_11_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_7".url = "path:./0_11_7";
  inputs."nasher-0_11_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_8".url = "path:./0_11_8";
  inputs."nasher-0_11_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_11_9".url = "path:./0_11_9";
  inputs."nasher-0_11_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_11_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_12_0".url = "path:./0_12_0";
  inputs."nasher-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_12_1".url = "path:./0_12_1";
  inputs."nasher-0_12_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_12_2".url = "path:./0_12_2";
  inputs."nasher-0_12_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_12_3".url = "path:./0_12_3";
  inputs."nasher-0_12_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_12_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_13_0".url = "path:./0_13_0";
  inputs."nasher-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_14_0".url = "path:./0_14_0";
  inputs."nasher-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_14_1".url = "path:./0_14_1";
  inputs."nasher-0_14_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_14_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_14_2".url = "path:./0_14_2";
  inputs."nasher-0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_15_0".url = "path:./0_15_0";
  inputs."nasher-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_15_1".url = "path:./0_15_1";
  inputs."nasher-0_15_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_15_2".url = "path:./0_15_2";
  inputs."nasher-0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_15_3".url = "path:./0_15_3";
  inputs."nasher-0_15_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_15_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_16_0".url = "path:./0_16_0";
  inputs."nasher-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_16_1".url = "path:./0_16_1";
  inputs."nasher-0_16_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_16_2".url = "path:./0_16_2";
  inputs."nasher-0_16_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_16_3".url = "path:./0_16_3";
  inputs."nasher-0_16_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_16_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_2_0".url = "path:./0_2_0";
  inputs."nasher-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_2_1".url = "path:./0_2_1";
  inputs."nasher-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_3_0".url = "path:./0_3_0";
  inputs."nasher-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_4_0".url = "path:./0_4_0";
  inputs."nasher-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_4_1".url = "path:./0_4_1";
  inputs."nasher-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_5_0".url = "path:./0_5_0";
  inputs."nasher-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_6_0".url = "path:./0_6_0";
  inputs."nasher-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_6_1".url = "path:./0_6_1";
  inputs."nasher-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_7_0".url = "path:./0_7_0";
  inputs."nasher-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_7_1".url = "path:./0_7_1";
  inputs."nasher-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_7_2".url = "path:./0_7_2";
  inputs."nasher-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_7_3".url = "path:./0_7_3";
  inputs."nasher-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_8_0".url = "path:./0_8_0";
  inputs."nasher-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_8_1".url = "path:./0_8_1";
  inputs."nasher-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_8_2".url = "path:./0_8_2";
  inputs."nasher-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_8_3".url = "path:./0_8_3";
  inputs."nasher-0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_8_4".url = "path:./0_8_4";
  inputs."nasher-0_8_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_8_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_0".url = "path:./0_9_0";
  inputs."nasher-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_1".url = "path:./0_9_1";
  inputs."nasher-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_2".url = "path:./0_9_2";
  inputs."nasher-0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_3".url = "path:./0_9_3";
  inputs."nasher-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_4".url = "path:./0_9_4";
  inputs."nasher-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_5".url = "path:./0_9_5";
  inputs."nasher-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nasher-0_9_6".url = "path:./0_9_6";
  inputs."nasher-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nasher-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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