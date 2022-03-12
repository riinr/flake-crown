{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eris-0_2_0".url = "path:./0_2_0";
  inputs."eris-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_2_1".url = "path:./0_2_1";
  inputs."eris-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_3_0".url = "path:./0_3_0";
  inputs."eris-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_3_1".url = "path:./0_3_1";
  inputs."eris-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_4_0".url = "path:./0_4_0";
  inputs."eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_5_0".url = "path:./0_5_0";
  inputs."eris-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_6_0".url = "path:./0_6_0";
  inputs."eris-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_7_0".url = "path:./0_7_0";
  inputs."eris-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_7_1".url = "path:./0_7_1";
  inputs."eris-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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