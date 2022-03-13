{
  description = ''Declarative packets system for serializing/deserializing and marshalling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."packets-master".dir   = "master";
  inputs."packets-master".owner = "nim-nix-pkgs";
  inputs."packets-master".ref   = "master";
  inputs."packets-master".repo  = "packets";
  inputs."packets-master".type  = "github";
  inputs."packets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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