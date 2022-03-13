{
  description = ''Color and utilities library for linux terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcx-master".dir   = "master";
  inputs."nimcx-master".owner = "nim-nix-pkgs";
  inputs."nimcx-master".ref   = "master";
  inputs."nimcx-master".repo  = "nimcx";
  inputs."nimcx-master".type  = "github";
  inputs."nimcx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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