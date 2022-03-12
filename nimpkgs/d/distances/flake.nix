{
  description = ''Distances is a high performance Nim library for calculating distances.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."distances-master".url = "path:./master";
  inputs."distances-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distances-v0_1_0".url = "path:./v0_1_0";
  inputs."distances-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distances-v0_1_1".url = "path:./v0_1_1";
  inputs."distances-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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