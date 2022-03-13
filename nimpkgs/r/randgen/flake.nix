{
  description = ''A random variable generating library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."randgen-master".dir   = "master";
  inputs."randgen-master".owner = "nim-nix-pkgs";
  inputs."randgen-master".ref   = "master";
  inputs."randgen-master".repo  = "randgen";
  inputs."randgen-master".type  = "github";
  inputs."randgen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."randgen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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