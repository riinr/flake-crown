{
  description = ''Utility macros for easier handling of options in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."optionsutils-master".url = "path:./master";
  inputs."optionsutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_1_0".url = "path:./v1_1_0";
  inputs."optionsutils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_1_1".url = "path:./v1_1_1";
  inputs."optionsutils-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_1_2".url = "path:./v1_1_2";
  inputs."optionsutils-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils-v1_2_0".url = "path:./v1_2_0";
  inputs."optionsutils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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