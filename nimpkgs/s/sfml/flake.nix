{
  description = ''High level OpenGL-based Game Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sfml-master".dir   = "master";
  inputs."sfml-master".owner = "nim-nix-pkgs";
  inputs."sfml-master".ref   = "master";
  inputs."sfml-master".repo  = "sfml";
  inputs."sfml-master".type  = "github";
  inputs."sfml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sfml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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