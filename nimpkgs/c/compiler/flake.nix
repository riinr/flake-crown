{
  description = ''Compiler package providing the compiler sources as a library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."compiler-v0_10_2".url = "path:./v0_10_2";
  inputs."compiler-v0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_11_0".url = "path:./v0_11_0";
  inputs."compiler-v0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_11_2".url = "path:./v0_11_2";
  inputs."compiler-v0_11_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_11_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_12_0".url = "path:./v0_12_0";
  inputs."compiler-v0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_13_0".url = "path:./v0_13_0";
  inputs."compiler-v0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_14_0".url = "path:./v0_14_0";
  inputs."compiler-v0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_14_2".url = "path:./v0_14_2";
  inputs."compiler-v0_14_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_14_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_15_0".url = "path:./v0_15_0";
  inputs."compiler-v0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_15_2".url = "path:./v0_15_2";
  inputs."compiler-v0_15_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_15_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_16_0".url = "path:./v0_16_0";
  inputs."compiler-v0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_17_0".url = "path:./v0_17_0";
  inputs."compiler-v0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_17_2".url = "path:./v0_17_2";
  inputs."compiler-v0_17_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_17_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_18_0".url = "path:./v0_18_0";
  inputs."compiler-v0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_0".url = "path:./v0_19_0";
  inputs."compiler-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_2".url = "path:./v0_19_2";
  inputs."compiler-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_4".url = "path:./v0_19_4";
  inputs."compiler-v0_19_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_19_6".url = "path:./v0_19_6";
  inputs."compiler-v0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_20_0".url = "path:./v0_20_0";
  inputs."compiler-v0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_20_2".url = "path:./v0_20_2";
  inputs."compiler-v0_20_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_20_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_8_14".url = "path:./v0_8_14";
  inputs."compiler-v0_8_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_8_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_9_0".url = "path:./v0_9_0";
  inputs."compiler-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_9_2".url = "path:./v0_9_2";
  inputs."compiler-v0_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_9_4".url = "path:./v0_9_4";
  inputs."compiler-v0_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v0_9_6".url = "path:./v0_9_6";
  inputs."compiler-v0_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v0_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_0".url = "path:./v1_0_0";
  inputs."compiler-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_10".url = "path:./v1_0_10";
  inputs."compiler-v1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_2".url = "path:./v1_0_2";
  inputs."compiler-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_4".url = "path:./v1_0_4";
  inputs."compiler-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_6".url = "path:./v1_0_6";
  inputs."compiler-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_0_8".url = "path:./v1_0_8";
  inputs."compiler-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_0".url = "path:./v1_2_0";
  inputs."compiler-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_10".url = "path:./v1_2_10";
  inputs."compiler-v1_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_12".url = "path:./v1_2_12";
  inputs."compiler-v1_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_14".url = "path:./v1_2_14";
  inputs."compiler-v1_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_16".url = "path:./v1_2_16";
  inputs."compiler-v1_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_18".url = "path:./v1_2_18";
  inputs."compiler-v1_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_2".url = "path:./v1_2_2";
  inputs."compiler-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_4".url = "path:./v1_2_4";
  inputs."compiler-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_6".url = "path:./v1_2_6";
  inputs."compiler-v1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_2_8".url = "path:./v1_2_8";
  inputs."compiler-v1_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_0".url = "path:./v1_4_0";
  inputs."compiler-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_2".url = "path:./v1_4_2";
  inputs."compiler-v1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_4".url = "path:./v1_4_4";
  inputs."compiler-v1_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_6".url = "path:./v1_4_6";
  inputs."compiler-v1_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_4_8".url = "path:./v1_4_8";
  inputs."compiler-v1_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_0".url = "path:./v1_6_0";
  inputs."compiler-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_2".url = "path:./v1_6_2";
  inputs."compiler-v1_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compiler-v1_6_4".url = "path:./v1_6_4";
  inputs."compiler-v1_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler-v1_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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