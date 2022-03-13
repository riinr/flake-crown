{
  description = ''Grafana module for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grafanim-master".dir   = "master";
  inputs."grafanim-master".owner = "nim-nix-pkgs";
  inputs."grafanim-master".ref   = "master";
  inputs."grafanim-master".repo  = "grafanim";
  inputs."grafanim-master".type  = "github";
  inputs."grafanim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grafanim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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