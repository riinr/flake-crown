{
  description = ''A simple library for localizing Nim applications.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."locale-master".dir   = "master";
  inputs."locale-master".owner = "nim-nix-pkgs";
  inputs."locale-master".ref   = "master";
  inputs."locale-master".repo  = "locale";
  inputs."locale-master".type  = "github";
  inputs."locale-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."locale-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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