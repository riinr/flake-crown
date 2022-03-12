{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."svvpi-main".url = "path:./main";
  inputs."svvpi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_1".url = "path:./v0_0_1";
  inputs."svvpi-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_2".url = "path:./v0_0_2";
  inputs."svvpi-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_3".url = "path:./v0_0_3";
  inputs."svvpi-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_4".url = "path:./v0_0_4";
  inputs."svvpi-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_5".url = "path:./v0_0_5";
  inputs."svvpi-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."svvpi-v0_0_6".url = "path:./v0_0_6";
  inputs."svvpi-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."svvpi-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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