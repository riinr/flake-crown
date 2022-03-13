{
  description = ''Nim implementation of Hashids'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hashids-master".dir   = "master";
  inputs."hashids-master".owner = "nim-nix-pkgs";
  inputs."hashids-master".ref   = "master";
  inputs."hashids-master".repo  = "hashids";
  inputs."hashids-master".type  = "github";
  inputs."hashids-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashids-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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