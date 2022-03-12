{
  description = ''A macro collection for creating DSL in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dslutils-0_1_1".url = "path:./0_1_1";
  inputs."dslutils-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dslutils-0_1_2".url = "path:./0_1_2";
  inputs."dslutils-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dslutils-v0_1_3".url = "path:./v0_1_3";
  inputs."dslutils-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dslutils-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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