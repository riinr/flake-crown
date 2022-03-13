{
  description = ''OpenStreetMap API Lib for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openstreetmap-master".dir   = "master";
  inputs."openstreetmap-master".owner = "nim-nix-pkgs";
  inputs."openstreetmap-master".ref   = "master";
  inputs."openstreetmap-master".repo  = "openstreetmap";
  inputs."openstreetmap-master".type  = "github";
  inputs."openstreetmap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openstreetmap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openstreetmap-0_2_0".dir   = "0_2_0";
  inputs."openstreetmap-0_2_0".owner = "nim-nix-pkgs";
  inputs."openstreetmap-0_2_0".ref   = "master";
  inputs."openstreetmap-0_2_0".repo  = "openstreetmap";
  inputs."openstreetmap-0_2_0".type  = "github";
  inputs."openstreetmap-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openstreetmap-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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