{
  description = ''libarchive wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimarchive-master".url = "path:./master";
  inputs."nimarchive-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_1".url = "path:./v0_1_1";
  inputs."nimarchive-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_2".url = "path:./v0_1_2";
  inputs."nimarchive-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_3".url = "path:./v0_1_3";
  inputs."nimarchive-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_1_4".url = "path:./v0_1_4";
  inputs."nimarchive-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_2_0".url = "path:./v0_2_0";
  inputs."nimarchive-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_2_1".url = "path:./v0_2_1";
  inputs."nimarchive-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_0".url = "path:./v0_3_0";
  inputs."nimarchive-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_1".url = "path:./v0_3_1";
  inputs."nimarchive-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_2".url = "path:./v0_3_2";
  inputs."nimarchive-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_3".url = "path:./v0_3_3";
  inputs."nimarchive-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_4".url = "path:./v0_3_4";
  inputs."nimarchive-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_5".url = "path:./v0_3_5";
  inputs."nimarchive-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_3_6".url = "path:./v0_3_6";
  inputs."nimarchive-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_4_0".url = "path:./v0_4_0";
  inputs."nimarchive-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_4_1".url = "path:./v0_4_1";
  inputs."nimarchive-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_0".url = "path:./v0_5_0";
  inputs."nimarchive-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_1".url = "path:./v0_5_1";
  inputs."nimarchive-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_2".url = "path:./v0_5_2";
  inputs."nimarchive-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_3".url = "path:./v0_5_3";
  inputs."nimarchive-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarchive-v0_5_4".url = "path:./v0_5_4";
  inputs."nimarchive-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarchive-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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