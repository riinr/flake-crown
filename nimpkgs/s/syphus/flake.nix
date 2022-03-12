{
  description = ''An implementation of the tabu search heuristic in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syphus-master".url = "path:./master";
  inputs."syphus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syphus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syphus-0_4".url = "path:./0_4";
  inputs."syphus-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syphus-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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