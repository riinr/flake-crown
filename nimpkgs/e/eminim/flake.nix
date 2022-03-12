{
  description = ''JSON serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eminim-master".url = "path:./master";
  inputs."eminim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v0_2_0".url = "path:./v0_2_0";
  inputs."eminim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v0_3_0".url = "path:./v0_3_0";
  inputs."eminim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v0_4_0".url = "path:./v0_4_0";
  inputs."eminim-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_0_0".url = "path:./v1_0_0";
  inputs."eminim-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_1_0".url = "path:./v1_1_0";
  inputs."eminim-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_2_0".url = "path:./v1_2_0";
  inputs."eminim-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_3_0".url = "path:./v1_3_0";
  inputs."eminim-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_4_0".url = "path:./v1_4_0";
  inputs."eminim-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_5_0".url = "path:./v1_5_0";
  inputs."eminim-v1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_6_0".url = "path:./v1_6_0";
  inputs."eminim-v1_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_7_0".url = "path:./v1_7_0";
  inputs."eminim-v1_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_8_0".url = "path:./v1_8_0";
  inputs."eminim-v1_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v1_9_0".url = "path:./v1_9_0";
  inputs."eminim-v1_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v1_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_0".url = "path:./v2_0_0";
  inputs."eminim-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_1".url = "path:./v2_0_1";
  inputs."eminim-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_2".url = "path:./v2_0_2";
  inputs."eminim-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_0_3".url = "path:./v2_0_3";
  inputs."eminim-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_1_0".url = "path:./v2_1_0";
  inputs."eminim-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_2_0".url = "path:./v2_2_0";
  inputs."eminim-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_3_0".url = "path:./v2_3_0";
  inputs."eminim-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_3_1".url = "path:./v2_3_1";
  inputs."eminim-v2_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_4_0".url = "path:./v2_4_0";
  inputs."eminim-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_5_0".url = "path:./v2_5_0";
  inputs."eminim-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_5_1".url = "path:./v2_5_1";
  inputs."eminim-v2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_6_0".url = "path:./v2_6_0";
  inputs."eminim-v2_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_7_0".url = "path:./v2_7_0";
  inputs."eminim-v2_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_8_0".url = "path:./v2_8_0";
  inputs."eminim-v2_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_8_1".url = "path:./v2_8_1";
  inputs."eminim-v2_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eminim-v2_8_2".url = "path:./v2_8_2";
  inputs."eminim-v2_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim-v2_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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