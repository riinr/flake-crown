{
  description = ''Spinny is a tiny terminal spinner package for the Nim Programming Language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spinny-master".dir   = "master";
  inputs."spinny-master".owner = "nim-nix-pkgs";
  inputs."spinny-master".ref   = "master";
  inputs."spinny-master".repo  = "spinny";
  inputs."spinny-master".type  = "github";
  inputs."spinny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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