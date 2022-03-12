{
  description = ''Image manipulation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."imageman-master".url = "path:./master";
  inputs."imageman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_1_0".url = "path:./v0_1_0";
  inputs."imageman-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_2_0".url = "path:./v0_2_0";
  inputs."imageman-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_2_1".url = "path:./v0_2_1";
  inputs."imageman-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_2_2".url = "path:./v0_2_2";
  inputs."imageman-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_3_0".url = "path:./v0_3_0";
  inputs."imageman-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_4_0".url = "path:./v0_4_0";
  inputs."imageman-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_5_0".url = "path:./v0_5_0";
  inputs."imageman-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_5_1".url = "path:./v0_5_1";
  inputs."imageman-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_0".url = "path:./v0_6_0";
  inputs."imageman-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_1".url = "path:./v0_6_1";
  inputs."imageman-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_2".url = "path:./v0_6_2";
  inputs."imageman-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_3".url = "path:./v0_6_3";
  inputs."imageman-v0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_4".url = "path:./v0_6_4";
  inputs."imageman-v0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_6_5".url = "path:./v0_6_5";
  inputs."imageman-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_0".url = "path:./v0_7_0";
  inputs."imageman-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_1".url = "path:./v0_7_1";
  inputs."imageman-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_2".url = "path:./v0_7_2";
  inputs."imageman-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_3".url = "path:./v0_7_3";
  inputs."imageman-v0_7_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_4".url = "path:./v0_7_4";
  inputs."imageman-v0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_5".url = "path:./v0_7_5";
  inputs."imageman-v0_7_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_7_6".url = "path:./v0_7_6";
  inputs."imageman-v0_7_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_7_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_8_0".url = "path:./v0_8_0";
  inputs."imageman-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_8_1".url = "path:./v0_8_1";
  inputs."imageman-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman-v0_8_2".url = "path:./v0_8_2";
  inputs."imageman-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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