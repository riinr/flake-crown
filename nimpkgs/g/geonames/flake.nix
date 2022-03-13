{
  description = ''GeoNames API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geonames-master".dir   = "master";
  inputs."geonames-master".owner = "nim-nix-pkgs";
  inputs."geonames-master".ref   = "master";
  inputs."geonames-master".repo  = "geonames";
  inputs."geonames-master".type  = "github";
  inputs."geonames-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geonames-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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