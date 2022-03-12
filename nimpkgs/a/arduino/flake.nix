{
  description = ''Arduino bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arduino-main".url = "path:./main";
  inputs."arduino-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arduino-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arduino-0_2_0".url = "path:./0_2_0";
  inputs."arduino-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arduino-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arduino-0_3_0".url = "path:./0_3_0";
  inputs."arduino-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arduino-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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