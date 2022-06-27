{
  description = ''A 2D game engine made by Periapsis Studios'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."periapsisengine-main".dir   = "main";
  inputs."periapsisengine-main".owner = "nim-nix-pkgs";
  inputs."periapsisengine-main".ref   = "master";
  inputs."periapsisengine-main".repo  = "periapsisengine";
  inputs."periapsisengine-main".type  = "github";
  inputs."periapsisengine-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."periapsisengine-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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