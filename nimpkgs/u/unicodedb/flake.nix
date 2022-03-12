{
  description = ''Unicode Character Database (UCD) access for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unicodedb-master".url = "path:./master";
  inputs."unicodedb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_1".url = "path:./v0_1";
  inputs."unicodedb-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_10_0".url = "path:./v0_10_0";
  inputs."unicodedb-v0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2".url = "path:./v0_2";
  inputs."unicodedb-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_1".url = "path:./v0_2_1";
  inputs."unicodedb-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_2".url = "path:./v0_2_2";
  inputs."unicodedb-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_3".url = "path:./v0_2_3";
  inputs."unicodedb-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_4".url = "path:./v0_2_4";
  inputs."unicodedb-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_2_5".url = "path:./v0_2_5";
  inputs."unicodedb-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_3_1".url = "path:./v0_3_1";
  inputs."unicodedb-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_3_2".url = "path:./v0_3_2";
  inputs."unicodedb-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_4_0".url = "path:./v0_4_0";
  inputs."unicodedb-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_5_0".url = "path:./v0_5_0";
  inputs."unicodedb-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_5_1".url = "path:./v0_5_1";
  inputs."unicodedb-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_5_2".url = "path:./v0_5_2";
  inputs."unicodedb-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_6_0".url = "path:./v0_6_0";
  inputs."unicodedb-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_7_0".url = "path:./v0_7_0";
  inputs."unicodedb-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_7_1".url = "path:./v0_7_1";
  inputs."unicodedb-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_7_2".url = "path:./v0_7_2";
  inputs."unicodedb-v0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_8_0".url = "path:./v0_8_0";
  inputs."unicodedb-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb-v0_9_0".url = "path:./v0_9_0";
  inputs."unicodedb-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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