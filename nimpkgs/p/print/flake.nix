{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."print-master".url = "path:./master";
  inputs."print-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-0_1_0".url = "path:./0_1_0";
  inputs."print-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-0_2_0".url = "path:./0_2_0";
  inputs."print-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-1_0_0".url = "path:./1_0_0";
  inputs."print-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-1_0_1".url = "path:./1_0_1";
  inputs."print-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-1_0_2".url = "path:./1_0_2";
  inputs."print-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-v0_1_0".url = "path:./v0_1_0";
  inputs."print-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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