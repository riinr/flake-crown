{
  description = ''A command-line YouTube player and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcoon-master".url = "path:./master";
  inputs."nimcoon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_1_0".url = "path:./0_1_0";
  inputs."nimcoon-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_2_0".url = "path:./0_2_0";
  inputs."nimcoon-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_2_1".url = "path:./0_2_1";
  inputs."nimcoon-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_2_2".url = "path:./0_2_2";
  inputs."nimcoon-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_3_0".url = "path:./0_3_0";
  inputs."nimcoon-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_3_1".url = "path:./0_3_1";
  inputs."nimcoon-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_3_2".url = "path:./0_3_2";
  inputs."nimcoon-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_4_0".url = "path:./0_4_0";
  inputs."nimcoon-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_5_0".url = "path:./0_5_0";
  inputs."nimcoon-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_5_1".url = "path:./0_5_1";
  inputs."nimcoon-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_6_0".url = "path:./0_6_0";
  inputs."nimcoon-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_6_1".url = "path:./0_6_1";
  inputs."nimcoon-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_7_0".url = "path:./0_7_0";
  inputs."nimcoon-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_0".url = "path:./0_8_0";
  inputs."nimcoon-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_1".url = "path:./0_8_1";
  inputs."nimcoon-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_2".url = "path:./0_8_2";
  inputs."nimcoon-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_8_3".url = "path:./0_8_3";
  inputs."nimcoon-0_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcoon-0_9_0".url = "path:./0_9_0";
  inputs."nimcoon-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcoon-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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