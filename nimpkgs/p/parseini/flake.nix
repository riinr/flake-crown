{
  description = ''A high-performance ini parse library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parseini-master".url = "path:./master";
  inputs."parseini-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parseini-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parseini-0_1_0".url = "path:./0_1_0";
  inputs."parseini-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parseini-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parseini-0_2_0".url = "path:./0_2_0";
  inputs."parseini-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parseini-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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