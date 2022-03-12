{
  description = ''A simple bitarray library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbitarray-master".url = "path:./master";
  inputs."nimbitarray-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbitarray-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbitarray-0_2_0".url = "path:./0_2_0";
  inputs."nimbitarray-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbitarray-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbitarray-0_2_1".url = "path:./0_2_1";
  inputs."nimbitarray-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbitarray-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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