{
  description = ''Widget library built on Fidget written in pure Nim and OpenGL rendered'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fidgetty-main".dir   = "main";
  inputs."fidgetty-main".owner = "nim-nix-pkgs";
  inputs."fidgetty-main".ref   = "master";
  inputs."fidgetty-main".repo  = "fidgetty";
  inputs."fidgetty-main".type  = "github";
  inputs."fidgetty-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidgetty-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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