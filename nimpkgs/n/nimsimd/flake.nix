{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsimd-master".url = "path:./master";
  inputs."nimsimd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_0".url = "path:./0_4_0";
  inputs."nimsimd-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_1".url = "path:./0_4_1";
  inputs."nimsimd-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_2".url = "path:./0_4_2";
  inputs."nimsimd-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_3".url = "path:./0_4_3";
  inputs."nimsimd-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_4".url = "path:./0_4_4";
  inputs."nimsimd-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_5".url = "path:./0_4_5";
  inputs."nimsimd-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_6".url = "path:./0_4_6";
  inputs."nimsimd-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_7".url = "path:./0_4_7";
  inputs."nimsimd-0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_8".url = "path:./0_4_8";
  inputs."nimsimd-0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_9".url = "path:./0_4_9";
  inputs."nimsimd-0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-1_0_0".url = "path:./1_0_0";
  inputs."nimsimd-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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