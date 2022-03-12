{
  description = ''Wrapper for the fswatch library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fswatch-master".url = "path:./master";
  inputs."fswatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fswatch-0_1_0".url = "path:./0_1_0";
  inputs."fswatch-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fswatch-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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