{
  description = ''OpenStreetMap Elevation API MultiSync Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."open_elevation-master".dir   = "master";
  inputs."open_elevation-master".owner = "nim-nix-pkgs";
  inputs."open_elevation-master".ref   = "master";
  inputs."open_elevation-master".repo  = "open_elevation";
  inputs."open_elevation-master".type  = "github";
  inputs."open_elevation-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."open_elevation-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."open_elevation-0_1_5".dir   = "0_1_5";
  inputs."open_elevation-0_1_5".owner = "nim-nix-pkgs";
  inputs."open_elevation-0_1_5".ref   = "master";
  inputs."open_elevation-0_1_5".repo  = "open_elevation";
  inputs."open_elevation-0_1_5".type  = "github";
  inputs."open_elevation-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."open_elevation-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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