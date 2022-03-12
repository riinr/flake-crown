{
  description = ''Elegant optional types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."questionable-main".url = "path:./main";
  inputs."questionable-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_1_0".url = "path:./0_1_0";
  inputs."questionable-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_10_0".url = "path:./0_10_0";
  inputs."questionable-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_10_2".url = "path:./0_10_2";
  inputs."questionable-0_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_2_0".url = "path:./0_2_0";
  inputs."questionable-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_3_0".url = "path:./0_3_0";
  inputs."questionable-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_0".url = "path:./0_4_0";
  inputs."questionable-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_1".url = "path:./0_4_1";
  inputs."questionable-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_2".url = "path:./0_4_2";
  inputs."questionable-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_4_3".url = "path:./0_4_3";
  inputs."questionable-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_5_0".url = "path:./0_5_0";
  inputs."questionable-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_0".url = "path:./0_6_0";
  inputs."questionable-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_1".url = "path:./0_6_1";
  inputs."questionable-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_2".url = "path:./0_6_2";
  inputs."questionable-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_6_3".url = "path:./0_6_3";
  inputs."questionable-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_7_0".url = "path:./0_7_0";
  inputs."questionable-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_8_0".url = "path:./0_8_0";
  inputs."questionable-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_9_0".url = "path:./0_9_0";
  inputs."questionable-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable-0_9_1".url = "path:./0_9_1";
  inputs."questionable-0_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable-0_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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