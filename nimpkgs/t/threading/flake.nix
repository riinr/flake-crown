{
  description = ''New atomics, thread primitives, channels and atomic refcounting for --gc:arc/orc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."threading-master".dir   = "master";
  inputs."threading-master".owner = "nim-nix-pkgs";
  inputs."threading-master".ref   = "master";
  inputs."threading-master".repo  = "threading";
  inputs."threading-master".type  = "github";
  inputs."threading-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threading-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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