{
  description = ''A validator for greek social security number (AMKA)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."amka-master".dir   = "master";
  inputs."amka-master".owner = "nim-nix-pkgs";
  inputs."amka-master".ref   = "master";
  inputs."amka-master".repo  = "amka";
  inputs."amka-master".type  = "github";
  inputs."amka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."amka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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