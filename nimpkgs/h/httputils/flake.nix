{
  description = ''Common utilities for implementing HTTP servers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httputils-master".dir   = "master";
  inputs."httputils-master".owner = "nim-nix-pkgs";
  inputs."httputils-master".ref   = "master";
  inputs."httputils-master".repo  = "httputils";
  inputs."httputils-master".type  = "github";
  inputs."httputils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httputils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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