{
  description = ''Genetic Algorithm Library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimga-master".dir   = "master";
  inputs."nimga-master".owner = "nim-nix-pkgs";
  inputs."nimga-master".ref   = "master";
  inputs."nimga-master".repo  = "nimga";
  inputs."nimga-master".type  = "github";
  inputs."nimga-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimga-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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