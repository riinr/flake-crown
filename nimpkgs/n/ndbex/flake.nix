{
  description = ''extension modules for Nim's 'db_*' modules'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndbex-master".dir   = "master";
  inputs."ndbex-master".owner = "nim-nix-pkgs";
  inputs."ndbex-master".ref   = "master";
  inputs."ndbex-master".repo  = "ndbex";
  inputs."ndbex-master".type  = "github";
  inputs."ndbex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndbex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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