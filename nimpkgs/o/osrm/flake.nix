{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."osrm-master".url = "path:./master";
  inputs."osrm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osrm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osrm-0_1_5".url = "path:./0_1_5";
  inputs."osrm-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osrm-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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