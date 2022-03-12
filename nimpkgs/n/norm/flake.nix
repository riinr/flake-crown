{
  description = ''Nim ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."norm-develop".url = "path:./develop";
  inputs."norm-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-master".url = "path:./master";
  inputs."norm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_0".url = "path:./1_0_0";
  inputs."norm-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_1".url = "path:./1_0_1";
  inputs."norm-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_10".url = "path:./1_0_10";
  inputs."norm-1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_11".url = "path:./1_0_11";
  inputs."norm-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_12".url = "path:./1_0_12";
  inputs."norm-1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_13".url = "path:./1_0_13";
  inputs."norm-1_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_14".url = "path:./1_0_14";
  inputs."norm-1_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_15".url = "path:./1_0_15";
  inputs."norm-1_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_16".url = "path:./1_0_16";
  inputs."norm-1_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_17".url = "path:./1_0_17";
  inputs."norm-1_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_2".url = "path:./1_0_2";
  inputs."norm-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_3".url = "path:./1_0_3";
  inputs."norm-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_4".url = "path:./1_0_4";
  inputs."norm-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_5".url = "path:./1_0_5";
  inputs."norm-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_6".url = "path:./1_0_6";
  inputs."norm-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_7".url = "path:./1_0_7";
  inputs."norm-1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_8".url = "path:./1_0_8";
  inputs."norm-1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_0_9".url = "path:./1_0_9";
  inputs."norm-1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_0".url = "path:./1_1_0";
  inputs."norm-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_1".url = "path:./1_1_1";
  inputs."norm-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_2".url = "path:./1_1_2";
  inputs."norm-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-1_1_3".url = "path:./1_1_3";
  inputs."norm-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_0_0".url = "path:./2_0_0";
  inputs."norm-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_0_1".url = "path:./2_0_1";
  inputs."norm-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_0".url = "path:./2_1_0";
  inputs."norm-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_1".url = "path:./2_1_1";
  inputs."norm-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_2".url = "path:./2_1_2";
  inputs."norm-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_3".url = "path:./2_1_3";
  inputs."norm-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_4".url = "path:./2_1_4";
  inputs."norm-2_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_1_5".url = "path:./2_1_5";
  inputs."norm-2_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_0".url = "path:./2_2_0";
  inputs."norm-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_1".url = "path:./2_2_1";
  inputs."norm-2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_2".url = "path:./2_2_2";
  inputs."norm-2_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_3".url = "path:./2_2_3";
  inputs."norm-2_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_4".url = "path:./2_2_4";
  inputs."norm-2_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_2_5".url = "path:./2_2_5";
  inputs."norm-2_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_0".url = "path:./2_3_0";
  inputs."norm-2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_1".url = "path:./2_3_1";
  inputs."norm-2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_2".url = "path:./2_3_2";
  inputs."norm-2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_3".url = "path:./2_3_3";
  inputs."norm-2_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_4".url = "path:./2_3_4";
  inputs."norm-2_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_5".url = "path:./2_3_5";
  inputs."norm-2_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_6".url = "path:./2_3_6";
  inputs."norm-2_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_3_7".url = "path:./2_3_7";
  inputs."norm-2_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm-2_4_0".url = "path:./2_4_0";
  inputs."norm-2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm-2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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