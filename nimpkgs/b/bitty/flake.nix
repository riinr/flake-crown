{
  description = ''Utilities with dealing with 1d and 2d bit arrays.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bitty-master".url = "path:./master";
  inputs."bitty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_0".url = "path:./0_1_0";
  inputs."bitty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_1".url = "path:./0_1_1";
  inputs."bitty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_2".url = "path:./0_1_2";
  inputs."bitty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_3".url = "path:./0_1_3";
  inputs."bitty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty-0_1_4".url = "path:./0_1_4";
  inputs."bitty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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