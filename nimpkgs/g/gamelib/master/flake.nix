{
  description = ''A library of functions to make creating games using Nim and SDL2 easier.
This does not intend to be a full blown engine and tries to keep all the components loosly coupled so that individual parts can be used separately.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gamelib-master.flake = false;
  inputs.src-gamelib-master.ref   = "refs/heads/master";
  inputs.src-gamelib-master.owner = "PMunch";
  inputs.src-gamelib-master.repo  = "SDLGamelib";
  inputs.src-gamelib-master.type  = "github";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_3";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gamelib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gamelib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}