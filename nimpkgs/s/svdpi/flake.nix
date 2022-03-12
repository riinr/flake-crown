{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."svdpi-master".url = "path:./master";
  inputs."svdpi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_1_1".url = "path:./v0_1_1";
  inputs."svdpi-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_2_0".url = "path:./v0_2_0";
  inputs."svdpi-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_2_1".url = "path:./v0_2_1";
  inputs."svdpi-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_3_0".url = "path:./v0_3_0";
  inputs."svdpi-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_4_0".url = "path:./v0_4_0";
  inputs."svdpi-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_5_0".url = "path:./v0_5_0";
  inputs."svdpi-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_5_1".url = "path:./v0_5_1";
  inputs."svdpi-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svdpi-v0_5_2".url = "path:./v0_5_2";
  inputs."svdpi-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svdpi-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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