{
  description = ''A SLR parser written in Nim with compile-time and run-time grammar generation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lrparser-master".dir   = "master";
  inputs."lrparser-master".owner = "nim-nix-pkgs";
  inputs."lrparser-master".ref   = "master";
  inputs."lrparser-master".repo  = "lrparser";
  inputs."lrparser-master".type  = "github";
  inputs."lrparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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