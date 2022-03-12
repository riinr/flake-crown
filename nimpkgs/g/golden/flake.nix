{
  description = ''a benchmark tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."golden-master".url = "path:./master";
  inputs."golden-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-0_0_1".url = "path:./0_0_1";
  inputs."golden-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_0_1".url = "path:./1_0_1";
  inputs."golden-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_1_0".url = "path:./1_1_0";
  inputs."golden-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_1_2".url = "path:./1_1_2";
  inputs."golden-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-1_1_3".url = "path:./1_1_3";
  inputs."golden-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_0_0".url = "path:./2_0_0";
  inputs."golden-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_1_0".url = "path:./2_1_0";
  inputs."golden-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_2_0".url = "path:./2_2_0";
  inputs."golden-2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_3_0".url = "path:./2_3_0";
  inputs."golden-2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_3_1".url = "path:./2_3_1";
  inputs."golden-2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_3_2".url = "path:./2_3_2";
  inputs."golden-2_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_4_0".url = "path:./2_4_0";
  inputs."golden-2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_4_1".url = "path:./2_4_1";
  inputs."golden-2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_5_1".url = "path:./2_5_1";
  inputs."golden-2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-2_5_2".url = "path:./2_5_2";
  inputs."golden-2_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-2_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_0".url = "path:./3_0_0";
  inputs."golden-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_1".url = "path:./3_0_1";
  inputs."golden-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_10".url = "path:./3_0_10";
  inputs."golden-3_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_11".url = "path:./3_0_11";
  inputs."golden-3_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_12".url = "path:./3_0_12";
  inputs."golden-3_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_13".url = "path:./3_0_13";
  inputs."golden-3_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_14".url = "path:./3_0_14";
  inputs."golden-3_0_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_15".url = "path:./3_0_15";
  inputs."golden-3_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_2".url = "path:./3_0_2";
  inputs."golden-3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_3".url = "path:./3_0_3";
  inputs."golden-3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_4".url = "path:./3_0_4";
  inputs."golden-3_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_5".url = "path:./3_0_5";
  inputs."golden-3_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_6".url = "path:./3_0_6";
  inputs."golden-3_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_7".url = "path:./3_0_7";
  inputs."golden-3_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_8".url = "path:./3_0_8";
  inputs."golden-3_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."golden-3_0_9".url = "path:./3_0_9";
  inputs."golden-3_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."golden-3_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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