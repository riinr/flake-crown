{
  description = ''Nim binding to libfswatch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libfswatch-master".dir   = "master";
  inputs."libfswatch-master".owner = "nim-nix-pkgs";
  inputs."libfswatch-master".ref   = "master";
  inputs."libfswatch-master".repo  = "libfswatch";
  inputs."libfswatch-master".type  = "github";
  inputs."libfswatch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfswatch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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