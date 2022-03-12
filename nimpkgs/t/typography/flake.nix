{
  description = ''Fonts, Typesetting and Rasterization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."typography-master".url = "path:./master";
  inputs."typography-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_0".url = "path:./0_2_0";
  inputs."typography-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_1".url = "path:./0_2_1";
  inputs."typography-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_2".url = "path:./0_2_2";
  inputs."typography-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_2_3".url = "path:./0_2_3";
  inputs."typography-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_0".url = "path:./0_3_0";
  inputs."typography-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_1".url = "path:./0_3_1";
  inputs."typography-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_2".url = "path:./0_3_2";
  inputs."typography-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_3_3".url = "path:./0_3_3";
  inputs."typography-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_6_0".url = "path:./0_6_0";
  inputs."typography-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_0".url = "path:./0_7_0";
  inputs."typography-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_1".url = "path:./0_7_1";
  inputs."typography-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_10".url = "path:./0_7_10";
  inputs."typography-0_7_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_11".url = "path:./0_7_11";
  inputs."typography-0_7_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_12".url = "path:./0_7_12";
  inputs."typography-0_7_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_13".url = "path:./0_7_13";
  inputs."typography-0_7_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_2".url = "path:./0_7_2";
  inputs."typography-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_3".url = "path:./0_7_3";
  inputs."typography-0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_4".url = "path:./0_7_4";
  inputs."typography-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_5".url = "path:./0_7_5";
  inputs."typography-0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_6".url = "path:./0_7_6";
  inputs."typography-0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_7".url = "path:./0_7_7";
  inputs."typography-0_7_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_8".url = "path:./0_7_8";
  inputs."typography-0_7_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-0_7_9".url = "path:./0_7_9";
  inputs."typography-0_7_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-0_7_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-v0_2_3".url = "path:./v0_2_3";
  inputs."typography-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-v0_2_4".url = "path:./v0_2_4";
  inputs."typography-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography-v0_3_0".url = "path:./v0_3_0";
  inputs."typography-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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