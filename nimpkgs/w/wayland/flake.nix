{
  description = ''Nim bindings for Wayland'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wayland-main".dir   = "main";
  inputs."wayland-main".owner = "nim-nix-pkgs";
  inputs."wayland-main".ref   = "master";
  inputs."wayland-main".repo  = "wayland";
  inputs."wayland-main".type  = "github";
  inputs."wayland-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wayland-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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