{
  description = ''A parser combinator library for easy generation of complex parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."combparser-master".dir   = "master";
  inputs."combparser-master".owner = "nim-nix-pkgs";
  inputs."combparser-master".ref   = "master";
  inputs."combparser-master".repo  = "combparser";
  inputs."combparser-master".type  = "github";
  inputs."combparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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