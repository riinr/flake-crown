{
  description = ''OpenStreetMap Overpass API Lib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."overpass-master".dir   = "master";
  inputs."overpass-master".owner = "nim-nix-pkgs";
  inputs."overpass-master".ref   = "master";
  inputs."overpass-master".repo  = "overpass";
  inputs."overpass-master".type  = "github";
  inputs."overpass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."overpass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."overpass-0_0_1".dir   = "0_0_1";
  inputs."overpass-0_0_1".owner = "nim-nix-pkgs";
  inputs."overpass-0_0_1".ref   = "master";
  inputs."overpass-0_0_1".repo  = "overpass";
  inputs."overpass-0_0_1".type  = "github";
  inputs."overpass-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."overpass-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."overpass-0_2_5".dir   = "0_2_5";
  inputs."overpass-0_2_5".owner = "nim-nix-pkgs";
  inputs."overpass-0_2_5".ref   = "master";
  inputs."overpass-0_2_5".repo  = "overpass";
  inputs."overpass-0_2_5".type  = "github";
  inputs."overpass-0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."overpass-0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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