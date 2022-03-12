{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zippy-master".url = "path:./master";
  inputs."zippy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_0".url = "path:./0_1_0";
  inputs."zippy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_1".url = "path:./0_1_1";
  inputs."zippy-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_2".url = "path:./0_1_2";
  inputs."zippy-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_1_3".url = "path:./0_1_3";
  inputs."zippy-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_0".url = "path:./0_2_0";
  inputs."zippy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_1".url = "path:./0_2_1";
  inputs."zippy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_2".url = "path:./0_2_2";
  inputs."zippy-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_3".url = "path:./0_2_3";
  inputs."zippy-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_4".url = "path:./0_2_4";
  inputs."zippy-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_5".url = "path:./0_2_5";
  inputs."zippy-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_2_6".url = "path:./0_2_6";
  inputs."zippy-0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_0".url = "path:./0_3_0";
  inputs."zippy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_1".url = "path:./0_3_1";
  inputs."zippy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_10".url = "path:./0_3_10";
  inputs."zippy-0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_11".url = "path:./0_3_11";
  inputs."zippy-0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_12".url = "path:./0_3_12";
  inputs."zippy-0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_13".url = "path:./0_3_13";
  inputs."zippy-0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_14".url = "path:./0_3_14";
  inputs."zippy-0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_2".url = "path:./0_3_2";
  inputs."zippy-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_3".url = "path:./0_3_3";
  inputs."zippy-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_4".url = "path:./0_3_4";
  inputs."zippy-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_5".url = "path:./0_3_5";
  inputs."zippy-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_6".url = "path:./0_3_6";
  inputs."zippy-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_7".url = "path:./0_3_7";
  inputs."zippy-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_8".url = "path:./0_3_8";
  inputs."zippy-0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_3_9".url = "path:./0_3_9";
  inputs."zippy-0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_4_0".url = "path:./0_4_0";
  inputs."zippy-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_4_1".url = "path:./0_4_1";
  inputs."zippy-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_0".url = "path:./0_5_0";
  inputs."zippy-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_1".url = "path:./0_5_1";
  inputs."zippy-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_10".url = "path:./0_5_10";
  inputs."zippy-0_5_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_11".url = "path:./0_5_11";
  inputs."zippy-0_5_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_12".url = "path:./0_5_12";
  inputs."zippy-0_5_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_13".url = "path:./0_5_13";
  inputs."zippy-0_5_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_14".url = "path:./0_5_14";
  inputs."zippy-0_5_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_2".url = "path:./0_5_2";
  inputs."zippy-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_3".url = "path:./0_5_3";
  inputs."zippy-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_4".url = "path:./0_5_4";
  inputs."zippy-0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_5".url = "path:./0_5_5";
  inputs."zippy-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_6".url = "path:./0_5_6";
  inputs."zippy-0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_7".url = "path:./0_5_7";
  inputs."zippy-0_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_8".url = "path:./0_5_8";
  inputs."zippy-0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_5_9".url = "path:./0_5_9";
  inputs."zippy-0_5_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_5_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_6_0".url = "path:./0_6_0";
  inputs."zippy-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_6_1".url = "path:./0_6_1";
  inputs."zippy-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_6_2".url = "path:./0_6_2";
  inputs."zippy-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_0".url = "path:./0_7_0";
  inputs."zippy-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_1".url = "path:./0_7_1";
  inputs."zippy-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_2".url = "path:./0_7_2";
  inputs."zippy-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_3".url = "path:./0_7_3";
  inputs."zippy-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_7_4".url = "path:./0_7_4";
  inputs."zippy-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_8_0".url = "path:./0_8_0";
  inputs."zippy-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_8_1".url = "path:./0_8_1";
  inputs."zippy-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_0".url = "path:./0_9_0";
  inputs."zippy-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_1".url = "path:./0_9_1";
  inputs."zippy-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_3".url = "path:./0_9_3";
  inputs."zippy-0_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_4".url = "path:./0_9_4";
  inputs."zippy-0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_5".url = "path:./0_9_5";
  inputs."zippy-0_9_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_6".url = "path:./0_9_6";
  inputs."zippy-0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy-0_9_7".url = "path:./0_9_7";
  inputs."zippy-0_9_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy-0_9_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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