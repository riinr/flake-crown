{
  description = ''A modern and extensible serialization framework for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."serialization-master".dir   = "master";
  inputs."serialization-master".owner = "nim-nix-pkgs";
  inputs."serialization-master".ref   = "master";
  inputs."serialization-master".repo  = "serialization";
  inputs."serialization-master".type  = "github";
  inputs."serialization-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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