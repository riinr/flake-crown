{
  description = ''Convert between RGB, YIQ, HLS, and HSV color systems.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."colorsys-master".dir   = "master";
  inputs."colorsys-master".owner = "nim-nix-pkgs";
  inputs."colorsys-master".ref   = "master";
  inputs."colorsys-master".repo  = "colorsys";
  inputs."colorsys-master".type  = "github";
  inputs."colorsys-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorsys-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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