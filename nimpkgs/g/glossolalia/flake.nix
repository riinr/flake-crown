{
  description = ''A DSL for quickly writing parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glossolalia-master".dir   = "master";
  inputs."glossolalia-master".owner = "nim-nix-pkgs";
  inputs."glossolalia-master".ref   = "master";
  inputs."glossolalia-master".repo  = "glossolalia";
  inputs."glossolalia-master".type  = "github";
  inputs."glossolalia-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glossolalia-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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