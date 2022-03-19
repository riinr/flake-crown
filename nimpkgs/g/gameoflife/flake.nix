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
  
  inputs."gameoflife-v1_2_0".dir   = "v1_2_0";
  inputs."gameoflife-v1_2_0".owner = "nim-nix-pkgs";
  inputs."gameoflife-v1_2_0".ref   = "master";
  inputs."gameoflife-v1_2_0".repo  = "gameoflife";
  inputs."gameoflife-v1_2_0".type  = "github";
  inputs."gameoflife-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gameoflife-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gameoflife-v1_3_0".dir   = "v1_3_0";
  inputs."gameoflife-v1_3_0".owner = "nim-nix-pkgs";
  inputs."gameoflife-v1_3_0".ref   = "master";
  inputs."gameoflife-v1_3_0".repo  = "gameoflife";
  inputs."gameoflife-v1_3_0".type  = "github";
  inputs."gameoflife-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gameoflife-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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