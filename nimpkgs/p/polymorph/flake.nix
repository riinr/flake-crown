{
  description = ''An entity-component-system with a focus on compile time optimisation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."polymorph-master".url = "path:./master";
  inputs."polymorph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_1_0".url = "path:./v0_1_0";
  inputs."polymorph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_0".url = "path:./v0_2_0";
  inputs."polymorph-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_1".url = "path:./v0_2_1";
  inputs."polymorph-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_2".url = "path:./v0_2_2";
  inputs."polymorph-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_2_3".url = "path:./v0_2_3";
  inputs."polymorph-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polymorph-v0_3_0".url = "path:./v0_3_0";
  inputs."polymorph-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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