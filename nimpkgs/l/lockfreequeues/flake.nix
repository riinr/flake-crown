{
  description = ''Lock-free queue implementations for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lockfreequeues-v0_1_0".url = "path:./v0_1_0";
  inputs."lockfreequeues-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v1_0_0".url = "path:./v1_0_0";
  inputs."lockfreequeues-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_0".url = "path:./v2_0_0";
  inputs."lockfreequeues-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_1".url = "path:./v2_0_1";
  inputs."lockfreequeues-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_2".url = "path:./v2_0_2";
  inputs."lockfreequeues-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_3".url = "path:./v2_0_3";
  inputs."lockfreequeues-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_4".url = "path:./v2_0_4";
  inputs."lockfreequeues-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_5".url = "path:./v2_0_5";
  inputs."lockfreequeues-v2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_0_6".url = "path:./v2_0_6";
  inputs."lockfreequeues-v2_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v2_1_0".url = "path:./v2_1_0";
  inputs."lockfreequeues-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues-v3_0_0".url = "path:./v3_0_0";
  inputs."lockfreequeues-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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