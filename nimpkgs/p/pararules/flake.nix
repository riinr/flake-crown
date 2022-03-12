{
  description = ''A rules engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pararules-master".url = "path:./master";
  inputs."pararules-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_1_0".url = "path:./0_1_0";
  inputs."pararules-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_10_0".url = "path:./0_10_0";
  inputs."pararules-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_11_0".url = "path:./0_11_0";
  inputs."pararules-0_11_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_11_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_12_0".url = "path:./0_12_0";
  inputs."pararules-0_12_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_12_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_13_0".url = "path:./0_13_0";
  inputs."pararules-0_13_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_13_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_14_0".url = "path:./0_14_0";
  inputs."pararules-0_14_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_14_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_15_0".url = "path:./0_15_0";
  inputs."pararules-0_15_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_15_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_16_0".url = "path:./0_16_0";
  inputs."pararules-0_16_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_16_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_17_0".url = "path:./0_17_0";
  inputs."pararules-0_17_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_17_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_18_0".url = "path:./0_18_0";
  inputs."pararules-0_18_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_18_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_19_0".url = "path:./0_19_0";
  inputs."pararules-0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_2_0".url = "path:./0_2_0";
  inputs."pararules-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_20_0".url = "path:./0_20_0";
  inputs."pararules-0_20_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_20_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_21_0".url = "path:./0_21_0";
  inputs."pararules-0_21_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_21_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_23_0".url = "path:./0_23_0";
  inputs."pararules-0_23_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_23_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_3_0".url = "path:./0_3_0";
  inputs."pararules-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_4_0".url = "path:./0_4_0";
  inputs."pararules-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_5_0".url = "path:./0_5_0";
  inputs."pararules-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_6_0".url = "path:./0_6_0";
  inputs."pararules-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_7_0".url = "path:./0_7_0";
  inputs."pararules-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_8_0".url = "path:./0_8_0";
  inputs."pararules-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-0_9_0".url = "path:./0_9_0";
  inputs."pararules-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-1_0_0".url = "path:./1_0_0";
  inputs."pararules-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules-1_0_1".url = "path:./1_0_1";
  inputs."pararules-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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