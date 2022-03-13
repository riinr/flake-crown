{
  description = ''OrientDB driver written in pure Nim, uses the OrientDB 2.0 Binary Protocol with Binary Serialization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."orient-master".dir   = "master";
  inputs."orient-master".owner = "nim-nix-pkgs";
  inputs."orient-master".ref   = "master";
  inputs."orient-master".repo  = "orient";
  inputs."orient-master".type  = "github";
  inputs."orient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."orient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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