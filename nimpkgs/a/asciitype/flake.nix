{
  description = ''This module performs character tests.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asciitype-master".dir   = "master";
  inputs."asciitype-master".owner = "nim-nix-pkgs";
  inputs."asciitype-master".ref   = "master";
  inputs."asciitype-master".repo  = "asciitype";
  inputs."asciitype-master".type  = "github";
  inputs."asciitype-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciitype-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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