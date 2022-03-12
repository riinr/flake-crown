{
  description = ''A 3d sound API for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slappy-master".url = "path:./master";
  inputs."slappy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slappy-0_3_0".url = "path:./0_3_0";
  inputs."slappy-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slappy-0_3_1".url = "path:./0_3_1";
  inputs."slappy-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slappy-v0_1_0".url = "path:./v0_1_0";
  inputs."slappy-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slappy-v0_2_0".url = "path:./v0_2_0";
  inputs."slappy-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slappy-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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