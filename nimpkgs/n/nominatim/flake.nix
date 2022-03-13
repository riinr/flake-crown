{
  description = ''OpenStreetMap Nominatim API Lib for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nominatim-master".dir   = "master";
  inputs."nominatim-master".owner = "nim-nix-pkgs";
  inputs."nominatim-master".ref   = "master";
  inputs."nominatim-master".repo  = "nominatim";
  inputs."nominatim-master".type  = "github";
  inputs."nominatim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nominatim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nominatim-0_1_5".dir   = "0_1_5";
  inputs."nominatim-0_1_5".owner = "nim-nix-pkgs";
  inputs."nominatim-0_1_5".ref   = "master";
  inputs."nominatim-0_1_5".repo  = "nominatim";
  inputs."nominatim-0_1_5".type  = "github";
  inputs."nominatim-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nominatim-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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