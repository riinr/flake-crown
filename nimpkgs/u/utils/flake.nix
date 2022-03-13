{
  description = ''Collection of string, parsing, pointer, ... utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."utils-master".dir   = "master";
  inputs."utils-master".owner = "nim-nix-pkgs";
  inputs."utils-master".ref   = "master";
  inputs."utils-master".repo  = "utils";
  inputs."utils-master".type  = "github";
  inputs."utils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."utils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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