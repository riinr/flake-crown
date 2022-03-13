{
  description = ''A partially compile and runtime evaluated object, inspired from .net object'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nobject-main".dir   = "main";
  inputs."nobject-main".owner = "nim-nix-pkgs";
  inputs."nobject-main".ref   = "master";
  inputs."nobject-main".repo  = "nobject";
  inputs."nobject-main".type  = "github";
  inputs."nobject-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nobject-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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