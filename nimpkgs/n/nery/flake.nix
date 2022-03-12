{
  description = ''A simple library to create queries in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nery-main".url = "path:./main";
  inputs."nery-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nery-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nery-0_1_1".url = "path:./0_1_1";
  inputs."nery-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nery-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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