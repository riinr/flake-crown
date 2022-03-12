{
  description = ''Utilities for the Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eris_utils-0_1_0".url = "path:./0_1_0";
  inputs."eris_utils-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_1".url = "path:./0_1_1";
  inputs."eris_utils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_2".url = "path:./0_1_2";
  inputs."eris_utils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_1_3".url = "path:./0_1_3";
  inputs."eris_utils-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_2_0".url = "path:./0_2_0";
  inputs."eris_utils-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_3_0".url = "path:./0_3_0";
  inputs."eris_utils-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris_utils-0_4_0".url = "path:./0_4_0";
  inputs."eris_utils-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris_utils-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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