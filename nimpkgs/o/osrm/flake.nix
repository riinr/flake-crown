{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."osrm-master".dir   = "master";
  inputs."osrm-master".owner = "nim-nix-pkgs";
  inputs."osrm-master".ref   = "master";
  inputs."osrm-master".repo  = "osrm";
  inputs."osrm-master".type  = "github";
  inputs."osrm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osrm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osrm-0_1_5".dir   = "0_1_5";
  inputs."osrm-0_1_5".owner = "nim-nix-pkgs";
  inputs."osrm-0_1_5".ref   = "master";
  inputs."osrm-0_1_5".repo  = "osrm";
  inputs."osrm-0_1_5".type  = "github";
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