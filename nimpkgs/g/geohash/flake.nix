{
  description = ''Nim implementation of the geohash latitude/longitude geocode system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geohash-master".dir   = "master";
  inputs."geohash-master".owner = "nim-nix-pkgs";
  inputs."geohash-master".ref   = "master";
  inputs."geohash-master".repo  = "geohash";
  inputs."geohash-master".type  = "github";
  inputs."geohash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geohash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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