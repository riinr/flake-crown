{
  description = ''A simple 2D game engine for Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgame2-v0_3.flake = false;
  inputs.src-nimgame2-v0_3.owner = "Vladar4";
  inputs.src-nimgame2-v0_3.ref   = "refs/tags/v0.3";
  inputs.src-nimgame2-v0_3.repo  = "nimgame2";
  inputs.src-nimgame2-v0_3.type  = "github";
  
  inputs."sdl2_nim".owner = "nim-nix-pkgs";
  inputs."sdl2_nim".ref   = "master";
  inputs."sdl2_nim".repo  = "sdl2_nim";
  inputs."sdl2_nim".type  = "github";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgame2-v0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgame2-v0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}