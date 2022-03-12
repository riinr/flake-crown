{
  description = ''Localization package for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loco-develop".url = "path:./develop";
  inputs."loco-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-master".url = "path:./master";
  inputs."loco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-0_1_0".url = "path:./0_1_0";
  inputs."loco-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-0_1_1".url = "path:./0_1_1";
  inputs."loco-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loco-0_1_2".url = "path:./0_1_2";
  inputs."loco-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loco-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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