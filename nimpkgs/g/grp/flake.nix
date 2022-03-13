{
  description = ''Nim port of Python's grp module for working with the UNIX group database file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grp-master".dir   = "master";
  inputs."grp-master".owner = "nim-nix-pkgs";
  inputs."grp-master".ref   = "master";
  inputs."grp-master".repo  = "grp";
  inputs."grp-master".type  = "github";
  inputs."grp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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