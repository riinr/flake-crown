{
  description = ''gameoflife is library for Game of Life.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gameoflife-master".dir   = "master";
  inputs."gameoflife-master".owner = "nim-nix-pkgs";
  inputs."gameoflife-master".ref   = "master";
  inputs."gameoflife-master".repo  = "gameoflife";
  inputs."gameoflife-master".type  = "github";
  inputs."gameoflife-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gameoflife-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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