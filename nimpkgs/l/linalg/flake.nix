{
  description = ''Linear algebra for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."linalg-master".url = "path:./master";
  inputs."linalg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_0".url = "path:./0_1_0";
  inputs."linalg-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_1".url = "path:./0_1_1";
  inputs."linalg-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_2".url = "path:./0_1_2";
  inputs."linalg-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_3".url = "path:./0_1_3";
  inputs."linalg-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_4".url = "path:./0_1_4";
  inputs."linalg-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_1_5".url = "path:./0_1_5";
  inputs."linalg-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_2_0".url = "path:./0_2_0";
  inputs."linalg-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_2_1".url = "path:./0_2_1";
  inputs."linalg-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_2_2".url = "path:./0_2_2";
  inputs."linalg-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_3_0".url = "path:./0_3_0";
  inputs."linalg-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_0".url = "path:./0_4_0";
  inputs."linalg-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_1".url = "path:./0_4_1";
  inputs."linalg-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_2".url = "path:./0_4_2";
  inputs."linalg-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_3".url = "path:./0_4_3";
  inputs."linalg-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_4_4".url = "path:./0_4_4";
  inputs."linalg-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_0".url = "path:./0_5_0";
  inputs."linalg-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_1".url = "path:./0_5_1";
  inputs."linalg-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_2".url = "path:./0_5_2";
  inputs."linalg-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_5_3".url = "path:./0_5_3";
  inputs."linalg-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_0".url = "path:./0_6_0";
  inputs."linalg-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_1".url = "path:./0_6_1";
  inputs."linalg-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_2".url = "path:./0_6_2";
  inputs."linalg-0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_3".url = "path:./0_6_3";
  inputs."linalg-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_4".url = "path:./0_6_4";
  inputs."linalg-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_5".url = "path:./0_6_5";
  inputs."linalg-0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-0_6_6".url = "path:./0_6_6";
  inputs."linalg-0_6_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-0_6_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linalg-raw-pointers".url = "path:./raw-pointers";
  inputs."linalg-raw-pointers".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linalg-raw-pointers".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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