{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."noisy-master".url = "path:./master";
  inputs."noisy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_1_0".url = "path:./0_1_0";
  inputs."noisy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_2_0".url = "path:./0_2_0";
  inputs."noisy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_2_1".url = "path:./0_2_1";
  inputs."noisy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_3_0".url = "path:./0_3_0";
  inputs."noisy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_2".url = "path:./0_4_2";
  inputs."noisy-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_3".url = "path:./0_4_3";
  inputs."noisy-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."noisy-0_4_4".url = "path:./0_4_4";
  inputs."noisy-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noisy-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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