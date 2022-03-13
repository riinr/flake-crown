{
  description = ''The Nim wrapper for tracemoe.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anime-master".dir   = "master";
  inputs."anime-master".owner = "nim-nix-pkgs";
  inputs."anime-master".ref   = "master";
  inputs."anime-master".repo  = "anime";
  inputs."anime-master".type  = "github";
  inputs."anime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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